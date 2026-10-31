-- ============================================================
-- IMAGO — core/TextLinker.lua
-- Text hyperlink system
-- ============================================================

IMAGO.TextLinker = IMAGO.TextLinker or {}

local npcListByEra  = nil
local zoneListByEra = nil
local flatByEra = nil

-- Gets the era from the key of an NPC
local function EraFromSlug(slug)
    local suffix = slug:match("_([^_]+)$")
    return suffix
end

-- One sorted list per era, longest name first so "Alleria Windrunner"
-- matches before a bare "Alleria" alias.
local function byLengthDesc(a, b)
    if #a.name ~= #b.name then return #a.name > #b.name end
    return a.name < b.name
end

-- flatByEra[era][zoneOrNPCname] = slug
local function addEntry(name, slug, era)
    if type(name) == "string" and name ~= "" then
        flatByEra[era] = flatByEra[era] or {}
        flatByEra[era][name] = slug
    end
end

-- ============================================================
-- BUILD NPC LOOKUP
-- ============================================================
function IMAGO.TextLinker.BuildNameLookup()
    if not IMAGOdb or not IMAGOdb.npcs then return end
    npcListByEra = {}
    flatByEra = {}

    for _, entries in pairs(IMAGOdb.npcs) do
        if type(entries) == "table" then
            for slug, data in pairs(entries) do
                local era = EraFromSlug(slug)
                addEntry(data.name, slug, era)
                if type(data.aliases) == "table" then
                    for _, alias in ipairs(data.aliases) do
                        addEntry(alias, slug, era)
                    end
                end
            end
        end
    end

    npcListByEra = {}
    for era, flat in pairs(flatByEra) do
        local list = {}
        for name, slug in pairs(flat) do
            list[#list + 1] = { name = name, slug = slug }
        end
        table.sort(list, byLengthDesc)
        npcListByEra[era] = list
    end
end

-- ============================================================
-- BUILD ZONE LOOKUP
-- ============================================================
function IMAGO.TextLinker.BuildZoneLookup()
    if not IMAGOdb or not IMAGOdb.zones then return end
    zoneListByEra = {}
    flatByEra = {}

    for mapID, data in pairs(IMAGOdb.zones) do
        local era = data.expansion
        if era then
            addEntry(data.name, mapID, era)
            if type(data.aliases) == "table" then
                for _, alias in ipairs(data.aliases) do
                    addEntry(alias, mapID, era)
                end
            end
        end
    end

    -- Longest name first so "Isle of Dorn" matches before a bare "Dorn" alias.
    zoneListByEra = {}
    for era, flat in pairs(flatByEra) do
        local list = {}
        for name, mapID in pairs(flat) do
            list[#list + 1] = { name = name, mapID = mapID }
        end
        table.sort(list, byLengthDesc)
        zoneListByEra[era] = list
    end
end

-- ============================================================
-- SHARED PLAIN-TEXT LINK INJECTOR
-- Inserts `link` around the FIRST unambiguous word-boundary
-- occurrence of `searchName` in `text`.
-- Returns new text + true on success, original text + false otherwise.
-- Uses plain string.find (no patterns) for Lua 5.1 safety.
-- ============================================================
local function InjectFirstLink(text, searchName, link)
    local result = ""
    local pos    = 1

    while pos <= #text do
        local s, e = string.find(text, searchName, pos, true)
        if not s then
            result = result .. text:sub(pos)
            return result, false
        end

        local charBefore = s > 1     and text:sub(s - 1, s - 1) or ""
        local charAfter  = e < #text and text:sub(e + 1, e + 1) or ""

        if charBefore:match("%a") or charAfter:match("%a") then
            -- Part of a longer word — skip past this position
            result = result .. text:sub(pos, s)
            pos = s + 1
        else
            -- Valid word-boundary match — splice in the link and stop
            result = result .. text:sub(pos, s - 1) .. link .. text:sub(e + 1)
            return result, true
        end
    end

    return result, false
end

-- ============================================================
-- LINKNAMES
-- Replaces the first occurrence of each known NPC name (or alias)
-- and each known zone name in a lore string with a colored hyperlink.
--
--   NPC  links → |cffffe34d  soft gold
--   Zone links → |cff83dbff  ice blue
--
-- @param text       string   Raw lore text
-- @param selfSlug   string?  NPC slug of the page being shown (skipped)
-- @param selfMapID  number?  Zone mapID of the page being shown (skipped)
-- @return           string
-- ============================================================
function IMAGO.TextLinker.LinkNames(text, selfSlug, selfMapID, sharedNPCLinks, sharedZoneLinks)
    if not text or text == "" then return text end

    -- Resolve the era of the text being linked from whoever owns it.
    local era
    if selfSlug then
        era = EraFromSlug(selfSlug)
    elseif selfMapID then
        local zone = IMAGOdb.zones[selfMapID]   -- direct lookup by mapID
        era = zone.expansion
    end
    if not era then return text end  
    -- ---- 1. NPC links ----------------------------------------
    local linkedNPCSlugs = sharedNPCLinks or {}
    local npcList = npcListByEra[era]
    if npcList then
        for _, entry in ipairs(npcList or {}) do
            local slug = entry.slug
            if slug ~= selfSlug and not linkedNPCSlugs[slug] then
                local link = "|Himago-npc:" .. slug .. "|h|" .. "c" .. IMAGO_HEX.GOLD_BRIGHT .. entry.name .. "|r|h"
                local newText, ok = InjectFirstLink(text, entry.name, link)
                if ok then
                    text = newText
                    linkedNPCSlugs[slug] = true
                end
            end
        end
    end

    -- ---- 2. Zone links ----------------------------------------
    local linkedZoneIDs = sharedZoneLinks or {}
    local zoneList = zoneListByEra[era]
    if zoneList then
        for _, entry in ipairs(zoneList or {}) do
            local mapID = entry.mapID
            if mapID ~= selfMapID and not linkedZoneIDs[mapID] then
                local link = "|Himago-zone:" .. tostring(mapID) .. "|h|" .. "c" .. IMAGO_HEX.VOID .. entry.name .. "|r|h"
                local newText, ok = InjectFirstLink(text, entry.name, link)
                if ok then
                    text = newText
                    linkedZoneIDs[mapID] = true
                end
            end
        end
    end

    return text
end

-- ============================================================
-- HYPERLINK CLICK HANDLER
-- Attach to any Frame that shows IMAGO lore via:
--   frame:SetHyperlinksEnabled(true)
--   frame:SetScript("OnHyperlinkClick", IMAGO.TextLinker.OnHyperlinkClick)
-- ============================================================
function IMAGO.TextLinker.OnHyperlinkClick(self, link, text, button)
    local linkType, payload = link:match("^([^:]+):(.+)$")

    if linkType == "imago-npc" then
        if IMAGO.Chronicle and IMAGO.Chronicle.OpenToNPCSlug then
            IMAGO.Chronicle.OpenToNPCSlug(payload, { skipDiscoveryCinematic = true })
        end

    elseif linkType == "imago-zone" then
        local mapID = tonumber(payload)
        if mapID and IMAGO.Chronicle and IMAGO.Chronicle.OpenToZoneMapID then
            IMAGO.Chronicle.OpenToZoneMapID(mapID)
        end
    end
end