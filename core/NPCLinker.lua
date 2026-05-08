
IMAGO.NPCLinker = IMAGO.NPCLinker or {}
 
-- Internal: display name (lowercase) → slug. Built once after all data loads.
local nameToSlug  = {}
local sortedNames = nil
 
-- ============================================================
-- BUILD LOOKUP
-- Called from IMAGO.Init() in IMAGO.lua after all files load.
-- Indexes both the full display name and any aliases.
-- ============================================================
function IMAGO.NPCLinker.BuildNameLookup()
    wipe(nameToSlug)
    sortedNames = nil
 
    if not IMAGOdb or not IMAGOdb.npcs then return end
 
    for _, entries in pairs(IMAGOdb.npcs) do
        if type(entries) == "table" then
            for slug, data in pairs(entries) do
                if type(data.name) == "string" and data.name ~= "" then
                    -- Index the full display name
                    nameToSlug[data.name:lower()] = slug
 
                    -- Index any aliases defined in locales/base/data/npcs.lua
                    if type(data.aliases) == "table" then
                        for _, alias in ipairs(data.aliases) do
                            if type(alias) == "string" and alias ~= "" then
                                nameToSlug[alias:lower()] = slug
                            end
                        end
                    end
                end
            end
        end
    end
end
 
-- ============================================================
-- SORTED NAME LIST (longest first)
-- Ensures "Alleria Windrunner" matches before bare "Alleria".
-- ============================================================
local function GetSortedNames()
    if sortedNames then return sortedNames end
    sortedNames = {}
    for lcName, slug in pairs(nameToSlug) do
        sortedNames[#sortedNames + 1] = { name = lcName, slug = slug }
    end
    table.sort(sortedNames, function(a, b) return #a.name > #b.name end)
    return sortedNames
end
 
-- ============================================================
-- LINKNAMES
-- Replaces the first occurrence of each known NPC name (or
-- alias) in a lore string with a colored hyperlink.
--
-- The visible text is never altered — "Turalyon" in lore stays
-- as "Turalyon", not expanded to the full display name.
--
-- Uses plain string.find (no patterns) for Lua 5.1 safety.
--
-- @param text      string  Raw lore text
-- @param selfSlug  string  Slug of the NPC page being shown;
--                          skipped so their name isn't a self-link.
-- @return          string
-- ============================================================

function IMAGO.NPCLinker.LinkNames(text, selfSlug)
    if not text or text == "" then return text end
 
    local sorted = GetSortedNames()
    local linkedSlugs = {}  -- tracks which slugs have already been linked
 
    for _, entry in ipairs(sorted) do
        local slug = entry.slug
        if slug ~= selfSlug then
            local data = IMAGO.GetNPCData(slug)
            if data and data.name then
                -- Build the list of search terms for this NPC:
                -- full display name first, then aliases.
                local searchTerms = { data.name }
                if type(data.aliases) == "table" then
                    for _, alias in ipairs(data.aliases) do
                        searchTerms[#searchTerms + 1] = alias
                    end
                end
 
                local replaced = false
                for _, searchName in ipairs(searchTerms) do
                    if not replaced and not linkedSlugs[slug] then
                        -- Link displays the matched term, not the full display name,
                        -- so "Turalyon" stays "Turalyon" rather than expanding.
                        local link = "|Himago-npc:" .. slug .. "|h|cFF9370DB" .. searchName .. "|r|h"
                        local result = ""
                        local pos = 1
 
                        while pos <= #text do
                            -- plain=true: literal match, no pattern magic
                            local s, e = string.find(text, searchName, pos, true)
                            if not s then
                                result = result .. text:sub(pos)
                                break
                            end
 
                            -- Word boundary check: surrounding chars must not be letters
                            local charBefore = s > 1 and text:sub(s - 1, s - 1) or ""
                            local charAfter  = e < #text and text:sub(e + 1, e + 1) or ""
 
                            if charBefore:match("%a") or charAfter:match("%a") then
                                -- Part of a longer word, skip
                                result = result .. text:sub(pos, s)
                                pos = s + 1
                            else
                                -- Valid match — splice in the link, append rest, stop
                                result = result .. text:sub(pos, s - 1) .. link .. text:sub(e + 1)
                                replaced = true
                                break
                            end
                        end
 
                        if replaced then
                            text = result
                            linkedSlugs[slug] = true
                        end
                    end
                end
            end
        end
    end
 
    return text
end
 
-- ============================================================
-- HYPERLINK CLICK HANDLER
-- ============================================================
function IMAGO.NPCLinker.OnHyperlinkClick(self, link, text, button)
    local linkType, slug = link:match("^([^:]+):(.+)$")
    if linkType ~= "imago-npc" then return end
 
    if IMAGO.Chronicle and IMAGO.Chronicle.OpenToNPCSlug then
        IMAGO.Chronicle.OpenToNPCSlug(slug, { skipDiscoveryCinematic = true })
    end
end