IMAGO.NPCLinker = IMAGO.NPCLinker or {}

-- Internal: lowercase name → slug.  Built once after all data loads.
local nameToSlug  = {}
local sortedNames = nil   -- cached sorted list, longest name first

-- ============================================================
-- BUILD LOOKUP
-- Called from the hooked IMAGO.Init() below, after every data
-- and locale file has been evaluated.
-- ============================================================
function IMAGO.NPCLinker.BuildNameLookup()
    wipe(nameToSlug)
    sortedNames = nil

    if not IMAGOdb or not IMAGOdb.npcs then return end

    for _, entries in pairs(IMAGOdb.npcs) do
        if type(entries) == "table" then
            for slug, data in pairs(entries) do
                if type(data.name) == "string" and data.name ~= "" then
                    nameToSlug[data.name:lower()] = slug
                end
            end
        end
    end
    -- TEMP DEBUG
    local c = 0
    for _ in pairs(nameToSlug) do c = c + 1 end
    print("|cFFFFD700IMAGO NPCLinker:|r nameToSlug populated with " .. c .. " names")
end

-- ============================================================
-- SORTED NAME LIST  (longest first)
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
-- Replaces every known NPC name in a lore string with a purple
-- hyperlink that Chronicle's OnHyperlinkClick handler opens.
--
-- Uses plain string.find (no patterns) to locate each name,
-- then manually splices the link in. Avoids all Lua 5.1
-- pattern limitations entirely.
--
-- @param text      string  Raw lore text
-- @param selfSlug  string  Slug of the NPC page being shown;
--                          skipped so their name isn't a self-link.
-- @return          string
-- ============================================================
function IMAGO.NPCLinker.LinkNames(text, selfSlug)
    if not text or text == "" then return text end
 
    local sorted = GetSortedNames()
 
    for _, entry in ipairs(sorted) do
        local slug = entry.slug
        if slug ~= selfSlug then
            local data = IMAGO.GetNPCData(slug)
            if data and data.name then
                local displayName = data.name
                local link = "|Himago-npc:" .. slug .. "|h|cFF9370DB[" .. displayName .. "]|r|h"
                local result = ""
                local pos = 1
 
                while pos <= #text do
                    -- plain=true: literal match, no pattern magic
                    local s, e = string.find(text, displayName, pos, true)
                    if not s then
                        result = result .. text:sub(pos)
                        break
                    end
 
                    -- Word boundary check: char before and after must not be a letter
                    local charBefore = s > 1 and text:sub(s - 1, s - 1) or ""
                    local charAfter  = e < #text and text:sub(e + 1, e + 1) or ""
 
                    if charBefore:match("%a") or charAfter:match("%a") then
                        -- Part of a longer word, skip this match
                        result = result .. text:sub(pos, s)
                        pos = s + 1
                    else
                        -- Valid match — splice in the hyperlink
                        result = result .. text:sub(pos, s - 1) .. link
                        pos = e + 1
                    end
                end
 
                text = result
            end
        end
    end
 
    return text
end
 
-- ============================================================
-- HYPERLINK CLICK HANDLER
-- Attached to f.infoContent in Chronicle.lua:
-- ============================================================
function IMAGO.NPCLinker.OnHyperlinkClick(self, link, text, button)
    local linkType, slug = link:match("^([^:]+):(.+)$")
    if linkType ~= "imago-npc" then return end
 
    if IMAGO.Chronicle and IMAGO.Chronicle.OpenToNPCSlug then
        IMAGO.Chronicle.OpenToNPCSlug(slug, { skipDiscoveryCinematic = true })
    end
end