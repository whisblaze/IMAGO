IMAGO.Snippets = IMAGO.Snippets or {}

local COOLDOWN_SECONDS = 15
local lastAutoAt = 0

local CATEGORIES = { "FUN_FACT", "DID_YOU_KNOW", "HISTORICAL_FACT", "BEHIND_THE_SCENES" }
IMAGO.Snippets.CATEGORIES = CATEGORIES

local FISHING_SPELL_IDS = {
    [51294] = true,
    [271990] = true,
    [131476] = true,
    [110410] = true,
    [7731] = true,
    [7732] = true,
    [158743] = true,
    [33095] = true,
    [131490] = true,
    [88868] = true,
    [272011] = true,
    [18248] = true,
    [271616] = true,
    [131474] = true,
}

local function GetNow()
    return (GetTime and GetTime()) or 0
end

local function GetLocalizedSnippetText(entry)
    if type(entry) == "string" then return entry end
    if type(entry) == "table" then return entry.text end
    return nil
end

---------------------------------------------------------------------
-- Snippet pool
-- Flat pool of every usable snippet in every enabled category, stored as
-- parallel arrays of resolved text and category key. Entries with no text
-- are dropped here, once, so picking is a single random index.
---------------------------------------------------------------------
local poolTexts, poolCats = nil, nil

local function BuildPool()
    local texts, cats = {}, {}
    local n = 0
    local saved = IMAGOSaved and IMAGOSaved.flashcardCategories
    local snippets = IMAGO.LoreSnippets

    if type(snippets) == "table" then
        for i = 1, #CATEGORIES do
            local cat = CATEGORIES[i]
            -- A missing entry counts as enabled, so existing users need no migration.
            if not saved or saved[cat] ~= false then
                local list = snippets[cat]
                if type(list) == "table" then
                    for j = 1, #list do
                        local text = GetLocalizedSnippetText(list[j])
                        if text and text ~= "" then
                            n = n + 1
                            texts[n] = text
                            cats[n]  = cat
                        end
                    end
                end
            end
        end
    end

    -- Only cache a non-empty pool, so an early call before the localized
    -- entries have loaded doesn't leave a stale empty pool behind.
    if n > 0 then
        poolTexts, poolCats = texts, cats
    end
    return texts, cats, n
end

-- Called by the options checkboxes, and after locale data (re)loads.
function IMAGO.Snippets.RefreshCategories()
    poolTexts, poolCats = nil, nil
end

-- Returns text, categoryKey for a random snippet from ALL enabled categories,
-- or nil, nil if every category is disabled or there is nothing to show.
function IMAGO.Snippets.PickSnippet()
    local texts, cats, n = poolTexts, poolCats, poolTexts and #poolTexts or 0
    if n == 0 then
        texts, cats, n = BuildPool()
        if n == 0 then return nil, nil end
    end
    local i = math.random(n)
    return texts[i], cats[i]
end

---------------------------------------------------------------------
-- Showing
---------------------------------------------------------------------
function IMAGO.Snippets.ShowRandom(ignoreCooldown)
    if not IMAGOSaved or not IMAGOSaved.enabled then return false end
    if not IMAGOSaved.enableIdleFlashcards then return false end

    if not ignoreCooldown then
        if (GetNow() - lastAutoAt) < COOLDOWN_SECONDS then return false end
    end

    local text, categoryKey = IMAGO.Snippets.PickSnippet()
    if not text then return false end

    if IMAGO.UI and IMAGO.UI.ShowSnippetPopup then
        IMAGO.UI.ShowSnippetPopup(text, categoryKey)
    else
        local title = (IMAGO.L and IMAGO.L[categoryKey]) or categoryKey
        print("|cff00ccff[IMAGO]|r " .. title .. ": " .. text)
    end

    if not ignoreCooldown then
        lastAutoAt = GetNow()
    end

    return true
end

---------------------------------------------------------------------
-- Events
-- ShowRandom already checks enabled / enableIdleFlashcards, so this only
-- checks the per-type toggle.
---------------------------------------------------------------------
function IMAGO.Snippets.HandleEvent(event, ...)
    local types = IMAGOSaved and IMAGOSaved.flashcardTypes
    if not types then return end

    if event == "PLAYER_DEAD" then
        if types.dead then IMAGO.Snippets.ShowRandom(false) end

    elseif event == "UNIT_SPELLCAST_CHANNEL_START" then
        if not types.fishing then return end
        local unitTarget, _, spellID = ...
        if unitTarget == "player" and FISHING_SPELL_IDS[spellID] then
            IMAGO.Snippets.ShowRandom(false)
        end

    elseif event == "PLAYER_CONTROL_LOST" then
        if not types.taxi then return end
        C_Timer.After(0.1, function()
            if UnitOnTaxi and UnitOnTaxi("player") then
                IMAGO.Snippets.ShowRandom(false)
            end
        end)
    end
end