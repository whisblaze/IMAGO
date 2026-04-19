-- ============================================================
-- IMAGO — core/Chronicle.lua
-- Die Chronik: 10/10 Cinematic UI, Dashboard, Search & Filter
-- ============================================================

IMAGO.Chronicle = {}

local FONT_TITLE = "Fonts\\MORPHEUS.TTF"
local FONT_BODY  = "Fonts\\FRIZQT__.TTF"

local eraColors = {
    ["Ancient"]   = {0.85, 0.65, 0.13},     -- Titanen-Bronze (Schöpfung/Alte Götter)
    ["WC1"]       = {0.60, 0.10, 0.10},     -- Blut-Rot (Orc-Invasion/Erster Krieg)
    ["WC2"]       = {0.10, 0.30, 0.80},     -- Lordaeron-Blau (Allianz/Zweiter Krieg)
    ["WC3"]       = {0.45, 0.80, 0.20},     -- Seuchen-Grün (Die Geißel/Dritter Krieg)
    ["Classic"]   = {0.7, 0.7, 0.7},        -- Neutrales Stein-Grau (Alte Welt)
    ["Pre-TBC"]   = {0.12, 1.0, 0.0},       -- Dunkleres Wald/Teufelsgrün (Scherbenwelt)
    ["TBC"]       = {0.12, 1.0, 0.0},       -- Dunkleres Wald/Teufelsgrün (Scherbenwelt)
    ["Pre-WotLK"] = {0.0, 0.8, 1.0},        -- Frost-Blau (Eiskrone/Arthas)
    ["WotLK"]     = {0.0, 0.8, 1.0},        -- Frost-Blau (Eiskrone/Arthas)
    ["Pre-Cata"]  = {1.0, 0.27, 0.0},       -- Magma-Rot (Todesschwinge)
    ["Cata"]      = {1.0, 0.27, 0.0},       -- Magma-Rot (Todesschwinge)
    ["Pre-MoP"]   = {0.0, 1.0, 0.59},       -- Jade-Grün (Pandaria)
    ["MoP"]       = {0.0, 1.0, 0.59},       -- Jade-Grün (Pandaria)
    ["Pre-WoD"]   = {0.77, 0.12, 0.23},     -- Eisenhorden-Dunkelrot (Grommash)
    ["WoD"]       = {0.77, 0.12, 0.23},     -- Eisenhorden-Dunkelrot (Grommash)
    ["Pre-Legion"]= {0.19, 1.0, 0.0},       -- STECHENDES TEUFELSGRÜN (Brennende Legion)
    ["Legion"]    = {0.19, 1.0, 0.0},       -- STECHENDES TEUFELSGRÜN (Brennende Legion)
    ["Pre-BfA"]   = {1.0, 0.82, 0.0},       -- Azerit-Gold (Herz von Azeroth)
    ["BfA"]       = {1.0, 0.82, 0.0},       -- Azerit-Gold (Herz von Azeroth)
    ["Pre-SL"]    = {0.64, 0.21, 0.93},     -- Anima-Violett (Schattenlande)
    ["SL"]        = {0.64, 0.21, 0.93},     -- Anima-Violett (Schattenlande)
    ["Pre-DF"]    = {1.0, 0.49, 0.04},      -- Aspekt-Bernstein (Drachenschwarm)
    ["DF"]        = {1.0, 0.49, 0.04},      -- Aspekt-Bernstein (Drachenschwarm)
    ["Pre-TWW"]   = {0.0, 0.8, 1.0},        -- Strahlendes Blau (Der Ruf des Lichts)
    ["TWW"]       = {0.0, 0.8, 1.0},        -- Strahlendes Blau (Der Ruf des Lichts)
    ["Pre-MN"]    = {0.42, 0.0, 0.8},       -- Tiefes Leeren-Violett (Xal'atath)
    ["Midnight"]  = {0.42, 0.0, 0.8},       -- Tiefes Leeren-Violett (Xal'atath)
}

local DB_LOCALE = (GetLocale() == "deDE") and "deDE" or "enUS"

IMAGO.Chronicle.ranks = {
    {perc = 0,   title_deDE = "Stiller Beobachter",             title_enUS = "Silent Observer"},
    {perc = 10,  title_deDE = "Sammler der Fragmente",          title_enUS = "Collector of Fragments"},
    {perc = 25,  title_deDE = "Schreiber der Echos",            title_enUS = "Scribe of Echoes"},
    {perc = 40,  title_deDE = "Chronist der Unvergessenen",     title_enUS = "Chronicler of the Unforgotten"},
    {perc = 60,  title_deDE = "Hüter des Vermächtnisses",       title_enUS = "Keeper of Legacy"},
    {perc = 80,  title_deDE = "Hüter der Weltenseele",          title_enUS = "Keeper of the Worldsoul"},
    {perc = 95,  title_deDE = "Das Gedächtnis von Azeroth",     title_enUS = "Grand Archivist of the Canon"},
    {perc = 100, title_deDE = "Vollendetes Imago",              title_enUS = "Perfected Imago"},
}

IMAGO.Chronicle.zoneRanks = {
    {perc = 0,   title_deDE = "Wanderer",          title_enUS = "Wanderer"},
    {perc = 20,  title_deDE = "Späher",            title_enUS = "Scout"},
    {perc = 40,  title_deDE = "Kartograph",        title_enUS = "Cartographer"},
    {perc = 60,  title_deDE = "Pfadfinder",        title_enUS = "Pathfinder"},
    {perc = 80,  title_deDE = "Entdecker",          title_enUS = "Explorer"},
    {perc = 100, title_deDE = "Weltenwanderer",    title_enUS = "Worldwalker"},
}

local function GetCrypticName(name)
    local crypt = ""
    local consonants = {"k", "z", "n", "h", "r", "t", "x", "v", "l", "s", "q", "w", "y"}
    local vowels = {"a", "u", "o", "i", "e"}

    for i = 1, #name do
        local char = string.sub(name, i, i)
        if char:match("%A") and char ~= "ä" and char ~= "ö" and char ~= "ü" then
            crypt = crypt .. char
        else
            local isUpper = (char == string.upper(char))
            local byteVal = string.byte(char) + i
            local isVowel = char:lower():match("[aeiouäöü]")
            local newChar = isVowel and vowels[(byteVal % #vowels) + 1] or consonants[(byteVal % #consonants) + 1]
            crypt = crypt .. (isUpper and string.upper(newChar) or newChar)
        end
    end
    return crypt
end

local function GetValidModelID(npcData)
    if npcData.displayID then return tonumber(npcData.displayID) end
    if npcData.ids and type(npcData.ids) == "table" then
        local entry = npcData.ids[2] or npcData.ids[1]
        if entry then
            return type(entry) == "table" and tonumber(entry[1]) or tonumber(entry)
        end
    end
    return nil
end

-- ============================================================
-- CINEMATIC DISCOVERY EVENT 
-- ============================================================
function IMAGO.Chronicle.ShowCinematic(npcData, callback)
    if not IMAGO.Chronicle.cinematicFrame then
        local cf = CreateFrame("Button", "IMAGOCinematicFrame", UIParent)
        cf:SetAllPoints()
        cf:SetFrameStrata("FULLSCREEN_DIALOG") 
        cf:SetFrameLevel(999) 
        cf:EnableMouse(true)
        cf:RegisterForClicks("AnyUp")

        cf.bg = cf:CreateTexture(nil, "BACKGROUND")
        cf.bg:SetAllPoints()
        cf.bg:SetColorTexture(0.02, 0.02, 0.02, 0.95)

        cf.model = CreateFrame("PlayerModel", nil, cf)
        cf.model:SetSize(800, 800) 
        cf.model:SetPoint("CENTER", 0, 80) 
        
        cf.model:SetScript("OnUpdate", function(self, elapsed)
            self.facing = (self.facing or 0) + (elapsed * 0.15)
            self:SetFacing(self.facing)
        end)

        cf.name = cf:CreateFontString(nil, "OVERLAY")
        cf.name:SetFont(FONT_TITLE, 64, "OUTLINE")
        cf.name:SetPoint("BOTTOM", cf.model, "BOTTOM", 0, -80)
        cf.name:SetTextColor(1.0, 0.85, 0.1)
        cf.name:SetShadowColor(0,0,0,1)
        cf.name:SetShadowOffset(2, -2)

        cf.sub = cf:CreateFontString(nil, "OVERLAY")
        cf.sub:SetFont(FONT_BODY, 16, "OUTLINE")
        cf.sub:SetPoint("TOP", cf.name, "BOTTOM", 0, -15)
        cf.sub:SetTextColor(0.6, 0.6, 0.6)

        IMAGO.Chronicle.cinematicFrame = cf
    end

    local cf = IMAGO.Chronicle.cinematicFrame
    cf.name:SetText(IMAGO.GetLocalizedData(npcData, "displayName"))
    cf.sub:SetText(IMAGO.L["CINEMATIC_CONTINUE"])

    -- FIX: Wieder SetCreature mit sicherem Cache-Reload Timer
    cf.model:ClearModel()
    local modelID = GetValidModelID(npcData)
    if modelID then 
        cf.model:SetCreature(modelID)
        C_Timer.After(0.15, function()
            if cf:IsShown() then cf.model:SetCreature(modelID) end
        end)
    end
    
    cf.model:SetCamDistanceScale(1.5)  
    cf.model:SetPosition(0, 0, -0.3)   
    cf.model.facing = -0.3
    cf.model:SetFacing(-0.3)

    cf:SetAlpha(0)
    cf:Show()
    
    local soundID = SOUNDKIT.UI_LEGENDARY_LOOT_TOAST or 44204
    PlaySound(soundID, "Master") 

    UIFrameFadeIn(cf, 1.0, 0, 1)

    cf:SetScript("OnClick", function(self)
        self:SetScript("OnClick", nil) 
        if SOUNDKIT and SOUNDKIT.IG_MAINMENU_OPTION then PlaySound(SOUNDKIT.IG_MAINMENU_OPTION) end
        
        UIFrameFadeOut(self, 0.5, 1, 0)
        C_Timer.After(0.5, function()
            self:Hide()
            if callback then callback() end
        end)
    end)
end

-- ============================================================
-- DAS HAUPTFENSTER
-- ============================================================
function IMAGO.Chronicle.CreateFrame()
    if IMAGO.Chronicle.frame then return end

    local f = CreateFrame("Frame", "IMAGOChronicleFrame", UIParent, "BackdropTemplate")
    f:SetFrameStrata("DIALOG")
    f:SetFrameLevel(100)
    f:SetSize(950, 700)
    f:SetPoint("CENTER")
    f:SetFrameStrata("HIGH")
    f:EnableMouse(true)
    f:SetMovable(true)
    f:RegisterForDrag("LeftButton")
    f:SetScript("OnDragStart", f.StartMoving)
    f:SetScript("OnDragStop", f.StopMovingOrSizing)
    f:Hide()

    local backdropDefault = {
        bgFile = "Interface\\Tooltips\\UI-Tooltip-Background",
        edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border",
        tile = true, tileSize = 16, edgeSize = 16,
        insets = { left = 4, right = 4, top = 4, bottom = 4 }
    }
    local backdropOpaque = {
        bgFile = "Interface\\Buttons\\WHITE8X8",
        edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border",
        tile = true, tileSize = 16, edgeSize = 16,
        insets = { left = 4, right = 4, top = 4, bottom = 4 }
    }
    f:SetBackdrop((IMAGOSaved and IMAGOSaved.opaqueUI) and backdropOpaque or backdropDefault)
    f:SetBackdropColor(0.05, 0.05, 0.05, (IMAGOSaved and IMAGOSaved.opaqueUI) and 1.0 or 0.95)
    f:SetBackdropBorderColor(1.0, 0.85, 0.1, 0.9)

    f.closeBtn = CreateFrame("Button", nil, f, "UIPanelCloseButton")
    f.closeBtn:SetPoint("TOPRIGHT", f, "TOPRIGHT", -4, -4)

    -- 1. NEU: Header-Hintergrund (Verdunkelt den oberen Bereich für mehr Fokus)
    f.headerBg = f:CreateTexture(nil, "BACKGROUND")
    f.headerBg:SetPoint("TOPLEFT", f, "TOPLEFT", 4, -4)
    f.headerBg:SetPoint("TOPRIGHT", f, "TOPRIGHT", -4, -4)
    f.headerBg:SetHeight(45)
    f.headerBg:SetTexture("Interface\\ChatFrame\\ChatFrameBackground")
    if IMAGOSaved and IMAGOSaved.opaqueUI then
        f.headerBg:SetGradient("VERTICAL", CreateColor(0, 0, 0, 1), CreateColor(0, 0, 0, 1))
    else
        f.headerBg:SetGradient("VERTICAL", CreateColor(0, 0, 0, 0.7), CreateColor(0, 0, 0, 0))
    end

    -- 2. NEU: Trennlinie unter dem Titel (Schneidet Header vom Inhalt ab)
    f.headerLine = f:CreateTexture(nil, "ARTWORK")
    f.headerLine:SetPoint("TOPLEFT", f, "TOPLEFT", 4, -49)
    f.headerLine:SetPoint("TOPRIGHT", f, "TOPRIGHT", -4, -49)
    f.headerLine:SetHeight(1)
    f.headerLine:SetTexture("Interface\\ChatFrame\\ChatFrameBackground")
    f.headerLine:SetGradient("HORIZONTAL", CreateColor(1.0, 0.85, 0.1, 0), CreateColor(1.0, 0.85, 0.1, 0.4), CreateColor(1.0, 0.85, 0.1, 0))

    -- 3. Der Titel selbst (Minimal größer & mit Gravur-Schatten)
    f.title = f:CreateFontString(nil, "OVERLAY")
    f.title:SetFont(FONT_TITLE, 24, "OUTLINE") -- Von 22 auf 24 vergrößert für mehr Präsenz
    f.title:SetPoint("TOP", f, "TOP", 0, -16)
    f.title:SetTextColor(1.0, 0.85, 0.1)
    f.title:SetShadowColor(0, 0, 0, 1) -- NEU: Der Drop-Shadow
    f.title:SetShadowOffset(2, -2)
    f.title:SetText("IMAGO — " .. (IMAGO.L["WINDOW_TITLE"] or "Chronik der Unvergessenen"))

    f.settingsBtn = CreateFrame("Button", nil, f)
    f.settingsBtn:SetSize(18, 18)
    f.settingsBtn:SetPoint("TOPLEFT", f, "TOPLEFT", 10, -12)
    f.settingsBtn:SetNormalTexture("Interface\\Buttons\\UI-OptionsButton")
    f.settingsBtn:SetHighlightTexture("Interface\\Buttons\\ButtonHilight-Square", "ADD")
    f.settingsBtn:SetScript("OnClick", function()
        if Settings and Settings.OpenToCategory and IMAGO.settingsCategory then
            Settings.OpenToCategory(IMAGO.settingsCategory:GetID())
        elseif InterfaceOptionsFrame_OpenToCategory then
            InterfaceOptionsFrame_OpenToCategory("IMAGO")
        end
    end)

    f.activeFilter = "ALL"
    
    f.searchBox = CreateFrame("EditBox", "IMAGOChronicleSearch", f, "SearchBoxTemplate")
    f.searchBox:SetSize(140, 20)
    f.searchBox:SetPoint("TOPLEFT", f, "TOPLEFT", 20, -70)
    f.searchBox:SetAutoFocus(false)
    f.searchBox:SetScript("OnTextChanged", function(self)
        SearchBoxTemplate_OnTextChanged(self)
        IMAGO.Chronicle.UpdateList()
    end)

    f.filterBtn = CreateFrame("Button", nil, f, "UIMenuButtonStretchTemplate")
    f.filterBtn:SetSize(85, 22)
    f.filterBtn:SetPoint("LEFT", f.searchBox, "RIGHT", 10, 0)
    f.filterBtn.t = f.filterBtn:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")
    f.filterBtn.t:SetPoint("CENTER")
    f.filterBtn:SetText(IMAGO.L["FILTER_ALL"])

    local btnText = f.filterBtn:GetFontString()
    if btnText then
        -- Zwingt den Text, 15 Pixel schmaler zu sein als der Button selbst
        btnText:SetWidth(f.filterBtn:GetWidth() - 15) 
        -- Verhindert Zeilenumbrüche und aktiviert automatisch das "..." am Ende
        btnText:SetWordWrap(false) 
    end
    
    f.filterMenu = CreateFrame("Frame", nil, f, "BackdropTemplate")
    f.filterMenu:SetSize(200, 200)
    f.filterMenu:SetPoint("TOPLEFT", f.filterBtn, "BOTTOMLEFT", 0, -5)
    f.filterMenu:SetFrameLevel(f:GetFrameLevel() + 10)
    f.filterMenu:Hide()
    f.filterMenu:SetBackdrop({
        bgFile = ((IMAGOSaved and IMAGOSaved.opaqueUI) and "Interface\\Buttons\\WHITE8X8") or "Interface\\Tooltips\\UI-Tooltip-Background",
        edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border", 
        tile = true, tileSize = 16, edgeSize = 16,
        insets = { left = 4, right = 4, top = 4, bottom = 4 }
    })
    f.filterMenu:SetBackdropColor(0.05, 0.05, 0.05, (IMAGOSaved and IMAGOSaved.opaqueUI) and 1.0 or 0.98)
    f.filterMenu:SetBackdropBorderColor(1, 0.78, 0.1, 0.9)

    local filters = {
        {id = "ALL",            name = IMAGO.L["FILTER_ALL"] or "Alle Echos"},
        {id = "HIST",           name = IMAGO.L["FILTER_HIST"] or "Zuletzt entdeckt"},
        {id = "FAV",            name = IMAGO.L["FILTER_FAV"] or "Favoriten"},
        {id = "CAT_QUELTHALAS", name = IMAGO.L["CAT_QUELTHALAS"] or "Verteidiger von Quel'Thalas"},
        {id = "CAT_LIGHT",      name = IMAGO.L["CAT_LIGHT"] or "Vorhut des Lichts"},
        {id = "CAT_AMANI",      name = IMAGO.L["CAT_AMANI"] or "Der Amani-Stamm"},
        {id = "CAT_HARATI",     name = IMAGO.L["CAT_HARATI"] or "Die Hara'ti"},
        {id = "CAT_VOID",       name = IMAGO.L["CAT_VOID"] or "Die Leereninvasion"},
        {id = "CAT_EBON_BLADE", name = IMAGO.L["CAT_EBON_BLADE"] or "Ritter der Schwarzen Klinge"},
        {id = "CAT_NEUTRAL",    name = IMAGO.L["CAT_NEUTRAL"] or "Unabhängig & Rätselhaft"}
    }
    
    local menuY = -10
    for _, flt in ipairs(filters) do
        local btn = CreateFrame("Button", nil, f.filterMenu)
        btn:SetSize(140, 20)
        btn:SetPoint("TOP", f.filterMenu, "TOP", 0, menuY)
        local hl = btn:CreateTexture(nil, "HIGHLIGHT")
        hl:SetAllPoints()
        hl:SetColorTexture(1, 0.78, 0.1, 0.2)
        btn.t = btn:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")
        btn.t:SetPoint("LEFT", 10, 0)
        btn.t:SetText(flt.name)
        if flt.id == "FAV" then btn.t:SetTextColor(1.0, 0.85, 0.1) end
        
        btn:SetScript("OnClick", function()
            f.activeFilter = flt.id
            f.filterBtn:SetText(flt.name)    -- SO IST ES SAUBER
            f.filterMenu:Hide()
            IMAGO.Chronicle.UpdateList()
        end)
        menuY = menuY - 20
    end
    f.filterMenu:SetHeight(math.abs(menuY) + 10)

    f.filterBtn:SetScript("OnClick", function()
        if f.filterMenu:IsShown() then f.filterMenu:Hide() else f.filterMenu:Show() end
    end)

    f.scrollFrame = CreateFrame("ScrollFrame", "IMAGOChronicleScroll", f, "UIPanelScrollFrameTemplate")
    f.scrollFrame:SetPoint("TOPLEFT", f, "TOPLEFT", 15, -105)
    f.scrollFrame:SetPoint("BOTTOMLEFT", f, "BOTTOMLEFT", 15, 15)
    f.scrollFrame:SetWidth(250)
    
    local scrollBar = _G["IMAGOChronicleScrollScrollBar"]
    if scrollBar then
        _G["IMAGOChronicleScrollScrollBarScrollUpButton"]:Hide()
        _G["IMAGOChronicleScrollScrollBarScrollDownButton"]:Hide()
        scrollBar:SetWidth(4)
        scrollBar:GetThumbTexture():SetColorTexture(1, 0.78, 0.1, 0.4)
    end

    f.content = CreateFrame("Frame", nil, f.scrollFrame)
    f.content:SetSize(240, 1)
    f.scrollFrame:SetScrollChild(f.content)
    
    f.vLine = f:CreateTexture(nil, "ARTWORK")
    f.vLine:SetSize(1, 600)
    f.vLine:SetPoint("TOPLEFT", f.scrollFrame, "TOPRIGHT", 10, 35)
    f.vLine:SetGradient("VERTICAL", CreateColor(1, 0.78, 0.1, 0), CreateColor(1, 0.78, 0.1, 0.4))

    -- ============================================================
    -- RECHTE SEITE: DAS DETAIL-FRAME
    -- ============================================================
    f.detailFrame = CreateFrame("Frame", nil, f, "BackdropTemplate")
    f.detailFrame:SetPoint("TOPLEFT", f.vLine, "TOPRIGHT", 15, 0)
    f.detailFrame:SetPoint("BOTTOMRIGHT", f, "BOTTOMRIGHT", -20, 20)
    f.detailFrame:SetBackdrop({
        bgFile = ((IMAGOSaved and IMAGOSaved.opaqueUI) and "Interface\\Buttons\\WHITE8X8") or "Interface\\Tooltips\\UI-Tooltip-Background",
        edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border", 
        tile = true, tileSize = 16, edgeSize = 16,
        insets = { left = 4, right = 4, top = 4, bottom = 4 }
    })
    f.detailFrame:SetBackdropColor(0.05, 0.05, 0.05, (IMAGOSaved and IMAGOSaved.opaqueUI) and 1.0 or 0.95)
    f.detailFrame:SetBackdropBorderColor(1, 0.78, 0.1, 0.9)

    -- NEU: Das Fraktions-Icon (Fix für den aktuellen Fehler!)
    f.factionIcon = f.detailFrame:CreateTexture(nil, "ARTWORK")
    f.factionIcon:SetSize(50, 50)
    f.factionIcon:SetPoint("TOPRIGHT", f.detailFrame, "TOPRIGHT", -20, -10)
    f.factionIcon:SetAlpha(0.7)
    f.factionIcon:Hide()

    f.detailTitle = f.detailFrame:CreateFontString(nil, "OVERLAY")
    f.detailTitle:SetFont(FONT_TITLE, 32, "OUTLINE")
    f.detailTitle:SetPoint("TOP", f.detailFrame, "TOP", 0, -15)
    f.detailTitle:SetTextColor(1.0, 0.85, 0.1)

    -- Die Zierlinien unter dem Titel
    f.detailLineLeft = f.detailFrame:CreateTexture(nil, "ARTWORK")
    f.detailLineLeft:SetSize(280, 1)
    f.detailLineLeft:SetPoint("TOPRIGHT", f.detailTitle, "BOTTOM", 0, -8)
    f.detailLineLeft:SetTexture("Interface\\ChatFrame\\ChatFrameBackground")
    f.detailLineLeft:SetGradient("HORIZONTAL", CreateColor(1, 0.78, 0.1, 0), CreateColor(1, 0.78, 0.1, 0.7))

    f.detailLineRight = f.detailFrame:CreateTexture(nil, "ARTWORK")
    f.detailLineRight:SetSize(280, 1)
    f.detailLineRight:SetPoint("TOPLEFT", f.detailTitle, "BOTTOM", 0, -8)
    f.detailLineRight:SetTexture("Interface\\ChatFrame\\ChatFrameBackground")
    f.detailLineRight:SetGradient("HORIZONTAL", CreateColor(1, 0.78, 0.1, 0.7), CreateColor(1, 0.78, 0.1, 0))

    -- Zonen-Elemente (Bild, Rahmen, Trenner)
    f.detailImage = f.detailFrame:CreateTexture(nil, "ARTWORK")
    f.detailImage:SetSize(580, 200)
    f.detailImage:SetPoint("TOP", f.detailFrame, "TOP", 0, -70)
    f.detailImage:SetTexCoord(0, 1, 0.195, 0.805) 
    f.detailImage:Hide()
    
    f.detailImageBorder = CreateFrame("Frame", nil, f.detailFrame, "BackdropTemplate")
    f.detailImageBorder:SetPoint("TOPLEFT", f.detailImage, "TOPLEFT", -2, 2)
    f.detailImageBorder:SetPoint("BOTTOMRIGHT", f.detailImage, "BOTTOMRIGHT", 2, -2)
    f.detailImageBorder:SetBackdrop({
        edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border",
        edgeSize = 12,
    })
    f.detailImageBorder:SetBackdropBorderColor(1, 0.78, 0.1, 0.8)
    f.detailImageBorder:Hide()

    f.detailSeparator = f.detailFrame:CreateTexture(nil, "ARTWORK")
    f.detailSeparator:SetSize(450, 8)
    f.detailSeparator:SetPoint("TOP", f.detailImage, "BOTTOM", 0, -15)
    f.detailSeparator:SetTexture("Interface\\COMMON\\UI-TooltipDivider-Transparent")
    f.detailSeparator:SetAlpha(0.6)
    f.detailSeparator:Hide()

    local function CreateTab(parent, text, xOffset)
        local tab = CreateFrame("Button", nil, parent)
        tab:SetSize(100, 25)
        tab:SetPoint("TOPLEFT", parent, "TOPLEFT", 300 + xOffset, -80)
        
        tab.text = tab:CreateFontString(nil, "OVERLAY")
        tab.text:SetFont(FONT_TITLE, 15, "OUTLINE")
        tab.text:SetPoint("CENTER")
        tab.text:SetText(text)
        tab.text:SetTextColor(0.5, 0.5, 0.5)
        
        tab.activeLine = tab:CreateTexture(nil, "ARTWORK")
        tab.activeLine:SetSize(70, 2)
        tab.activeLine:SetPoint("BOTTOM", tab, "BOTTOM", 0, 0)
        tab.activeLine:SetColorTexture(1.0, 0.85, 0.1, 1)
        tab.activeLine:Hide()
        return tab
    end

    f.tabLore = CreateTab(f.detailFrame, IMAGO.L["TAB_DETAIL_LORE"], 0)
    f.tabTime = CreateTab(f.detailFrame, IMAGO.L["TAB_DETAIL_TIMELINE"], 100)

    f.infoScroll = CreateFrame("ScrollFrame", "IMAGOChronicleInfoScroll", f.detailFrame, "UIPanelScrollFrameTemplate")
    f.infoScroll:SetPoint("TOPLEFT", f.detailFrame, "TOPLEFT", 310, -115)
    f.infoScroll:SetPoint("BOTTOMRIGHT", f.detailFrame, "BOTTOMRIGHT", -15, 100)
    
    local infoScrollBar = _G["IMAGOChronicleInfoScrollScrollBar"]
    if infoScrollBar then infoScrollBar:SetAlpha(0) end

    f.infoContent = CreateFrame("Frame", nil, f.infoScroll)
    f.infoContent:SetSize(290, 1)
    f.infoScroll:SetScrollChild(f.infoContent)

    f.loreBody = f.infoContent:CreateFontString(nil, "OVERLAY")
    f.loreBody:SetFont(FONT_BODY, 15, "")
    f.loreBody:SetPoint("TOPLEFT", f.infoContent, "TOPLEFT", 0, 0)
    f.loreBody:SetWidth(290)
    f.loreBody:SetJustifyH("LEFT")
    f.loreBody:SetTextColor(0.9, 0.9, 0.9)
    f.loreBody:SetSpacing(6)

-- ==========================================
    -- BILD FÜR DIE ZONEN-DETAILANSICHT (PANORAMA)
    -- ==========================================
    f.detailImage = f.detailFrame:CreateTexture(nil, "ARTWORK")
    f.detailImage:SetSize(580, 180) -- Breites Panorama-Format
    f.detailImage:SetPoint("TOP", f.detailFrame, "TOP", 0, -70) -- Mittig zentriert
    f.detailImage:SetTexCoord(0, 1, 0.15, 0.85) -- Schneidet 15% oben/unten ab für den ultimativen Kino-Look
    f.detailImage:Hide()
    
    -- Ein eleganter Gold-Rahmen für das Bild
    f.detailImageBorder = CreateFrame("Frame", nil, f.detailFrame, "BackdropTemplate")
    f.detailImageBorder:SetPoint("TOPLEFT", f.detailImage, "TOPLEFT", -2, 2)
    f.detailImageBorder:SetPoint("BOTTOMRIGHT", f.detailImage, "BOTTOMRIGHT", 2, -2)
    f.detailImageBorder:SetBackdrop({
        edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border",
        edgeSize = 12,
    })
    f.detailImageBorder:SetBackdropBorderColor(1, 0.78, 0.1, 0.8)
    f.detailImageBorder:Hide()


    f.detailModel = CreateFrame("PlayerModel", nil, f.detailFrame)
    f.detailModel:SetSize(280, 400)
    f.detailModel:SetPoint("TOPLEFT", f.detailFrame, "TOPLEFT", 10, -80)
    f.detailModel:Hide() 
    
    f.detailModel.bg = f.detailModel:CreateTexture(nil, "BACKGROUND")
    f.detailModel.bg:SetAllPoints()
    f.detailModel.bg:SetColorTexture(1, 0.78, 0.1, 0.03)
    
    f.detailModel.border = f.detailModel:CreateTexture(nil, "BORDER")
    f.detailModel.border:SetAllPoints()
    f.detailModel.border:SetAtlas("UI-Frame-Oribos-PortraitFrame", true)
    f.detailModel.border:SetBlendMode("ADD")
    f.detailModel.border:SetAlpha(0.2)
    
    f.detailModel:EnableMouse(true)
    f.detailModel:EnableMouseWheel(true)
    f.detailModel:SetScript("OnMouseWheel", function(self, delta)
        local zoom = self.zoomLevel or 1.0
        zoom = zoom - (delta * 0.15)
        if zoom < 0.2 then zoom = 0.2 end
        if zoom > 3.0 then zoom = 3.0 end
        self:SetCamDistanceScale(zoom)
        self.zoomLevel = zoom
    end)
    f.detailModel:SetScript("OnMouseDown", function(self, button)
        if button == "LeftButton" then
            self.isRotating = true
            self.lastX, self.lastY = GetCursorPosition()
        elseif button == "RightButton" then
            self.isPanning = true
            self.lastX, self.lastY = GetCursorPosition()
        end
    end)
    f.detailModel:SetScript("OnMouseUp", function(self, button)
        if button == "LeftButton" then self.isRotating = false end
        if button == "RightButton" then self.isPanning = false end
    end)
    f.detailModel:SetScript("OnHide", function(self)
        self.isRotating = false
        self.isPanning = false
    end)
    f.detailModel:SetScript("OnUpdate", function(self)
        local x, y = GetCursorPosition()
        if self.isRotating then
            local diff = (x - self.lastX) * 0.01
            self.lastX = x
            self:SetFacing((self:GetFacing() or 0) + diff)
        elseif self.isPanning then
            local diffX = (x - self.lastX) * 0.01
            local diffY = (y - self.lastY) * 0.01
            self.lastX = x
            self.lastY = y
            self.posY = (self.posY or 0) + diffX
            self.posZ = (self.posZ or 0) + diffY
            self:SetPosition(self.posX or 0, self.posY, self.posZ)
        end
    end)

    f.startPage = CreateFrame("Frame", nil, f.detailFrame)
    f.startPage:SetAllPoints()

    -- 1. HEADER: Das Logo (isoliert)
    f.startPage.logo = f.startPage:CreateTexture(nil, "ARTWORK")
    f.startPage.logo:SetSize(140, 140) 
    f.startPage.logo:SetPoint("TOP", f.startPage, "TOP", 0, -20)
    f.startPage.logo:SetTexture("Interface\\AddOns\\IMAGO\\Media\\Logo.tga")

    -- Horizontale Trennlinie, um das Logo vom Rest der Daten abzuschneiden
    f.startPage.logoLine = f.startPage:CreateTexture(nil, "ARTWORK")
    f.startPage.logoLine:SetSize(400, 1)
    f.startPage.logoLine:SetPoint("TOP", f.startPage.logo, "BOTTOM", 0, -5)
    f.startPage.logoLine:SetTexture("Interface\\ChatFrame\\ChatFrameBackground")
    f.startPage.logoLine:SetGradient("HORIZONTAL", CreateColor(1.0, 0.85, 0.1, 0), CreateColor(1.0, 0.85, 0.1, 0.5), CreateColor(1.0, 0.85, 0.1, 0))

    -- 2. HERO SECTION: Der aktuelle Rang
    f.startPage.rankLabel = f.startPage:CreateFontString(nil, "OVERLAY")
    f.startPage.rankLabel:SetFont(FONT_BODY, 13)
    f.startPage.rankLabel:SetPoint("TOP", f.startPage.logoLine, "BOTTOM", 0, -25)
    f.startPage.rankLabel:SetTextColor(0.8, 0.7, 0.5)

    f.startPage.rankName = f.startPage:CreateFontString(nil, "OVERLAY")
    f.startPage.rankName:SetFont(FONT_TITLE, 36, "OUTLINE")
    f.startPage.rankName:SetPoint("TOP", f.startPage.rankLabel, "BOTTOM", 0, -5)
    f.startPage.rankName:SetTextColor(1.0, 0.85, 0.1)
    f.startPage.rankName:SetShadowColor(0, 0, 0, 1)
    f.startPage.rankName:SetShadowOffset(2, -2)

    -- 3. ZWEI-SPALTEN-LAYOUT: Die Meilensteine
    -- Vertikale Trennlinie in der Mitte
    f.startPage.vLine = f.startPage:CreateTexture(nil, "ARTWORK")
    f.startPage.vLine:SetSize(1, 200)
    f.startPage.vLine:SetPoint("TOP", f.startPage.rankName, "BOTTOM", 0, -35)
    f.startPage.vLine:SetTexture("Interface\\ChatFrame\\ChatFrameBackground")
    f.startPage.vLine:SetGradient("VERTICAL", CreateColor(1.0, 0.85, 0.1, 0.3), CreateColor(1.0, 0.85, 0.1, 0))

    -- LINKE SPALTE (Erreichtes - Rechtsbündig ausgerichtet)
    f.startPage.completedLabel = f.startPage:CreateFontString(nil, "OVERLAY")
    f.startPage.completedLabel:SetFont(FONT_BODY, 14, "OUTLINE")
    f.startPage.completedLabel:SetPoint("TOPRIGHT", f.startPage.vLine, "TOPLEFT", -20, 0)
    f.startPage.completedLabel:SetTextColor(1.0, 0.85, 0.1)

    f.startPage.completedMilestones = f.startPage:CreateFontString(nil, "OVERLAY")
    f.startPage.completedMilestones:SetFont(FONT_BODY, 12)
    f.startPage.completedMilestones:SetPoint("TOPRIGHT", f.startPage.completedLabel, "BOTTOMRIGHT", 0, -10)
    f.startPage.completedMilestones:SetJustifyH("RIGHT")
    f.startPage.completedMilestones:SetSpacing(8)

    -- RECHTE SPALTE (Verborgenes - Linksbündig ausgerichtet)
    f.startPage.nextLabel = f.startPage:CreateFontString(nil, "OVERLAY")
    f.startPage.nextLabel:SetFont(FONT_BODY, 14, "OUTLINE")
    f.startPage.nextLabel:SetPoint("TOPLEFT", f.startPage.vLine, "TOPRIGHT", 20, 0)
    f.startPage.nextLabel:SetTextColor(0.5, 0.5, 0.5)

    f.startPage.milestones = f.startPage:CreateFontString(nil, "OVERLAY")
    f.startPage.milestones:SetFont(FONT_BODY, 12)
    f.startPage.milestones:SetPoint("TOPLEFT", f.startPage.nextLabel, "BOTTOMLEFT", 0, -10)
    f.startPage.milestones:SetJustifyH("LEFT")
    f.startPage.milestones:SetSpacing(8)

    f.hintPage = CreateFrame("Frame", nil, f.detailFrame)
    f.hintPage:SetAllPoints()
    f.hintPage:Hide()

    -- 1. Ein unsichtbarer Ankerpunkt, an TOP orientiert mit 100px Abstand nach unten
    f.hintPage.centerAnchor = CreateFrame("Frame", nil, f.hintPage)
    f.hintPage.centerAnchor:SetPoint("TOP", f.detailFrame, "TOP", 0, -200)
    f.hintPage.centerAnchor:SetSize(1, 1)

    -- 2. Die Void-Aura (Pulsierend, im Hintergrund)
    f.hintPage.aura = f.hintPage:CreateTexture(nil, "BACKGROUND")
    f.hintPage.aura:SetSize(300, 300) -- Etwas größer als das Original
    f.hintPage.aura:SetPoint("CENTER", f.hintPage.centerAnchor, "CENTER", 0, 0)
    f.hintPage.aura:SetTexture("Interface\\AddOns\\IMAGO\\Media\\undiscovered.tga") 
    f.hintPage.aura:SetVertexColor(0.6, 0.2, 1.0) -- Magisches Void-Lila

    local agAura = f.hintPage.aura:CreateAnimationGroup()
    local fadeOut = agAura:CreateAnimation("Alpha")
    fadeOut:SetFromAlpha(0.8)
    fadeOut:SetToAlpha(0.2)
    fadeOut:SetDuration(2.5) -- Atmet langsam aus
    fadeOut:SetOrder(1)
    fadeOut:SetSmoothing("IN_OUT")
    local fadeIn = agAura:CreateAnimation("Alpha")
    fadeIn:SetFromAlpha(0.2)
    fadeIn:SetToAlpha(0.8)
    fadeIn:SetDuration(2.5) -- Atmet langsam ein
    fadeIn:SetOrder(2)
    fadeIn:SetSmoothing("IN_OUT")
    agAura:SetLooping("REPEAT")
    agAura:Play()

    -- 3. Die Void-Silhouette (Statisch, fest verankert)
    f.hintPage.icon = f.hintPage:CreateTexture(nil, "ARTWORK")
    f.hintPage.icon:SetSize(250, 250) 
    f.hintPage.icon:SetPoint("CENTER", f.hintPage.centerAnchor, "CENTER", 0, 0)
    f.hintPage.icon:SetTexture("Interface\\AddOns\\IMAGO\\Media\\undiscovered.tga")
    -- Reduziert die Deckkraft auf 75%, damit es geisterhafter wirkt
    f.hintPage.icon:SetAlpha(0.4)

    -- 4. Der Warn-Text (Fließt jetzt wieder sauber unter dem Icon mit)
    f.hintPage.warning = f.hintPage:CreateFontString(nil, "OVERLAY")
    f.hintPage.warning:SetFont(FONT_BODY, 15, "OUTLINE")
    f.hintPage.warning:SetPoint("TOP", f.hintPage.icon, "BOTTOM", 0, -20)
    f.hintPage.warning:SetTextColor(0.8, 0.2, 0.2)
    f.hintPage.warning:SetText(IMAGO.L["HINT_IDENTITY_HIDDEN"])

    -- 5. Die Beschreibung
    f.hintPage.desc = f.hintPage:CreateFontString(nil, "OVERLAY")
    f.hintPage.desc:SetFont(FONT_BODY, 14, "")
    f.hintPage.desc:SetPoint("TOP", f.hintPage.warning, "BOTTOM", 0, -15)
    f.hintPage.desc:SetWidth(400)
    f.hintPage.desc:SetJustifyH("CENTER")
    f.hintPage.desc:SetTextColor(0.9, 0.9, 0.9)
    f.hintPage.desc:SetSpacing(6)

    f.footer = CreateFrame("Frame", nil, f.detailFrame)
    f.footer:SetSize(620, 80)
    f.footer:SetPoint("BOTTOM", f.detailFrame, "BOTTOM", 0, 0)

    f.footer.hLine = f.footer:CreateTexture(nil, "ARTWORK")
    f.footer.hLine:SetSize(620, 1)
    f.footer.hLine:SetPoint("TOP", f.footer, "TOP", 0, 0)
    f.footer.hLine:SetTexture("Interface\\ChatFrame\\ChatFrameBackground")
    f.footer.hLine:SetGradient("HORIZONTAL", CreateColor(1, 0.78, 0.1, 0), CreateColor(1, 0.78, 0.1, 0.5), CreateColor(1, 0.78, 0.1, 0))

    f.footer.rankText = f.footer:CreateFontString(nil, "OVERLAY")
    f.footer.rankText:SetFont(FONT_TITLE, 14, "OUTLINE")
    f.footer.rankText:SetPoint("TOP", f.footer, "TOP", 0, -15)
    f.footer.rankText:SetTextColor(1.0, 0.85, 0.1)

    f.footer.progText = f.footer:CreateFontString(nil, "OVERLAY")
    f.footer.progText:SetFont(FONT_BODY, 11, "OUTLINE")
    f.footer.progText:SetPoint("TOP", f.footer.rankText, "BOTTOM", 0, -2)
    f.footer.progText:SetTextColor(0.8, 0.7, 0.5, 0.8)
    
    f.footer.bar = CreateFrame("StatusBar", nil, f.footer, "BackdropTemplate")
    f.footer.bar:SetSize(580, 16)
    f.footer.bar:SetPoint("BOTTOM", f.footer, "BOTTOM", 0, 15)
    f.footer.bar:SetStatusBarTexture("Interface\\TargetingFrame\\UI-StatusBar")
    f.footer.bar:GetStatusBarTexture():SetColorTexture(1, 0.78, 0.1, 0.7)
    f.footer.bar:SetMinMaxValues(0, 100)
    f.footer.bar:SetValue(0)
    
    f.footer.bar.bg = f.footer.bar:CreateTexture(nil, "BACKGROUND")
    f.footer.bar.bg:SetAllPoints()
    f.footer.bar.bg:SetColorTexture(0.1, 0.1, 0.1, 0.8)

    for i = 1, 9 do
        local tick = f.footer.bar:CreateTexture(nil, "OVERLAY")
        tick:SetColorTexture(0, 0, 0, 0.9)
        tick:SetSize(2, 16)
        tick:SetPoint("LEFT", f.footer.bar, "LEFT", 580 * (i / 10), 0)
    end
    
    f.footer.bar.border = CreateFrame("Frame", nil, f.footer.bar, "BackdropTemplate")
    f.footer.bar.border:SetPoint("TOPLEFT", f.footer.bar, "TOPLEFT", -4, 4)
    f.footer.bar.border:SetPoint("BOTTOMRIGHT", f.footer.bar, "BOTTOMRIGHT", 4, -4)
    f.footer.bar.border:SetBackdrop({
        edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border",
        edgeSize = 12,
    })
    f.footer.bar.border:SetBackdropBorderColor(1, 0.78, 0.1, 0.5)

-- ==-- ==========================================
    -- NEU: HAUPT-REITER (BOTTOM TABS) LOKALISIERT
    -- ==========================================
    f.numTabs = 4
    local locale = GetLocale()
    local tabNames = {IMAGO.L["TAB_FATES"], IMAGO.L["TAB_ZONES"], IMAGO.L["TAB_INSTANCES"], IMAGO.L["TAB_CREDITS"]}
    
    for i, name in ipairs(tabNames) do
        local tab = CreateFrame("Button", f:GetName().."Tab"..i, f, "PanelTabButtonTemplate")
        tab:SetText(name)
        
        -- Zwingt das Tab, sich elegant an die Textlänge anzupassen
        PanelTemplates_TabResize(tab, 0)
        
        if i == 1 then
            tab:SetPoint("TOPLEFT", f, "BOTTOMLEFT", 15, 2)
        else
            tab:SetPoint("LEFT", _G[f:GetName().."Tab"..(i-1)], "RIGHT", 0, 0) 
        end
        
        tab:SetScript("OnClick", function()
            IMAGO.Chronicle.SelectMainTab(i)
            if SOUNDKIT and SOUNDKIT.IG_CHARACTER_INFO_TAB then PlaySound(SOUNDKIT.IG_CHARACTER_INFO_TAB) end
        end)
    end

    -- ==========================================
    -- NEU: DER "COMING SOON" SCREEN
    -- ==========================================
    f.comingSoonPage = CreateFrame("Frame", nil, f)
    f.comingSoonPage:SetAllPoints()
    f.comingSoonPage:Hide()

    f.comingSoonPage.bg = f.comingSoonPage:CreateTexture(nil, "BACKGROUND")
    f.comingSoonPage.bg:SetAllPoints()
    f.comingSoonPage.bg:SetColorTexture(0.04, 0.04, 0.04, 0.98)

    f.comingSoonPage.icon = f.comingSoonPage:CreateTexture(nil, "ARTWORK")
    f.comingSoonPage.icon:SetSize(250, 250)
    f.comingSoonPage.icon:SetPoint("TOP", 0, -100)
    f.comingSoonPage.icon:SetTexture("Interface\\AddOns\\IMAGO\\Media\\Logo.tga")
    f.comingSoonPage.icon:SetAlpha(0.1)
    f.comingSoonPage.icon:SetDesaturated(true)

    f.comingSoonPage.title = f.comingSoonPage:CreateFontString(nil, "OVERLAY")
    f.comingSoonPage.title:SetFont(FONT_TITLE, 36, "OUTLINE")
    f.comingSoonPage.title:SetPoint("CENTER", 0, -30)
    f.comingSoonPage.title:SetTextColor(1.0, 0.85, 0.1)
    f.comingSoonPage.title:SetShadowColor(0, 0, 0, 1)
    f.comingSoonPage.title:SetShadowOffset(2, -2)

    f.comingSoonPage.desc = f.comingSoonPage:CreateFontString(nil, "OVERLAY")
    f.comingSoonPage.desc:SetFont(FONT_BODY, 15, "")
    f.comingSoonPage.desc:SetPoint("TOP", f.comingSoonPage.title, "BOTTOM", 0, -20)
    f.comingSoonPage.desc:SetTextColor(0.6, 0.6, 0.6)
    f.comingSoonPage.desc:SetJustifyH("CENTER")
    f.comingSoonPage.desc:SetSpacing(8)

    -- ==========================================
    -- NEU: LOGIK ZUM WECHSELN DER TABS (LOKALISIERT)
    -- ==========================================
    function IMAGO.Chronicle.SelectMainTab(index)
        PanelTemplates_SetTab(f, index) 
        f.activeTabIndex = index 
        
        -- RESET: Alles auf der rechten Seite SICHER verstecken
        if f.detailTitle then f.detailTitle:Hide() end
        if f.detailLineLeft then f.detailLineLeft:Hide() end
        if f.detailLineRight then f.detailLineRight:Hide() end
        if f.tabLore then f.tabLore:Hide() end
        if f.tabTime then f.tabTime:Hide() end
        if f.infoScroll then f.infoScroll:Hide() end
        if f.detailModel then f.detailModel:Hide() end
        if f.factionIcon then f.factionIcon:Hide() end
        if f.hintPage then f.hintPage:Hide() end
        if f.startPage then f.startPage:Hide() end
        if f.detailImage then f.detailImage:Hide() end
        if f.detailImageBorder then f.detailImageBorder:Hide() end -- NEU: Rahmen verstecken
        if f.detailSeparator then f.detailSeparator:Hide() end
        
        if f.detailImage then f.detailImage:Hide() end
        if f.detailImageBorder then f.detailImageBorder:Hide() end
        if f.detailSeparator then f.detailSeparator:Hide() end
        if f.creditsPage then f.creditsPage:Hide() end
        if f.creditsHeader then f.creditsHeader:Hide() end
        
        if index == 1 or index == 2 then
            -- Haupt-UI anzeigen
            f.searchBox:SetShown(index == 1)
            f.filterBtn:SetShown(index == 1)
            f.scrollFrame:Show()
            f.detailFrame:Show()
            f.vLine:Show()
            f.comingSoonPage:Hide()
            
            IMAGO.Chronicle.UpdateList()
            
            -- Dashboard anzeigen, wenn ein Tab gewechselt wird
            if f.ShowDashboard then 
                f.ShowDashboard() 
            end
        elseif index == 3 then
            -- Haupt-UI verstecken (Für Instanzen-Tab 3)
            f.searchBox:Hide()
            f.filterBtn:Hide()
            f.scrollFrame:Hide()
            f.detailFrame:Hide()
            f.vLine:Hide()
            
            f.comingSoonPage.title:SetText(IMAGO.L["COMING_SOON_INSTANCES_TITLE"])
            f.comingSoonPage.desc:SetText(IMAGO.L["COMING_SOON_INSTANCES_DESC"])
            f.comingSoonPage:Show()
        elseif index == 4 then
            -- Credits-Tab
            f.searchBox:Hide()
            f.filterBtn:Hide()
            f.scrollFrame:Hide()
            f.detailFrame:Hide()
            f.vLine:Hide()
            f.comingSoonPage:Hide()
            
            if not f.creditsPage then
                -- Statischer Header-Bereich (nicht scrollbar)
                f.creditsHeader = CreateFrame("Frame", nil, f)
                f.creditsHeader:SetSize(f:GetWidth(), 250)
                f.creditsHeader:SetPoint("TOP", f, "TOP", 0, 0)

                f.creditsHeader.logo = f.creditsHeader:CreateTexture(nil, "ARTWORK")
                f.creditsHeader.logo:SetSize(100, 100)
                f.creditsHeader.logo:SetPoint("TOP", 0, -85) -- Weiter nach unten versetzt
                f.creditsHeader.logo:SetTexture("Interface\\AddOns\\IMAGO\\Media\\Logo.tga")

                f.creditsHeader.title = f.creditsHeader:CreateFontString(nil, "OVERLAY")
                f.creditsHeader.title:SetFont(FONT_TITLE, 28, "OUTLINE")
                f.creditsHeader.title:SetPoint("TOP", f.creditsHeader.logo, "BOTTOM", 0, -5)
                f.creditsHeader.title:SetText(IMAGO.L["CREDITS_TITLE"])
                f.creditsHeader.title:SetTextColor(1.0, 0.85, 0.1)

                f.creditsHeader.desc = f.creditsHeader:CreateFontString(nil, "OVERLAY")
                f.creditsHeader.desc:SetFont(FONT_BODY, 13, "")
                f.creditsHeader.desc:SetPoint("TOP", f.creditsHeader.title, "BOTTOM", 0, -10)
                f.creditsHeader.desc:SetWidth(550)
                f.creditsHeader.desc:SetText(IMAGO.L["CREDITS_DESC"])
                f.creditsHeader.desc:SetTextColor(0.8, 0.7, 0.5)
                f.creditsHeader.desc:SetJustifyH("CENTER")

                f.creditsHeader.topHint = f.creditsHeader:CreateFontString(nil, "OVERLAY")
                f.creditsHeader.topHint:SetFont(FONT_BODY, 12, "ITALIC")
                f.creditsHeader.topHint:SetPoint("TOP", f.creditsHeader.desc, "BOTTOM", 0, -10)
                f.creditsHeader.topHint:SetWidth(500)
                f.creditsHeader.topHint:SetText(IMAGO.L["CREDITS_TOP_HINT"])
                f.creditsHeader.topHint:SetTextColor(0.6, 0.6, 0.6)
                f.creditsHeader.topHint:SetJustifyH("CENTER")

                -- Elegante goldene Trennlinie (Gradient)
                f.creditsHeader.separator = f.creditsHeader:CreateTexture(nil, "ARTWORK")
                f.creditsHeader.separator:SetSize(400, 1)
                f.creditsHeader.separator:SetPoint("TOP", f.creditsHeader.topHint, "BOTTOM", 0, -20)
                f.creditsHeader.separator:SetTexture("Interface\\ChatFrame\\ChatFrameBackground")
                f.creditsHeader.separator:SetGradient("HORIZONTAL", CreateColor(1.0, 0.85, 0.1, 0), CreateColor(1.0, 0.85, 0.1, 0.4), CreateColor(1.0, 0.85, 0.1, 0))

                -- Nur die Namensliste ist scrollbar
                f.creditsPage = CreateFrame("ScrollFrame", "IMAGOCreditsScrollFrame", f, "UIPanelScrollFrameTemplate")
                f.creditsPage:SetPoint("TOPLEFT", f.creditsHeader, "BOTTOMLEFT", 0, -40) -- Von -10 auf -40 erhöht
                f.creditsPage:SetPoint("BOTTOMRIGHT", f, "BOTTOMRIGHT", 0, 50)
                
                local content = CreateFrame("Frame", nil, f.creditsPage)
                content:SetSize(f:GetWidth(), 1) -- Volle Breite für perfekte Zentrierung
                f.creditsPage:SetScrollChild(content)
                f.creditsPage.content = content

                -- Scrollbar Styling & Positionierung
                if _G[f.creditsPage:GetName().."ScrollBar"] then
                    local sb = _G[f.creditsPage:GetName().."ScrollBar"]
                    sb:ClearAllPoints()
                    sb:SetPoint("TOPRIGHT", f.creditsPage, "TOPRIGHT", -15, 0) -- Scrollbar bündig oben
                    sb:SetPoint("BOTTOMRIGHT", f.creditsPage, "BOTTOMRIGHT", -15, 0)
                    sb:SetWidth(10)
                    for _, res in ipairs({sb:GetRegions()}) do
                        if res:IsObjectType("Texture") then res:SetVertexColor(0.5, 0.5, 0.5, 0.5) end
                    end
                end

                local contributors = {
                    {name = "Austin", roles = "Archivist, Lore Scribe", top = true},
                    {name = "Cadash", roles = "Lore Scribe, Translator", top = true},
                    {name = "druidian", roles = "Archivist, Lore Scribe", top = true},
                    {name = "Minorou", roles = "Lore Scribe", top = true},
                    {name = "Elanor", roles = "Data Miner, Translator", top = true},
                    {name = "Kittywulfe", roles = "Tester"},
                    {name = "MortiousPrime", roles = "Archivist, Lore Scribe, Data Miner"},
                    {name = "Moshwan", roles = "Archivist"},
                    {name = "Duschgell", roles = "Archivist"},
                    {name = "Lemurensohn", roles = "Archivist, Translator"},
                    {name = "Karstan", roles = "Lore Scribe, Translator"},
                    {name = "Spibe", roles = "Lore Scribe"},
                    {name = "Riknar", roles = "Lore Scribe"},
                    {name = "Saljourn", roles = "Lore Scribe, Data Miner"},
                    {name = "zelkaris", roles = "Lore Scribe, Data Miner, Lua Developer"},
                    {name = "Nihilea", roles = "Data Miner, Translator"},
                    {name = "Remu", roles = "Data Miner, Translator"},
                    {name = "MayaWoW", roles = "Data Miner, Translator"},
                    {name = "ALI4S", roles = "Lua Developer"},
                    {name = "johnnyd2", roles = "Tester"},
                }

                local yOffset = -40 -- Mehr Platz nach der Trennlinie
                local spacing = 25
                for i, person in ipairs(contributors) do
                    local entry = content:CreateFontString(nil, "OVERLAY")
                    
                    if person.top then
                        -- Edles Gold für Top-Mitglieder
                        entry:SetFont(FONT_BODY, 16, "OUTLINE")
                        entry:SetText(string.format("|cFFFFD700%s|r  |cFFD4AF37(%s)|r", person.name, person.roles))
                    else
                        -- Dezentes Silber für alle anderen
                        entry:SetFont(FONT_BODY, 14, "")
                        entry:SetText(string.format("|cFFC0C0C0%s|r  |cFF888888(%s)|r", person.name, person.roles))
                    end
                    
                    entry:SetPoint("TOP", content, "TOP", 0, yOffset)
                    yOffset = yOffset - (person.top and 30 or spacing)
                end
                content:SetHeight(math.abs(yOffset) + 20)
            end
            if f.creditsHeader then f.creditsHeader:Show() end
            f.creditsPage:Show()
        end
    end

    local function ApplyOpaqueUI()
        local opaque = IMAGOSaved and IMAGOSaved.opaqueUI
        f:SetBackdrop(opaque and backdropOpaque or backdropDefault)
        f:SetBackdropColor(0.05, 0.05, 0.05, opaque and 1.0 or 0.95)
        f:SetBackdropBorderColor(1.0, 0.85, 0.1, 0.9)
        if f.headerBg then
            if opaque then
                f.headerBg:SetGradient("VERTICAL", CreateColor(0, 0, 0, 1), CreateColor(0, 0, 0, 1))
            else
                f.headerBg:SetGradient("VERTICAL", CreateColor(0, 0, 0, 0.7), CreateColor(0, 0, 0, 0))
            end
        end
        if f.filterMenu then
            f.filterMenu:SetBackdrop(opaque and backdropOpaque or backdropDefault)
            f.filterMenu:SetBackdropColor(0.05, 0.05, 0.05, opaque and 1.0 or 0.98)
            f.filterMenu:SetBackdropBorderColor(1, 0.78, 0.1, 0.9)
        end
        if f.detailFrame then
            f.detailFrame:SetBackdrop(opaque and backdropOpaque or backdropDefault)
            f.detailFrame:SetBackdropColor(0.05, 0.05, 0.05, opaque and 1.0 or 0.95)
            f.detailFrame:SetBackdropBorderColor(1, 0.78, 0.1, 0.9)
        end
    end

    f:SetScript("OnShow", ApplyOpaqueUI)

    IMAGO.Chronicle.frame = f
    IMAGO.Chronicle.buttons = {}
    IMAGO.Chronicle.headers = {}

f.ShowDashboard = function()
        f.detailTitle:Hide()
        f.detailLineLeft:Hide()
        f.detailLineRight:Hide()
        f.tabLore:Hide()
        f.tabTime:Hide()
        f.infoScroll:Hide()
        f.detailModel:Hide()
        f.hintPage:Hide() 
        f.factionIcon:Hide()
        if f.detailImage then f.detailImage:Hide() end
        if f.detailImageBorder then f.detailImageBorder:Hide() end
        if f.detailSeparator then f.detailSeparator:Hide() end
        f.startPage:Show()
    end

    local function ShowTab(mode)
        f.loreBody:Hide()
        if f.timelineContainer then f.timelineContainer:Hide() end
        if f.detailImage then f.detailImage:Hide() end
        if f.detailImageBorder then f.detailImageBorder:Hide() end
        if f.detailSeparator then f.detailSeparator:Hide() end
        
        f.tabLore.text:SetTextColor(0.5, 0.5, 0.5)
        f.tabLore.activeLine:Hide()
        f.tabTime.text:SetTextColor(0.5, 0.5, 0.5)
        f.tabTime.activeLine:Hide()

        f.infoScroll:ClearAllPoints()
        f.infoScroll:SetPoint("TOPLEFT", f.detailFrame, "TOPLEFT", 310, -115)
        f.infoScroll:SetPoint("BOTTOMRIGHT", f.detailFrame, "BOTTOMRIGHT", -15, 100)
        f.loreBody:SetWidth(290)

        if mode == "lore" then 
            f.loreBody:Show()
            f.tabLore.text:SetTextColor(1.0, 0.85, 0.1)
            f.tabLore.activeLine:Show()
        else 
            IMAGO.Chronicle.RenderTimeline() 
            f.tabTime.text:SetTextColor(1.0, 0.85, 0.1)
            f.tabTime.activeLine:Show()
        end
    end

    f.tabLore:SetScript("OnClick", function() ShowTab("lore") end)
    f.tabTime:SetScript("OnClick", function() ShowTab("time") end)
    f.ShowTab = ShowTab
    IMAGO.Chronicle.SelectMainTab(1)
end

function IMAGO.Chronicle.RenderTimeline()
    local f = IMAGO.Chronicle.frame
    local data = f.selectedNPC
    if not data or not data.timeline then return end

    if not f.timelineContainer then 
        f.timelineContainer = CreateFrame("Frame", nil, f.infoContent)
        f.timelineContainer:SetPoint("TOPLEFT")
        f.timelineContainer:SetSize(320, 1) 
        f.timelineContainer.eras = {}
        f.timelineContainer.texts = {}
    end
    f.timelineContainer:Show()
    
    for _, fs in ipairs(f.timelineContainer.eras) do fs:Hide() end
    for _, fs in ipairs(f.timelineContainer.texts) do fs:Hide() end
    
    local y = 0
    local locale = GetLocale()

    for i, entry in ipairs(data.timeline) do
        local era = f.timelineContainer.eras[i]
        if not era then
            era = f.timelineContainer:CreateFontString(nil, "OVERLAY")
            era:SetFont(FONT_BODY, 13, "OUTLINE")
            f.timelineContainer.eras[i] = era
        end
        
        local col = eraColors[entry.era] or {1, 1, 1}
        era:SetTextColor(unpack(col))
        era:SetPoint("TOPLEFT", 0, -y)
        era:SetText("[" .. entry.era .. "]")
        era:Show()
        
        local txt = f.timelineContainer.texts[i]
        if not txt then
            txt = f.timelineContainer:CreateFontString(nil, "OVERLAY")
            txt:SetFont(FONT_BODY, 14, "")
            txt:SetWidth(230)
            txt:SetJustifyH("LEFT")
            txt:SetTextColor(0.9, 0.9, 0.9)
            txt:SetSpacing(4)
            f.timelineContainer.texts[i] = txt
        end
        
        txt:SetPoint("TOPLEFT", 80, -y)
        txt:SetText(entry["text_" .. DB_LOCALE])
        txt:Show()
        
        local textHeight = txt:GetStringHeight()
        y = y + math.max(20, textHeight) + 18 
    end
    f.timelineContainer:SetHeight(y)
end

function IMAGO.Chronicle.UpdateList()
    local f = IMAGO.Chronicle.frame
    if not f then return end
    
    IMAGOSaved.favorites = IMAGOSaved.favorites or {}
    IMAGOSaved.history = IMAGOSaved.history or {}
    IMAGO.Chronicle.zoneButtons = IMAGO.Chronicle.zoneButtons or {}
    
    local locale = GetLocale()
    local activeTab = f.activeTabIndex or 1
    local yOffset = 0

    -- 1. Alles ausblenden, um einen sauberen Start zu garantieren
    for _, b in pairs(IMAGO.Chronicle.buttons or {}) do b:Hide() end
    for _, h in pairs(IMAGO.Chronicle.headers or {}) do h:Hide() end
    for _, zb in pairs(IMAGO.Chronicle.zoneButtons or {}) do zb:Hide() end
    if IMAGO.Chronicle.homeBtn then IMAGO.Chronicle.homeBtn:Hide() end

-- ============================================================
    -- CLEANUP: Versteckt Custom-Buttons, bevor neue Tabs laden
    -- ============================================================
    if IMAGO.Chronicle.zoneOverviewBtn then
        IMAGO.Chronicle.zoneOverviewBtn:Hide()
    end

    -- ============================================================
    -- TAB 1: NPCs / FATES
    -- ============================================================
    if activeTab == 1 then
        local searchString = f.searchBox:GetText():lower()
        local activeFilter = f.activeFilter or "ALL"
        
        local total, seen = 0, 0
        for slug, data in pairs(IMAGOdb.npcs) do
            total = total + 1
            if IMAGOSaved.seenNPCs[slug] then seen = seen + 1 end
        end

        local perc = total > 0 and (seen / total) * 100 or 0
        local rankTitle = IMAGO.Chronicle.ranks[1]["title_" .. DB_LOCALE]
        for _, r in ipairs(IMAGO.Chronicle.ranks) do 
            if perc >= r.perc then rankTitle = r["title_" .. DB_LOCALE] end 
        end

        f.footer.bar:SetValue(perc)
        f.footer.rankText:SetText(rankTitle)
        f.footer.progText:SetText(string.format(IMAGO.L["FOOTER_PROGRESS"], seen, total, math.floor(perc)))
        
        f.startPage.rankLabel:SetText(IMAGO.L["STARTPAGE_RANK"])
        f.startPage.completedLabel:SetText(IMAGO.L["STARTPAGE_COMPLETED"])
        f.startPage.nextLabel:SetText(IMAGO.L["STARTPAGE_NEXT"])
        f.startPage.rankName:SetText(rankTitle)
        
        local completedRanksStr, nextRanksStr = "", ""
        
        for _, r in ipairs(IMAGO.Chronicle.ranks) do
            local rTitle = r["title_" .. DB_LOCALE]
            if r.perc <= perc then
                completedRanksStr = completedRanksStr .. string.format("|cFFFFD700%s (%s %d%%)|r\n", rTitle, IMAGO.L["WORD_AT"], r.perc)
            else
                nextRanksStr = nextRanksStr .. string.format("|cFF888888%s (%s %d%%)|r\n", rTitle, IMAGO.L["WORD_AT"], r.perc)
            end
        end
        
        f.startPage.completedMilestones:SetText(completedRanksStr == "" and IMAGO.L["STARTPAGE_NO_MILESTONES"] or completedRanksStr)
        f.startPage.milestones:SetText(nextRanksStr == "" and IMAGO.L["STARTPAGE_MAX_REACHED"] or nextRanksStr)

        local categories = {}
        
        if activeFilter == "HIST" then
            local histCat = { list = {}, totalCat = 0, seenCat = 0 }
            for _, slug in ipairs(IMAGOSaved.history) do
                local data = IMAGOdb.npcs[slug]
                if data then
                    local name = data["displayName_" .. DB_LOCALE]
                    if searchString == "" or name:lower():find(searchString) then
                        table.insert(histCat.list, {slug = slug, data = data})
                        histCat.seenCat = histCat.seenCat + 1
                        histCat.totalCat = histCat.totalCat + 1
                    end
                end
            end
            if histCat.totalCat > 0 then
                local histTitle = IMAGO.L["FILTER_HIST"]
                categories[histTitle] = histCat
            end
        else
            for slug, data in pairs(IMAGOdb.npcs) do
                local isSeen = IMAGOSaved.seenNPCs[slug]
                local name = data["displayName_" .. DB_LOCALE]
                
                local matchesSearch = true
                if searchString ~= "" then
                    if isSeen then
                        if not name:lower():find(searchString) then matchesSearch = false end
                    else
                        local undiscoveredText = (IMAGO.L["UNDISCOVERED"] or "unentdeckt"):lower()
                        if not undiscoveredText:find(searchString) then matchesSearch = false end
                    end
                end
                
                local matchesFilter = true
                if activeFilter == "FAV" and not IMAGOSaved.favorites[slug] then matchesFilter = false end
                if activeFilter:find("CAT_") and data.category ~= activeFilter then matchesFilter = false end
                
                if matchesSearch and matchesFilter then
                    local cat = data.category or "CAT_ENIGMATIC"
                    if not categories[cat] then 
                        categories[cat] = { list = {}, totalCat = 0, seenCat = 0 } 
                    end
                    table.insert(categories[cat].list, {slug = slug, data = data})
                    categories[cat].totalCat = categories[cat].totalCat + 1
                    if isSeen then categories[cat].seenCat = categories[cat].seenCat + 1 end
                end
            end
        end

        local bIdx, hIdx = 1, 1
        
        if not IMAGO.Chronicle.homeBtn then
            local homeBtn = CreateFrame("Button", nil, f.content)
            homeBtn:SetSize(235, 35)
            homeBtn.bg = homeBtn:CreateTexture(nil, "BACKGROUND")
            homeBtn.bg:SetAllPoints()
            homeBtn.bg:SetColorTexture(1, 0.78, 0.1, 0.05)
            
            local hl = homeBtn:CreateTexture(nil, "HIGHLIGHT")
            hl:SetAllPoints()
            hl:SetColorTexture(1, 0.78, 0.1, 0.15)
            
            homeBtn.t = homeBtn:CreateFontString(nil, "OVERLAY")
            homeBtn.t:SetFont(FONT_TITLE, 15, "OUTLINE")
            homeBtn.t:SetPoint("CENTER", 0, 0)
            homeBtn.t:SetTextColor(1.0, 0.85, 0.1)
            
            homeBtn:SetScript("OnClick", function()
                f.selectedNPC = nil
                for _, b in pairs(IMAGO.Chronicle.buttons) do
                    if b.selected then b.selected:Hide() end
                end
                if f.ShowDashboard then f.ShowDashboard() end
            end)
            IMAGO.Chronicle.homeBtn = homeBtn
        end
        
        IMAGO.Chronicle.homeBtn.t:SetText(IMAGO.L["DASHBOARD_TITLE"])
        IMAGO.Chronicle.homeBtn:SetPoint("TOPLEFT", f.content, "TOPLEFT", 0, -yOffset)
        IMAGO.Chronicle.homeBtn:Show()
        yOffset = yOffset + 45

        local sortedCats = {}
        for k in pairs(categories) do table.insert(sortedCats, k) end
        table.sort(sortedCats)

        IMAGO.Chronicle.expandedCats = IMAGO.Chronicle.expandedCats or {}

        for _, catKey in ipairs(sortedCats) do
            local catData = categories[catKey]
            local npcs = catData.list
            local hdr = IMAGO.Chronicle.headers[hIdx]
            
            if not hdr then
                hdr = CreateFrame("Button", nil, f.content)
                hdr:SetSize(210, 26)
                
                hdr.bg = hdr:CreateTexture(nil, "BACKGROUND")
                hdr.bg:SetAllPoints()
                hdr.bg:SetTexture("Interface\\ChatFrame\\ChatFrameBackground")
                
                local hl = hdr:CreateTexture(nil, "HIGHLIGHT")
                hl:SetAllPoints()
                hl:SetTexture("Interface\\ChatFrame\\ChatFrameBackground")
                hl:SetGradient("HORIZONTAL", CreateColor(1.0, 0.85, 0.1, 0.3), CreateColor(0, 0, 0, 0))
                
                hdr.line = hdr:CreateTexture(nil, "ARTWORK")
                hdr.line:SetSize(210, 1)
                hdr.line:SetPoint("BOTTOM", 0, 0)
                hdr.line:SetTexture("Interface\\ChatFrame\\ChatFrameBackground")
                hdr.line:SetGradient("HORIZONTAL", CreateColor(1.0, 0.85, 0.1, 0.5), CreateColor(1.0, 0.85, 0.1, 0))
                
                hdr.icon = hdr:CreateFontString(nil, "OVERLAY")
                hdr.icon:SetFont(FONT_BODY, 14, "OUTLINE")
                hdr.icon:SetPoint("LEFT", 5, 0)
                
                hdr.t = hdr:CreateFontString(nil, "OVERLAY")
                hdr.t:SetFont(FONT_BODY, 12, "OUTLINE") 
                hdr.t:SetPoint("LEFT", 20, 0) 
                hdr.t:SetShadowColor(0, 0, 0, 1)
                hdr.t:SetShadowOffset(1, -1)

                hdr:SetScript("OnClick", function(self)
                    local cat = self.catKey
                    IMAGO.Chronicle.expandedCats[cat] = not IMAGO.Chronicle.expandedCats[cat]
                    if SOUNDKIT and SOUNDKIT.IG_MAINMENU_OPTION_CHECKBOX_ON then PlaySound(SOUNDKIT.IG_MAINMENU_OPTION_CHECKBOX_ON) end
                    IMAGO.Chronicle.UpdateList()
                end)

                IMAGO.Chronicle.headers[hIdx] = hdr
            end
            
            hdr.catKey = catKey
            
            if not IMAGO.Chronicle.expandedCats[catKey] then
                hdr.icon:SetText("+")
                hdr.icon:SetTextColor(1.0, 0.85, 0.1) 
                hdr.t:SetTextColor(0.7, 0.7, 0.7) 
                hdr.bg:SetGradient("HORIZONTAL", CreateColor(0.2, 0.2, 0.2, 0.5), CreateColor(0, 0, 0, 0))
            else
                hdr.icon:SetText("-")
                hdr.icon:SetTextColor(1.0, 0.85, 0.1)
                hdr.t:SetTextColor(1.0, 0.85, 0.1) 
                hdr.bg:SetGradient("HORIZONTAL", CreateColor(1.0, 0.85, 0.1, 0.2), CreateColor(1.0, 0.85, 0.1, 0))
            end
            
            hdr:SetPoint("TOPLEFT", f.content, "TOPLEFT", 0, -yOffset)
            local catName = IMAGO.L[catKey] or catKey
            if activeFilter == "HIST" then
                hdr.t:SetText(catName)
            else
                hdr.t:SetText(catName .. " (" .. catData.seenCat .. "/" .. catData.totalCat .. ")")
            end
            hdr:Show()
            
            yOffset = yOffset + 30
            hIdx = hIdx + 1

            if IMAGO.Chronicle.expandedCats[catKey] then
                if activeFilter ~= "HIST" then
                    table.sort(npcs, function(a, b) 
                        return a.data["displayName_" .. DB_LOCALE] < b.data["displayName_" .. DB_LOCALE]
                    end)
                end

                for _, npc in ipairs(npcs) do
                    local btn = IMAGO.Chronicle.buttons[bIdx]
                    if not btn then
                        btn = CreateFrame("Button", nil, f.content)
                        btn:SetSize(210, 35)
                        btn.bg = btn:CreateTexture(nil, "BACKGROUND")
                        btn.bg:SetAllPoints()
                        
                        btn.selected = btn:CreateTexture(nil, "ARTWORK")
                        btn.selected:SetAllPoints()
                        btn.selected:SetColorTexture(1, 0.78, 0.1, 0.15)
                        btn.selected:Hide()
                        
                        local hl = btn:CreateTexture(nil, "HIGHLIGHT")
                        hl:SetAllPoints()
                        hl:SetColorTexture(1, 0.78, 0.1, 0.1)

                        btn.fav = CreateFrame("Button", nil, btn)
                        btn.fav:SetSize(16, 16)
                        btn.fav:SetPoint("LEFT", btn, "LEFT", 8, 0)
                        btn.fav.icon = btn.fav:CreateTexture(nil, "OVERLAY")
                        btn.fav.icon:SetAllPoints()
                        btn.fav.icon:SetAtlas("collections-icon-favorites")
                        
                        btn.t = btn:CreateFontString(nil, "OVERLAY", "GameFontNormal")
                        btn.t:SetPoint("LEFT", btn.fav, "RIGHT", 4, 0)
                        btn.t:SetFont(FONT_BODY, 13, "")
                        btn.t:SetWidth(130)
                        btn.t:SetWordWrap(false)
                        btn.t:SetJustifyH("LEFT")

                        btn.newTag = btn:CreateFontString(nil, "OVERLAY")
                        btn.newTag:SetFont(FONT_BODY, 11, "OUTLINE")
                        btn.newTag:SetPoint("RIGHT", btn, "RIGHT", -5, 0)
                        btn.newTag:SetTextColor(1.0, 0.85, 0.1)
                        btn.newTag:SetText(IMAGO.L["TAG_NEW"])
                        local ag = btn.newTag:CreateAnimationGroup()
                        local anim = ag:CreateAnimation("Alpha")
                        anim:SetFromAlpha(0.4)
                        anim:SetToAlpha(1.0)
                        anim:SetDuration(1.2)
                        anim:SetOrder(1)
                        ag:SetLooping("BOUNCE")
                        ag:Play()
                        btn.newTag.ag = ag
                        
                        IMAGO.Chronicle.buttons[bIdx] = btn
                    end
                    
                    btn:SetPoint("TOPLEFT", f.content, "TOPLEFT", 0, -yOffset)
                    btn.npcSlug = npc.slug
                    btn._listScrollY = yOffset
                    btn.bg:SetColorTexture(1, 1, 1, (bIdx % 2 == 0 and 0.03 or 0))
                    
                    local isSeen = IMAGOSaved.seenNPCs[npc.slug]
                    local hasViewed = IMAGOSaved.viewedNPCs and IMAGOSaved.viewedNPCs[npc.slug]
                    local isFav = IMAGOSaved.favorites and IMAGOSaved.favorites[npc.slug]
                    
                    if isSeen then
                        btn.fav:Show()
                        if isFav then
                            btn.fav.icon:SetDesaturated(false)
                            btn.fav.icon:SetAlpha(1.0)
                        else
                            btn.fav.icon:SetDesaturated(true)
                            btn.fav.icon:SetAlpha(0.3)
                        end
                        
                        btn.fav:SetScript("OnClick", function()
                            IMAGOSaved.favorites[npc.slug] = not IMAGOSaved.favorites[npc.slug]
                            IMAGO.Chronicle.UpdateList()
                        end)
                    else
                        btn.fav:Hide()
                    end

                    local name = npc.data["displayName_" .. DB_LOCALE]
                    btn.t:SetText(isSeen and name or IMAGO.L["UNDISCOVERED"])
                    btn.t:SetTextColor(isSeen and 1 or 0.35, isSeen and 0.82 or 0.35, isSeen and 0 or 0.35)
                    
                    if isSeen and not hasViewed then
                        btn.newTag:Show()
                    else
                        btn.newTag:Hide()
                    end
                    
                    if f.selectedNPC and f.selectedNPC == npc.data then
                        btn.selected:Show()
                    else
                        btn.selected:Hide()
                    end
                    
                    btn:SetScript("OnClick", function()
                        if IsShiftKeyDown() and isSeen then
                            local linkText = string.format("|cFF9370DB[IMAGO: %s]|r", name)
                            local editBox = ChatEdit_ChooseBoxForSend()
                            if editBox then
                                editBox:Show()
                                editBox:SetFocus()
                                editBox:Insert(linkText)
                            end
                            return
                        end

                        f.startPage:Hide()
                        f.selectedNPC = npc.data
                        
                        for _, b in pairs(IMAGO.Chronicle.buttons) do
                            if b.selected then b.selected:Hide() end
                        end
                        btn.selected:Show()
                        
                        if isSeen then
                            f.hintPage:Hide()
                            
                            local function OpenLoreTab()
                                f.detailTitle:Show()
                                f.detailLineLeft:Show()
                                f.detailLineRight:Show()
                                f.tabLore:Show()
                                f.tabTime:Show()
                                f.infoScroll:Show()
                                f.detailModel:Show()
                                
                                local cat = npc.data.category or ""
                                if cat == "CAT_ALLIANCE" then
                                    f.factionIcon:SetTexture("Interface\\Timer\\Alliance-Logo")
                                    f.factionIcon:Show()
                                elseif cat == "CAT_HORDE" then
                                    f.factionIcon:SetTexture("Interface\\Timer\\Horde-Logo")
                                    f.factionIcon:Show()
                                else
                                    f.factionIcon:Hide()
                                end

                                f.detailTitle:SetText(name)
                                f.detailTitle:SetTextColor(1.0, 0.85, 0.1)
                                f.detailTitle:SetShadowColor(0, 0, 0, 1)
                                f.detailTitle:SetShadowOffset(2, -2)

                                f.loreBody:SetText(npc.data["lore_" .. DB_LOCALE])
                                
                                f.detailModel:ClearModel()
                                local modelID = GetValidModelID(npc.data)
                                if modelID then 
                                    f.detailModel:SetCreature(modelID)
                                    C_Timer.After(0.15, function()
                                        if f.detailModel:IsShown() then f.detailModel:SetCreature(modelID) end
                                    end)
                                end
                                
                                f.detailModel.zoomLevel = 1.0
                                f.detailModel.posX = 0
                                f.detailModel.posY = 0
                                f.detailModel.posZ = 0
                                f.detailModel:SetCamDistanceScale(1.0)
                                f.detailModel:SetPosition(0, 0, 0)
                                f.detailModel:SetFacing(0)
                                
                                btn.newTag:Hide()
                                f.ShowTab("lore")
                            end

                            IMAGOSaved.viewedNPCs = IMAGOSaved.viewedNPCs or {}
                            if not IMAGOSaved.viewedNPCs[npc.slug] then
                                IMAGOSaved.viewedNPCs[npc.slug] = true
                                f.detailTitle:Hide()
                                f.detailLineLeft:Hide()
                                f.detailLineRight:Hide()
                                f.tabLore:Hide()
                                f.tabTime:Hide()
                                f.infoScroll:Hide()
                                f.detailModel:Hide()
                                f.factionIcon:Hide()
                                IMAGO.Chronicle.ShowCinematic(npc.data, OpenLoreTab)
                            else
                                OpenLoreTab()
                            end
                        else
                            f.tabLore:Hide()
                            f.tabTime:Hide()
                            f.infoScroll:Hide()
                            f.detailModel:Hide()
                            f.factionIcon:Hide()
                            f.detailTitle:Show()
                            f.detailLineLeft:Show()
                            f.detailLineRight:Show()
                            f.hintPage:Show()
                            
                            -- NPC-PHANTOM: Aura wieder einschalten und Icon zurücksetzen
                            f.hintPage.aura:Show() -- HIER WIRD SIE WIEDER AKTIVIERT!
                            f.hintPage.warning:SetText(IMAGO.L["HINT_IDENTITY_HIDDEN"] or "IDENTITÄT VERBORGEN")
                            f.hintPage.icon:SetTexture("Interface\\AddOns\\IMAGO\\Media\\undiscovered.tga")
                            f.hintPage.icon:SetTexCoord(0, 1, 0, 1)
                            
                            f.detailTitle:SetText(GetCrypticName(name))
                            f.detailTitle:SetTextColor(0.4, 0.3, 0.5, 0.9) 
                            
                            local localZones = npc.data["zones_" .. DB_LOCALE]
                            if localZones and #localZones > 0 then
                                local zoneStr = table.concat(localZones, ", ")
                                f.hintPage.desc:SetText(string.format(IMAGO.L["HINT_SCOUTS"], zoneStr))
                            else
                                f.hintPage.desc:SetText(IMAGO.L["HINT_UNKNOWN_LOC"])
                            end
                        end
                    end) 
                    
                    btn:Show()
                    yOffset = yOffset + 35
                    bIdx = bIdx + 1
                end 
            end 
        end 

    -- ============================================================
    -- TAB 2: ZONEN DER ERINNERUNG
    -- ============================================================
elseif activeTab == 2 then
    local zIdx = 1
    local totalZones, seenZones = 0, 0

    for mapID, _ in pairs(IMAGOdb.zones or {}) do
        totalZones = totalZones + 1
        if IMAGOSaved.seenZones[mapID] then seenZones = seenZones + 1 end
    end

    local perc = totalZones > 0 and (seenZones / totalZones) * 100 or 0

    local rankTitle = IMAGO.Chronicle.zoneRanks[1]["title_" .. DB_LOCALE]
    for _, r in ipairs(IMAGO.Chronicle.zoneRanks) do 
        if perc >= r.perc then rankTitle = r["title_" .. DB_LOCALE] end 
    end

    f.footer.bar:SetValue(perc)
    f.footer.rankText:SetText(rankTitle)
    f.footer.progText:SetText(string.format(IMAGO.L["FOOTER_ZONES_PROGRESS"] or "%d / %d Zonen entdeckt (%d%%)", seenZones, totalZones, math.floor(perc)))

    f.startPage.rankLabel:SetText(IMAGO.L["STARTPAGE_ZONES_RANK"])
    f.startPage.rankName:SetText(rankTitle)
    f.startPage.completedLabel:SetText(IMAGO.L["STARTPAGE_COMPLETED"]) -- Wiederverwendung des existierenden Strings!
    f.startPage.nextLabel:SetText(IMAGO.L["STARTPAGE_ZONES_NEXT"])

    local completedRanksStr, nextRanksStr = "", ""
            
    for _, r in ipairs(IMAGO.Chronicle.zoneRanks) do
        local rTitle = r["title_" .. DB_LOCALE]
        if r.perc <= perc then
            completedRanksStr = completedRanksStr .. string.format("|cFFFFD700%s (%s %d%%)|r\n", rTitle, IMAGO.L["WORD_AT"], r.perc)
        else
            nextRanksStr = nextRanksStr .. string.format("|cFF888888%s (%s %d%%)|r\n", rTitle, IMAGO.L["WORD_AT"], r.perc)
        end
    end

    f.startPage.completedMilestones:SetText(completedRanksStr == "" and IMAGO.L["STARTPAGE_NO_MILESTONES"] or completedRanksStr)
    f.startPage.milestones:SetText(nextRanksStr == "" and "|cFF00FF00" .. (IMAGO.L["STARTPAGE_MAX_REACHED"] or "MAXIMALRANG ERREICHT!") .. "|r" or nextRanksStr)

    local sortedZones = {}
    for mapID, data in pairs(IMAGOdb.zones or {}) do 
        table.insert(sortedZones, {id = mapID, data = data}) 
    end
    table.sort(sortedZones, function(a, b) 
        return (a.data["name_" .. locale] or "") < (b.data["name_" .. locale] or "") 
    end)

-- ============================================================
        -- NEU: ÜBERSICHTS-BUTTON (ZURÜCK ZUM DASHBOARD)
        -- ============================================================
        local overviewBtn = IMAGO.Chronicle.zoneOverviewBtn
        if not overviewBtn then
            overviewBtn = CreateFrame("Button", nil, f.content)
            overviewBtn:SetSize(230, 40) -- Etwas schmaler in der Höhe als normale Zonen
            
            overviewBtn.bg = overviewBtn:CreateTexture(nil, "BACKGROUND")
            overviewBtn.bg:SetAllPoints()
            overviewBtn.bg:SetColorTexture(0.08, 0.08, 0.08, 0.9)
            
            local hl = overviewBtn:CreateTexture(nil, "HIGHLIGHT")
            hl:SetAllPoints()
            hl:SetColorTexture(1, 0.85, 0.1, 0.15)
            
            overviewBtn.t = overviewBtn:CreateFontString(nil, "OVERLAY")
            overviewBtn.t:SetFont(FONT_TITLE, 14, "OUTLINE")
            overviewBtn.t:SetPoint("CENTER", 0, 0)
            overviewBtn.t:SetText(locale == "deDE" and "ZONEN ÜBERSICHT" or "ZONES OVERVIEW")
            overviewBtn.t:SetTextColor(1, 0.85, 0.1)
            
            IMAGO.Chronicle.zoneOverviewBtn = overviewBtn
        end

        overviewBtn:SetPoint("TOPLEFT", f.content, "TOPLEFT", 5, -yOffset)
        overviewBtn:SetScript("OnClick", function()
            if SOUNDKIT and SOUNDKIT.IG_MAINMENU_OPTION_CHECKBOX_ON then PlaySound(SOUNDKIT.IG_MAINMENU_OPTION_CHECKBOX_ON) end
            
            -- Rechte Seite aufräumen
            f.detailTitle:Hide()
            f.detailLineLeft:Hide()
            f.detailLineRight:Hide()
            f.loreBody:Hide()
            f.infoScroll:Hide()
            if f.detailImage then f.detailImage:Hide() end
            if f.detailImageBorder then f.detailImageBorder:Hide() end
            if f.detailSeparator then f.detailSeparator:Hide() end
            
            -- Dashboard wieder einblenden
            f.startPage:Show()
        end)
        overviewBtn:Show()

        yOffset = yOffset + 45 -- Platz machen, damit die Zonen darunter sauber anreihen

    for _, zoneObj in ipairs(sortedZones) do
        local mapID = zoneObj.id
        local zoneData = zoneObj.data
        local isSeen = IMAGOSaved.seenZones[mapID]
        local name = (locale == "deDE") and zoneData.name_deDE or zoneData.name_enUS
        local lore = (locale == "deDE") and zoneData.lore_deDE or zoneData.lore_enUS

        local btn = IMAGO.Chronicle.zoneButtons[zIdx]
        if not btn then
            btn = CreateFrame("Button", nil, f.content)
            btn:SetSize(230, 60)
            
            btn.bg = btn:CreateTexture(nil, "BACKGROUND")
            btn.bg:SetAllPoints()
            
            btn.overlay = btn:CreateTexture(nil, "ARTWORK")
            btn.overlay:SetAllPoints()
            btn.overlay:SetColorTexture(0, 0, 0, 0.6)
            
            local hl = btn:CreateTexture(nil, "HIGHLIGHT")
            hl:SetAllPoints()
            hl:SetColorTexture(1, 0.85, 0.1, 0.15)
            
            btn.t = btn:CreateFontString(nil, "OVERLAY")
            btn.t:SetFont(FONT_TITLE, 16, "OUTLINE")
            btn.t:SetPoint("LEFT", 15, 0)
            btn.t:SetShadowColor(0, 0, 0, 1)
            btn.t:SetShadowOffset(1, -1)
            
            IMAGO.Chronicle.zoneButtons[zIdx] = btn
        end

        btn:SetPoint("TOPLEFT", f.content, "TOPLEFT", 5, -yOffset)

        if isSeen then
            btn.bg:SetTexture(zoneData.texturePath)
            btn.bg:SetDesaturated(false)
            btn.bg:SetVertexColor(1, 1, 1, 1) 
            btn.bg:SetTexCoord(0, 1, 0.2, 0.8)
            btn.t:SetText(name)
            btn.t:SetTextColor(1, 0.85, 0.1)

            btn:SetScript("OnClick", function()
                if SOUNDKIT and SOUNDKIT.IG_MAINMENU_OPTION_CHECKBOX_ON then PlaySound(SOUNDKIT.IG_MAINMENU_OPTION_CHECKBOX_ON) end
                f.startPage:Hide()
                f.hintPage:Hide()
                f.tabLore:Hide() 
                f.tabTime:Hide()
                f.detailModel:Hide()
                f.factionIcon:Hide()
                if f.timelineContainer then f.timelineContainer:Hide() end

                f.detailTitle:Show()
                f.detailLineLeft:Show()
                f.detailLineRight:Show()
                f.detailTitle:SetText(name)
                f.detailTitle:SetTextColor(1.0, 0.85, 0.1)

                if f.detailImage then
                    f.detailImage:SetTexture(zoneData.texturePath)
                    f.detailImage:SetDesaturated(false) 
                    f.detailImage:SetVertexColor(1, 1, 1, 1) 
                    f.detailImage:SetSize(580, 200)
                    f.detailImage:SetTexCoord(0, 1, 0.195, 0.805) 
                    f.detailImage:Show()
                    if f.detailImageBorder then f.detailImageBorder:Show() end
                    if f.detailSeparator then f.detailSeparator:Show() end
                end

                local firstLetter = lore:sub(1,1)
                local restLore = lore:sub(2)
                local formattedLore = "|cffffd700" .. firstLetter .. "|r" .. restLore .. "\n\n"
                
                if zoneData.pointsOfInterest then
                    formattedLore = formattedLore .. "|cffffd700" .. (IMAGO.L["ZONE_POI_HEADER"] or "INTERESSANTE ORTE") .. "|r\n_________________________________\n\n"
                    for _, poi in ipairs(zoneData.pointsOfInterest) do
                        local pName = (locale == "deDE") and poi.name_deDE or poi.name_enUS
                        local pLore = (locale == "deDE") and poi.lore_deDE or poi.lore_enUS
                        formattedLore = formattedLore .. "|cff9370db > " .. pName .. "|r\n" .. pLore .. "\n\n"
                    end
                end
                
                f.loreBody:SetText(formattedLore)
                f.loreBody:SetWidth(500)
                f.loreBody:SetJustifyH("LEFT")
                f.loreBody:Show()
                
                f.infoScroll:ClearAllPoints()
                f.infoScroll:SetWidth(520)
                f.infoScroll:SetPoint("TOP", f.detailFrame, "TOP", 0, -300)
                f.infoScroll:SetPoint("BOTTOM", f.detailFrame, "BOTTOM", 0, 100)
                f.infoScroll:Show()
                f.infoScroll:SetVerticalScroll(0)
            end)
        else
            btn.bg:SetTexture("Interface\\Icons\\INV_Misc_QuestionMark")
            btn.bg:SetDesaturated(true)
            btn.bg:SetVertexColor(0.2, 0.2, 0.2, 0.8) 
            btn.bg:SetTexCoord(0, 1, 0, 1)
            btn.t:SetText(IMAGO.L["ZONE_UNKNOWN_NAME"] or "Unbekannte Region")
            btn.t:SetTextColor(0.4, 0.4, 0.4)

            btn:SetScript("OnClick", function()
                if SOUNDKIT and SOUNDKIT.IG_MAINMENU_OPTION_CHECKBOX_ON then PlaySound(SOUNDKIT.IG_MAINMENU_OPTION_CHECKBOX_ON) end
                f.startPage:Hide()
                f.hintPage:Hide()
                f.tabLore:Hide()
                f.tabTime:Hide()
                f.detailModel:Hide()
                f.factionIcon:Hide()
                if f.timelineContainer then f.timelineContainer:Hide() end

                f.detailLineLeft:Hide()
                f.detailLineRight:Hide()
                if f.detailImageBorder then f.detailImageBorder:Hide() end
                if f.detailSeparator then f.detailSeparator:Hide() end

                f.detailTitle:Show()
                f.detailTitle:SetText(IMAGO.L["ZONE_UNDISCOVERED"] or "Unentdeckt")
                f.detailTitle:SetTextColor(0.4, 0.4, 0.4)

                if f.detailImage then
                    f.detailImage:SetTexture("Interface\\AddOns\\IMAGO\\media\\worldmap.tga")
                    f.detailImage:SetDesaturated(true) 
                    f.detailImage:SetVertexColor(0.4, 0.4, 0.4, 0.8) 
                    f.detailImage:SetSize(580, 430) 
                    f.detailImage:SetTexCoord(0, 1, 0, 1)
                    f.detailImage:Show()
                end

                local warningHeader = "\n\n|cffaaaaaa" .. (IMAGO.L["ZONE_UNEXPLORED_HEADER"] or "GEBIET UNERKUNDET") .. "|r"
                local descText = "\n\n|cff666666" .. (IMAGO.L["ZONE_UNEXPLORED_DESC"] or "Die Kartographie dieser Region ist noch unvollständig.\nReise dorthin, um ihre Geheimnisse zu offenbaren.") .. "|r"
                f.loreBody:SetText(warningHeader .. descText)
                f.loreBody:SetWidth(500)
                f.loreBody:SetJustifyH("CENTER")
                f.loreBody:Show()
                
                f.infoScroll:ClearAllPoints()
                f.infoScroll:SetWidth(520)
                f.infoScroll:SetPoint("TOP", f.detailFrame, "TOP", 0, -470)
                f.infoScroll:SetPoint("BOTTOM", f.detailFrame, "BOTTOM", 0, 100)
                f.infoScroll:Show()
                f.infoScroll:SetVerticalScroll(0)
            end)
        end

        btn:Show()
        yOffset = yOffset + 65
        zIdx = zIdx + 1
    end

    f.content:SetHeight(math.max(1, yOffset))
end
end

--- Chronik öffnen (Tab Schicksale), Liste vorbereiten und dieselbe Logik wie ein Klick auf den NPC ausführen.
--- opts.skipDiscoveryCinematic: Entdeckungs-Zwischensequenz überspringen (z. B. Kontextmenü).
function IMAGO.Chronicle.OpenToNPCSlug(slug, opts)
    opts = opts or {}
    if type(slug) ~= "string" or slug == "" or not IMAGOdb or not IMAGOdb.npcs or not IMAGOdb.npcs[slug] then
        return false
    end

    if not IMAGO.Chronicle.frame then
        IMAGO.Chronicle.CreateFrame()
    end

    local f = IMAGO.Chronicle.frame
    local data = IMAGOdb.npcs[slug]

    f.activeFilter = "ALL"
    if f.searchBox then f.searchBox:SetText("") end

    IMAGO.Chronicle.expandedCats = IMAGO.Chronicle.expandedCats or {}
    local cat = data.category or "CAT_ENIGMATIC"
    IMAGO.Chronicle.expandedCats[cat] = true

    if opts.skipDiscoveryCinematic then
        IMAGOSaved.viewedNPCs = IMAGOSaved.viewedNPCs or {}
        IMAGOSaved.viewedNPCs[slug] = true
    end

    f.selectedNPC = data

    IMAGO.Chronicle.SelectMainTab(1)
    f:Show()

    local function scrollToButton(btn)
        if not btn or not f.scrollFrame or not f.content then return end
        local scroll = f.scrollFrame
        local range = 0
        if scroll.GetVerticalScrollRange then
            range = scroll:GetVerticalScrollRange() or 0
        else
            range = math.max(0, (f.content:GetHeight() or 0) - (scroll:GetHeight() or 0))
        end
        local y = btn._listScrollY or 0
        local target = math.max(0, math.min(range, y - 40))
        scroll:SetVerticalScroll(target)
    end

    for _, btn in pairs(IMAGO.Chronicle.buttons or {}) do
        if btn.npcSlug == slug and btn:IsShown() then
            if btn.Click then
                btn:Click()
            else
                local fn = btn:GetScript("OnClick")
                if fn then fn(btn) end
            end
            C_Timer.After(0, function()
                if f:IsShown() then scrollToButton(btn) end
            end)
            return true
        end
    end

    return false
end

function IMAGO.Chronicle.Toggle()
    if not IMAGO.Chronicle.frame then IMAGO.Chronicle.CreateFrame() end
    local f = IMAGO.Chronicle.frame
    if f:IsShown() then 
        f:Hide() 
    else 
        IMAGO.Chronicle.UpdateList()
        if f.ShowDashboard then f.ShowDashboard() end
        f:Show() 
    end
end
