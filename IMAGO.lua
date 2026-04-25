-- ============================================================
-- IMAGO — Die Welt hat eine Geschichte.
-- IMAGO.lua — Hauptdatei: Init, Events, Koordination & Scanner
-- ============================================================

IMAGO = {}
IMAGO.VERSION = "1.0.0" 

IMAGO.UI = IMAGO.UI or {}

local defaults = {
    enabled       = true,
    seenZones     = {},
    seenNPCs      = {},
    seenInstances = {},
    viewedNPCs    = {},
    favorites     = {},
    history       = {},
    showOnceOnlyNPC = false,
    showOnceOnlyZone = true,
    noMainLoreTimerClose = false,
    enableIdleFlashcards = true,
    keepSnippetOpen = false,
    enableMotD = true,
    opaqueUI = false,
    minimapPos    = 220,
    hideMinimap   = false,
    -- Combat & Break Contact
    closeOnCombat = true,
    enableBreakContact = true,
    breakContactDistance = 50,
    -- Debug: Chat-Ausgabe bei Zonen-Checks (raw vs. aufgelöste uiMapID)
    debugMap      = false,
    -- Mode Toggle
    encyclopediaMode = false,
    manualUnlocks = {},
}

-- ============================================================
-- HILFSFUNKTIONEN
-- ============================================================

local DEV_PLAYERS = {
    ["lyvienne"] = true,
}

function IMAGO.IsDeveloper()
    local name, realm = UnitName("player")
    if not name then return false end
    name = tostring(name):lower()
    if DEV_PLAYERS[name] then return true end
    if realm and realm ~= "" then
        local full = name .. "-" .. tostring(realm):lower()
        if DEV_PLAYERS[full] then return true end
    end
    return false
end


--- Liefert den NPC-Datensatz für einen Slug aus der kategorisierten Datenbank.
function IMAGO.GetNPCData(slug)
    if not IMAGOdb or not IMAGOdb.npcs or not slug then return nil end
    for cat, entries in pairs(IMAGOdb.npcs) do
        if type(entries) == "table" and entries[slug] then
            return entries[slug]
        end
    end
    return nil
end

--- Baut den Reverse-Lookup (NPC-ID → Slug) für alle Kategorien auf.
function IMAGO.BuildReverseLookup()
    if not IMAGOdb or not IMAGOdb.npcs then return end
    IMAGOdb.idToSlug = {}
    for cat, entries in pairs(IMAGOdb.npcs) do
        if type(entries) == "table" then
            for slug, data in pairs(entries) do
                if data.ids then
                    for _, entry in ipairs(data.ids) do
                        local id = type(entry) == "table" and entry[1] or entry
                        IMAGOdb.idToSlug[tonumber(id)] = slug
                        IMAGOdb.idToSlug[tostring(tonumber(id)) .. "_cat"] = cat
                    end
                end
            end
        end
    end
end

--- Liefert die NPC-ID und den Typ aus einer GUID (sicher gegen Secret Strings).
function IMAGO.GetNPCIDFromGUID(guid)
    if not guid then return nil, nil end
    
    -- Ab WoW 11.0 (Retail) ist dies der sicherste Weg für "Secret Strings"
    if C_CreatureInfo and C_CreatureInfo.GetCreatureIDFromGUID then
        local npcID = C_CreatureInfo.GetCreatureIDFromGUID(guid)
        if npcID then return npcID, "Creature" end
    end

    -- Fallback für ältere Versionen oder falls obiges fehlschlägt
    local ok, cType, _, _, _, _, npcIDStr = pcall(strsplit, "-", guid)
    if ok and cType then
        local isNPC = false
        pcall(function() if cType == "Creature" or cType == "Vehicle" then isNPC = true end end)
        if isNPC then return tonumber(npcIDStr), cType end
    end
    return nil, nil
end

--- Fügt einen Eintrag zur Historie hinzu (maximal 50 Einträge).
function IMAGO.AddToHistory(entry)
    IMAGOSaved.history = IMAGOSaved.history or {}
    table.insert(IMAGOSaved.history, 1, entry)
    if #IMAGOSaved.history > 50 then
        table.remove(IMAGOSaved.history)
    end
end

-- ============================================================
-- DAS SCANNER-MODUL
-- ============================================================
IMAGO.Scanner = {}

function IMAGO.Scanner.DiscoverNPC(npcID)
    if not IMAGOSaved.enabled then return false end
    if not IMAGOdb or not IMAGOdb.idToSlug then return false end
    
    local slug = IMAGOdb.idToSlug[npcID]
    local cat = IMAGOdb.idToSlug[tostring(npcID) .. "_cat"]
    if slug then
        local npcData = cat and IMAGOdb.npcs[cat] and IMAGOdb.npcs[cat][slug] or IMAGO.GetNPCData(slug)
        local name = npcData and npcData.name
        local lore = npcData and npcData.lore
        
        if not IMAGOSaved.seenNPCs[slug] then
            IMAGOSaved.seenNPCs[slug] = true
            IMAGO.AddToHistory(slug)
            
            local msg = IMAGO.L["CHAT_DISCOVERY"] and string.format(IMAGO.L["CHAT_DISCOVERY"], name) or ("|cFF9370DB[IMAGO]|r Echo gebunden: |cFFFFD700" .. name .. "|r")
            print(msg)
            PlaySound(3175, "Master")
            
            if IMAGO.Display and IMAGO.Display.Show then
                IMAGO.Display.Show(name, lore, "npc", true, slug)
            end

            if IMAGO.Chronicle and IMAGO.Chronicle.frame and IMAGO.Chronicle.frame:IsShown() then
                IMAGO.Chronicle.UpdateList()
            end

            return true, true
        else
            local msgKnown = IMAGO.L["CHAT_KNOWN"] and string.format(IMAGO.L["CHAT_KNOWN"], name) or ("|cFF888888[IMAGO]|r Archiv-Eintrag abgerufen: |cFFCCCCCC" .. name .. "|r")
            print(msgKnown)

            if not IMAGO.Scanner.IsShowOnceOnlyEnabled("npc") then
                if IMAGO.Display and IMAGO.Display.Show then
                    IMAGO.Display.Show(name, lore, "npc", false, slug)
                end
            end
            return true, false
        end
    end
    return false, false
end

local lastNPCID = nil
-- Letzter verarbeiteter Zonen-Schlüssel: "c:<uiMapID>" = IMAGO-Zone, "r:<uiMapID>" = nur Rohtabellen-ID
local lastZoneKey = nil
local zoneCheckNilRetries = 0
local ZONE_CHECK_NIL_MAX = 12

function IMAGO.Scanner.EnsureZoneProgressTables()
    if not IMAGOSaved then return end
    IMAGOSaved.seenZones = IMAGOSaved.seenZones or {}
    -- String-Keys aus älteren Saves in echte uiMapID-Zahlen übernehmen
    local sz = IMAGOSaved.seenZones
    local toMigrate = {}
    for k, v in pairs(sz) do
        if v and type(k) == "string" then
            local n = tonumber(k)
            if n then toMigrate[k] = n end
        end
    end
    for strKey, numId in pairs(toMigrate) do
        sz[strKey] = nil
        sz[numId] = true
    end
    local dz = IMAGOSaved.discoveredZones
    if type(dz) == "table" and dz ~= IMAGOSaved.seenZones then
        for id, v in pairs(dz) do
            if v then
                local n = type(id) == "number" and id or tonumber(id)
                if n then IMAGOSaved.seenZones[n] = true end
            end
        end
    end
    IMAGOSaved.discoveredZones = IMAGOSaved.seenZones
end

--- WoW-Checkbuttons liefern oft 1/nil statt true/false — für zuverlässige Logik normalisieren.
function IMAGO.Scanner.IsShowOnceOnlyEnabled(type)
    if not IMAGOSaved then return false end
    local v
    if type == "npc" then
        v = IMAGOSaved.showOnceOnlyNPC
    elseif type == "zone" then
        v = IMAGOSaved.showOnceOnlyZone
    else
        return false
    end
    return v == true or v == 1
end

function IMAGO.Scanner.IsZoneMarkedSeen(zoneId)
    if not IMAGOSaved or not IMAGOSaved.seenZones then return false end
    local n = tonumber(zoneId) or zoneId
    if type(n) ~= "number" then return false end
    return not not (IMAGOSaved.seenZones[n] or IMAGOSaved.seenZones[tostring(n)])
end

--- Liefert die erste uiMapID auf dem Pfad (inkl. Start) mit Eintrag in IMAGOdb.zones, sonst nil.
function IMAGO.Scanner.ResolveTrackedZoneMapID(uiMapID)
    if not uiMapID or type(uiMapID) ~= "number" or not IMAGOdb or not IMAGOdb.zones then
        return nil
    end
    local id = uiMapID
    local depth = 0
    while id and depth < 24 do
        if IMAGOdb.zones[id] then
            return id
        end
        local info = C_Map.GetMapInfo(id)
        if not info then
            return nil
        end
        id = info.parentMapID
        depth = depth + 1
    end
    return nil
end

function IMAGO.Scanner.CheckNPC()
    if not UnitExists("target") then 
        lastNPCID = nil
        return 
    end

    -- Während Combat Lockdown können Unit-GUIDs als „Secret Strings“ vorliegen;
    -- jede String-Operation (z. B. strsplit) würde dann fehlschlagen. Lore-Popup
    -- ist hier ohnehin nicht zuverlässig aktualisierbar.
    if InCombatLockdown() then
        return
    end

    local okGuid, guid = pcall(UnitGUID, "target")
    if not okGuid or not guid then return end

    local npcID, creatureType = IMAGO.GetNPCIDFromGUID(guid)
    if not npcID then return end

    if npcID == lastNPCID then return end
    lastNPCID = npcID
    IMAGO.Scanner.DiscoverNPC(npcID)
end

function IMAGO.Scanner.CheckZone()
    if not IMAGOSaved or not IMAGOSaved.enabled then return end
    IMAGO.Scanner.EnsureZoneProgressTables()

    local rawMapID = C_Map.GetBestMapForUnit("player")
    if not rawMapID then
        zoneCheckNilRetries = zoneCheckNilRetries + 1
        if zoneCheckNilRetries <= ZONE_CHECK_NIL_MAX then
            C_Timer.After(0.5, IMAGO.Scanner.CheckZone)
        end
        return
    end

    if not C_Map.GetMapInfo(rawMapID) then
        zoneCheckNilRetries = zoneCheckNilRetries + 1
        if zoneCheckNilRetries <= ZONE_CHECK_NIL_MAX then
            C_Timer.After(0.5, IMAGO.Scanner.CheckZone)
        end
        return
    end

    zoneCheckNilRetries = 0

    local canonicalMapID = IMAGO.Scanner.ResolveTrackedZoneMapID(rawMapID)
    local key = canonicalMapID and ("c:" .. tostring(canonicalMapID)) or ("r:" .. tostring(rawMapID))

    -- Nach /reload ist lastZoneKey nil: ohne Seeding würde DiscoverZone erneut laufen.
    -- Wenn die Zone schon in seenZones steht und „nur einmal“ aktiv ist, Zustand angleichen
    -- und kein redundantes Popup auslösen.
    if lastZoneKey == nil and canonicalMapID and IMAGO.Scanner.IsShowOnceOnlyEnabled("zone")
        and IMAGO.Scanner.IsZoneMarkedSeen(canonicalMapID) then
        lastZoneKey = key
    end

    if IMAGOSaved.debugMap and IMAGO.isDeveloper then
        local rawInfo = C_Map.GetMapInfo(rawMapID)
        local rawName = rawInfo and rawInfo.name or "?"
        if canonicalMapID then
            local cInfo = C_Map.GetMapInfo(canonicalMapID)
            local cName = cInfo and cInfo.name or "?"
            print(string.format(
                "|cFF9370DB[IMAGO DEBUG]|r Zone-Check: raw uiMapID=%d (%s) -> tracked=%d (%s)",
                rawMapID, rawName, canonicalMapID, cName
            ))
        else
            print(string.format(
                "|cFF9370DB[IMAGO DEBUG]|r Zone-Check: raw uiMapID=%d (%s) -> keine IMAGO-Zone (Parent-Kette)",
                rawMapID, rawName
            ))
        end
    end

    if key == lastZoneKey then
        return
    end
    lastZoneKey = key

    if canonicalMapID then
        IMAGO.Scanner.DiscoverZone(canonicalMapID)
    end
end

function IMAGO.Scanner.CheckInstance() end
function IMAGO.Scanner.CheckEncounter(id) end

-- ============================================================
-- ZONEN-SCANNER & AUTO-POPUP
-- ============================================================

function IMAGO.Scanner.DiscoverZone(mapID)
    if not IMAGOSaved.enabled then return false end
    IMAGO.Scanner.EnsureZoneProgressTables()
    if not IMAGOdb or not IMAGOdb.zones then return false end

    local zoneData = IMAGOdb.zones[mapID]
    if not zoneData then return false end 

    local trackedID = tonumber(mapID) or mapID
    if type(trackedID) ~= "number" then return false end

    local name = zoneData.name
    local lore = zoneData.lore

    local wasSeen = IMAGO.Scanner.IsZoneMarkedSeen(trackedID)
    local isNew = not wasSeen

    IMAGOSaved.seenZones[trackedID] = true
    IMAGOSaved.discoveredZones = IMAGOSaved.seenZones

    if isNew then
        IMAGO.AddToHistory({type="zone", id=trackedID, time=time()})
        print("|cFF9370DB[IMAGO]|r Neue Region betreten: |cFFFFD700" .. name .. "|r")
    end

    local showOnceOnly = IMAGO.Scanner.IsShowOnceOnlyEnabled("zone")
    if IMAGO.Display and IMAGO.Display.Show then
        if isNew or not showOnceOnly then
            IMAGO.Display.Show(name, lore, "zone", isNew)
        end
    end

    if IMAGO.Chronicle and IMAGO.Chronicle.frame and IMAGO.Chronicle.frame:IsShown() then
        IMAGO.Chronicle.UpdateList()
    end

    return true
end

-- ============================================================
-- FEATURE: MINIMAP BUTTON
-- ============================================================
function IMAGO.CreateMinimapButton()
    local dragFrame = CreateFrame("Button", "IMAGOMinimapButton", Minimap)
    dragFrame:SetSize(31, 31)
    dragFrame:SetFrameStrata("MEDIUM")
    dragFrame:SetFrameLevel(Minimap:GetFrameLevel() + 5)
    dragFrame:SetHighlightTexture("Interface\\Minimap\\UI-Minimap-ZoomButton-Highlight")

    dragFrame.icon = dragFrame:CreateTexture(nil, "BACKGROUND")
    dragFrame.icon:SetTexture("Interface\\Icons\\INV_Misc_Book_09") 
    dragFrame.icon:SetSize(20, 20)
    dragFrame.icon:SetPoint("CENTER", 0, 0)
    
    dragFrame.border = dragFrame:CreateTexture(nil, "OVERLAY")
    dragFrame.border:SetTexture("Interface\\Minimap\\MiniMap-TrackingBorder")
    dragFrame.border:SetSize(53, 53)
    dragFrame.border:SetPoint("TOPLEFT", 0, 0)
    
    local function UpdatePosition()
        local angle = math.rad(IMAGOSaved.minimapPos or 220)
        -- HIER DER FIX: Radius dynamisch berechnen (Minimap-Breite / 2 + Puffer)
        local radius = (Minimap:GetWidth() / 2) + 5 
        local x = math.cos(angle) * radius
        local y = math.sin(angle) * radius
        dragFrame:SetPoint("CENTER", Minimap, "CENTER", x, y)
    end
    
    dragFrame:RegisterForClicks("LeftButtonUp", "RightButtonUp")
    dragFrame:SetScript("OnClick", function(self, button)
        if button == "LeftButton" then
            if IMAGO.Chronicle then IMAGO.Chronicle.Toggle() end
        elseif button == "RightButton" then
            if IMAGO.Snippets and IMAGO.Snippets.ShowRandom then
                IMAGO.Snippets.ShowRandom(true)
            end
        end
    end)
    
    dragFrame:RegisterForDrag("LeftButton")
    dragFrame:SetScript("OnDragStart", function()
        dragFrame:SetScript("OnUpdate", function()
            local mx, my = Minimap:GetCenter()
            local cx, cy = GetCursorPosition()
            local scale = Minimap:GetEffectiveScale()
            cx, cy = cx / scale, cy / scale
            local angle = math.deg(math.atan2(cy - my, cx - mx))
            if angle < 0 then angle = angle + 360 end
            IMAGOSaved.minimapPos = angle
            UpdatePosition()
        end)
    end)
    dragFrame:SetScript("OnDragStop", function()
        dragFrame:SetScript("OnUpdate", nil)
    end)

    -- Tooltip beim Hovern
    dragFrame:SetScript("OnEnter", function(self)
        GameTooltip:SetOwner(self, "ANCHOR_BOTTOMLEFT")
        GameTooltip:AddLine(IMAGO.L["MINIMAP_TOOLTIP_TITLE"], 1, 0.85, 0.1)
        GameTooltip:AddLine(IMAGO.L["MINIMAP_TOOLTIP_LEFTCLICK"], 1, 1, 1)
        GameTooltip:AddLine(IMAGO.L["MINIMAP_TOOLTIP_RIGHTCLICK"], 1, 1, 1)
        GameTooltip:Show()
    end)

    dragFrame:SetScript("OnLeave", function()
        GameTooltip:Hide()
    end)

    -- Reagiert auf UI-Skalierung und Änderungen am Edit-Mode
    dragFrame:SetScript("OnEvent", UpdatePosition)
    UpdatePosition()
end

-- ============================================================
-- FEATURE: "WUSSTEST DU SCHON?"
-- ============================================================
local function ShowLoginFact()
    if not IMAGOSaved.enabled then return end
    if not IMAGOSaved.enableMotD then return end
    
    local discovered = {}
    for slug, isSeen in pairs(IMAGOSaved.seenNPCs) do
        if isSeen and IMAGO.GetNPCData(slug) then
            table.insert(discovered, slug)
        end
    end
    
    if #discovered > 0 then
        local randomSlug = discovered[math.random(1, #discovered)]
        local npcData = IMAGO.GetNPCData(randomSlug)
        local name = npcData and npcData.name
        local lore = npcData and npcData.lore
        local firstSentence = lore and (lore:match("^(.-%.%s)") or lore) or ""
        
        print(string.format("|cFF9370DB[IMAGO]|r |cFFFFD700%s|r (|cFFCCCCCC%s|r) - %s", IMAGO.L["LOGIN_DID_YOU_KNOW"], name, firstSentence))
    else
        print("|cFF9370DB[IMAGO]|r |cFF888888" .. IMAGO.L["LOGIN_EMPTY_CHRONICLE"] .. "|r")
    end
end

-- ============================================================
-- EVENTS & INITIALISIERUNG
-- ============================================================
local initFrame = CreateFrame("Frame")
initFrame:RegisterEvent("ADDON_LOADED")
initFrame:RegisterEvent("PLAYER_ENTERING_WORLD")
initFrame:RegisterEvent("ZONE_CHANGED_NEW_AREA")
initFrame:RegisterEvent("PLAYER_TARGET_CHANGED")
initFrame:RegisterEvent("PLAYER_DEAD")
initFrame:RegisterEvent("UNIT_SPELLCAST_CHANNEL_START")
initFrame:RegisterEvent("PLAYER_CONTROL_LOST")
initFrame:RegisterEvent("PLAYER_REGEN_DISABLED")

initFrame:SetScript("OnEvent", function(self, event, ...)
    if event == "ADDON_LOADED" then
        local addonName = ...
        if addonName == "IMAGO" then IMAGO.Init() end
    elseif event == "PLAYER_ENTERING_WORLD" then
        local isInitialLogin, isReloadingUi = ...
        IMAGO.Scanner.EnsureZoneProgressTables()
        if isInitialLogin and IMAGOSaved and IMAGOSaved.enableMotD then
            C_Timer.After(4, ShowLoginFact)
        end
        C_Timer.After(0.5, function()
            IMAGO.Scanner.CheckZone()
        end)
        C_Timer.After(2, function()
            IMAGO.Scanner.CheckZone()
            IMAGO.Scanner.CheckInstance()
        end)
    elseif event == "ZONE_CHANGED_NEW_AREA" then
        C_Timer.After(1, function() IMAGO.Scanner.CheckZone() end)
    elseif event == "PLAYER_TARGET_CHANGED" then
        IMAGO.Scanner.CheckNPC()
    elseif event == "PLAYER_DEAD" or event == "UNIT_SPELLCAST_CHANNEL_START" or event == "PLAYER_CONTROL_LOST" then
        if IMAGO.Snippets and IMAGO.Snippets.HandleEvent then
            IMAGO.Snippets.HandleEvent(event, ...)
        end
    elseif event == "PLAYER_REGEN_DISABLED" then
        -- Combat Mode: Close Discovery Card when entering combat
        if IMAGOSaved.closeOnCombat ~= false and IMAGO.Display.frame and IMAGO.Display.frame:IsShown() then
            IMAGO.Display.HideLorePanel()
        end
    end
end)

function IMAGO.Init()
    IMAGOSaved = IMAGOSaved or {}

    if IMAGOSaved.showOnceOnly ~= nil then
        if IMAGOSaved.showOnceOnlyNPC == nil then IMAGOSaved.showOnceOnlyNPC = IMAGOSaved.showOnceOnly end
        if IMAGOSaved.showOnceOnlyZone == nil then IMAGOSaved.showOnceOnlyZone = IMAGOSaved.showOnceOnly end
    end
    if IMAGOSaved.noTimerClose ~= nil and IMAGOSaved.noMainLoreTimerClose == nil then
        IMAGOSaved.noMainLoreTimerClose = IMAGOSaved.noTimerClose
    end

    for key, value in pairs(defaults) do
        if IMAGOSaved[key] == nil then IMAGOSaved[key] = value end
    end
    IMAGOSaved.viewedNPCs = IMAGOSaved.viewedNPCs or {}
    
    -- Normalisierung der Booleans
    IMAGOSaved.enabled = (IMAGOSaved.enabled == true or IMAGOSaved.enabled == 1)
    IMAGOSaved.showOnceOnlyNPC = (IMAGOSaved.showOnceOnlyNPC == true or IMAGOSaved.showOnceOnlyNPC == 1)
    IMAGOSaved.showOnceOnlyZone = (IMAGOSaved.showOnceOnlyZone == true or IMAGOSaved.showOnceOnlyZone == 1)
    IMAGOSaved.noMainLoreTimerClose = (IMAGOSaved.noMainLoreTimerClose == true or IMAGOSaved.noMainLoreTimerClose == 1)
    IMAGOSaved.enableIdleFlashcards = (IMAGOSaved.enableIdleFlashcards == true or IMAGOSaved.enableIdleFlashcards == 1)
    IMAGOSaved.keepSnippetOpen = (IMAGOSaved.keepSnippetOpen == true or IMAGOSaved.keepSnippetOpen == 1)
    IMAGOSaved.enableMotD = (IMAGOSaved.enableMotD == true or IMAGOSaved.enableMotD == 1)
    IMAGOSaved.opaqueUI = (IMAGOSaved.opaqueUI == true or IMAGOSaved.opaqueUI == 1)
    IMAGOSaved.hideMinimap = (IMAGOSaved.hideMinimap == true or IMAGOSaved.hideMinimap == 1)
    IMAGOSaved.debugMap = (IMAGOSaved.debugMap == true or IMAGOSaved.debugMap == 1)

    IMAGO.isDeveloper = IMAGO.IsDeveloper()
    if not IMAGO.isDeveloper then
        IMAGOSaved.debugMap = false
    end

    IMAGO.Scanner.EnsureZoneProgressTables()

    if IMAGO.BuildReverseLookup then IMAGO.BuildReverseLookup() end
    if IMAGO.Options and IMAGO.Options.Init then IMAGO.Options.Init() end
    
    if IMAGO.Display and IMAGO.Display.CreateFrame then IMAGO.Display.CreateFrame() end
    if IMAGO.UnitContextMenu and IMAGO.UnitContextMenu.Init then IMAGO.UnitContextMenu.Init() end
    IMAGO.CreateMinimapButton()

    if TooltipDataProcessor and TooltipDataProcessor.AddTooltipPostCall then
        TooltipDataProcessor.AddTooltipPostCall(Enum.TooltipDataType.Unit, function(tooltip, data)
            if not IMAGOSaved.enabled then return end
            if InCombatLockdown() then return end

            securecall(function()
                local guid = data and data.guid
                
                if not guid then
                    local _, unit = tooltip:GetUnit()
                    if unit then
                        local ok, unitGuid = pcall(UnitGUID, unit)
                        if ok then guid = unitGuid end
                    end
                end

                if not guid then return end

                local npcID = IMAGO.GetNPCIDFromGUID(guid)
                if npcID and IMAGOdb and IMAGOdb.idToSlug then
                    local slug = IMAGOdb.idToSlug[npcID]
                    if slug then
                        tooltip:AddLine(" ")
                        if IMAGOSaved.seenNPCs[slug] then
                            tooltip:AddLine(IMAGO.L["TOOLTIP_KNOWN"] or "IMAGO: In Chronik verzeichnet")
                        else
                            tooltip:AddLine(IMAGO.L["TOOLTIP_UNKNOWN"] or "IMAGO: Schicksal verborgen")
                        end
                    end
                end
            end)
        end)
    end

    SLASH_IMAGO1 = "/imago"
    SlashCmdList["IMAGO"] = function(msg)
        msg = msg:lower():trim()
        local isDev = IMAGO.isDeveloper
        
        if msg == "" then
            if IMAGO.Chronicle then IMAGO.Chronicle.Toggle() end
        elseif msg == "settings" or msg == "config" then
            if Settings and Settings.OpenToCategory and IMAGO.settingsCategory then
                Settings.OpenToCategory(IMAGO.settingsCategory:GetID())
            end
        elseif msg == "idle" then
            if IMAGO.Snippets and IMAGO.Snippets.ShowRandom then
                IMAGO.Snippets.ShowRandom(true)
            end
        elseif msg == "help" then
            print("|cFF9370DBIMAGO Slash Commands:|r")
            print("|cFFFFD700/imago|r - " .. (IMAGO.L["CMD_HELP_OPEN_DESC"] or "Öffnet oder schließt die Chronik"))
            print("|cFFFFD700/imago settings|r - " .. (IMAGO.L["CMD_HELP_SETTINGS_DESC"] or "Öffnet die Addon-Einstellungen"))
            print("|cFFFFD700/imago help|r - " .. (IMAGO.L["CMD_HELP_HELP_DESC"] or "Zeigt diese Hilfe an"))
        elseif msg == "dev" then
            if not isDev then return end
            print("|cFFFFD700[IMAGO DEV]|r Befehle:")
            print("|cFFFFD700/imago debugmap|r - Zonen-Debug an/aus (Chat-Ausgabe)")
            print("|cFFFFD700/imago map|r - Aktuelle uiMapID anzeigen (für zones.lua)")
            print("|cFFFFD700/imago validate|r - Datenbank-Validierung (IDs/Lore)")
            print("|cFFFFD700/imago unlockall|r - Alles freischalten (Test)")
            print("|cFFFFD700/imago scan <id>|r - NPC per ID testen/anzeigen")
        elseif msg == "debugmap" then
            if not isDev then return end
            IMAGOSaved.debugMap = not IMAGOSaved.debugMap
            print(string.format(
                "|cFFFFD700IMAGO:|r Zonen-Debug %s (/imago debugmap zum Umschalten)",
                IMAGOSaved.debugMap and "|cFF00FF00AN|r" or "|cFFFF0000AUS|r"
            ))
        elseif msg == "reset" then
            IMAGOSaved.seenZones     = {}
            IMAGOSaved.discoveredZones = IMAGOSaved.seenZones
            IMAGOSaved.seenNPCs      = {}
            IMAGOSaved.seenInstances = {}
            IMAGOSaved.viewedNPCs    = {}
            IMAGOSaved.favorites     = {}
            IMAGOSaved.history       = {}
            print("|cFFFFD700IMAGO:|r " .. (IMAGO.L["RESET_DONE"] or "Historie zurückgesetzt."))
            if IMAGO.Chronicle and IMAGO.Chronicle.frame and IMAGO.Chronicle.frame:IsShown() then
                IMAGO.Chronicle.UpdateList()
            end
            
        elseif msg == "map" then
            if not isDev then return end
            -- DAS ULTIMATIVE DEV-TOOL FÜR ZONEN-IDS
            local mapID = C_Map.GetBestMapForUnit("player")
            if mapID then
                local mapInfo = C_Map.GetMapInfo(mapID)
                local mapName = mapInfo and mapInfo.name or "Unbekannt"
                print(string.format("|cFFFFD700[IMAGO DEV]|r Aktuelle Map ID: |cFF00FF00%d|r (%s)", mapID, mapName))
                print("|cFFCCCCCCTrage exakt diese ID in deine zones.lua ein!|r")
            else
                print("|cFFFF0000[IMAGO DEV]|r Konnte Map ID nicht ermitteln.")
            end
            
        elseif msg == "validate" then
            if not isDev then return end
            print(IMAGO.L["VAL_START"] or "|cFFFFD700[IMAGO]|r Starte Datenbank-Validierung...")
            local count, missingIDs, missingLore = 0, 0, 0
            for cat, entries in pairs(IMAGOdb.npcs) do
                if type(entries) == "table" then
                    for slug, data in pairs(entries) do
                        count = count + 1
                        if not data.displayID and not data.ids then
                            print(string.format(IMAGO.L["VAL_ERR_ID"] or "|cFFFF0000Fehler:|r %s hat weder displayID noch ids-Array!", slug))
                            missingIDs = missingIDs + 1
                        end
                        if not data.lore or data.lore == "" then
                            print(string.format(IMAGO.L["VAL_WARN_LORE"] or "|cFFFF8C00Warnung:|r %s hat keine Lore in der aktuellen Sprache!", slug))
                            missingLore = missingLore + 1
                        end
                    end
                end
            end
            print(string.format(IMAGO.L["VAL_DONE"] or "Validierung beendet. %d NPCs geprüft. %d kritische Fehler, %d Warnungen.", count, missingIDs, missingLore))
        
        elseif msg == "unlockall" then
            if not isDev then return end
            local count = 0
            
            -- 1. NPCs freischalten
            for cat, entries in pairs(IMAGOdb.npcs or {}) do
                if type(entries) == "table" then
                    for slug, _ in pairs(entries) do
                        if not IMAGOSaved.seenNPCs[slug] then
                            IMAGOSaved.seenNPCs[slug] = true
                            IMAGOSaved.viewedNPCs[slug] = true
                            count = count + 1
                        end
                    end
                end
            end
            
            -- 2. Zonen freischalten
            for mapID, _ in pairs(IMAGOdb.zones or {}) do
                if not IMAGOSaved.seenZones[mapID] then
                    IMAGOSaved.seenZones[mapID] = true
                    count = count + 1
                end
            end
            
            -- Output im Chat
            local successMsg = IMAGO.L["CMD_UNLOCKALL_SUCCESS"] and string.format(IMAGO.L["CMD_UNLOCKALL_SUCCESS"], count) or string.format("|cFF9370DB[IMAGO]|r Alle Archive geöffnet. %d neue Einträge entschlüsselt.", count)
            print(successMsg)
            
            -- UI sofort aktualisieren, falls offen
            if IMAGO.Chronicle and IMAGO.Chronicle.frame and IMAGO.Chronicle.frame:IsShown() then
                IMAGO.Chronicle.UpdateList()
            end

        elseif msg:match("^scan %d+") then
            if not isDev then return end
            local id = tonumber(msg:match("^scan (%d+)"))
            local isRelevant = IMAGO.Scanner.DiscoverNPC(id)
            if not isRelevant then print("|cFFFF0000IMAGO:|r ID " .. id .. " ist nicht in der Datenbank.") end
        end
    end
end
