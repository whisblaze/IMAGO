-- ============================================================
-- IMAGO — core/Chronicle.lua
-- Die Chronik: 10/10 Cinematic UI, Dashboard, Search & Filter
-- ============================================================

IMAGO.Chronicle = IMAGO.Chronicle or {}

local FONT_TITLE = "Fonts\\MORPHEUS.TTF"
local FONT_BODY  = "Fonts\\FRIZQT__.TTF"

local eraColors = {
    ["Ancient"]   = {0.85, 0.65, 0.13},     -- Titanen-Bronze (Schöpfung/Alte Götter)
    ["Pre-WC1"]   = {0.60, 0.10, 0.10},     -- Blut-Rot (Orc-Invasion/Erster Krieg)
    ["WC1"]       = {0.60, 0.10, 0.10},     -- Blut-Rot (Orc-Invasion/Erster Krieg)
    ["Pre-WC2"]   = {0.10, 0.30, 0.80},     -- Lordaeron-Blau (Allianz/Zweiter Krieg)
    ["WC2"]       = {0.10, 0.30, 0.80},     -- Lordaeron-Blau (Allianz/Zweiter Krieg)
    ["Pre-WC3"]   = {0.45, 0.80, 0.20},     -- Seuchen-Grün (Die Geißel/Dritter Krieg)
    ["WC3"]       = {0.45, 0.80, 0.20},     -- Seuchen-Grün (Die Geißel/Dritter Krieg)
    ["Pre-Classic"]   = {0.7, 0.7, 0.7},        -- Neutrales Stein-Grau (Alte Welt)
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

IMAGO.Chronicle.ranks = IMAGO.Chronicle.ranks or {}
IMAGO.Chronicle.zoneRanks = IMAGO.Chronicle.zoneRanks or {}

-- Navigation stack for the back button
local navStack = {}
local isNavigatingBack = false

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
    cf.name:SetText(npcData and npcData.name or "")
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
    f:SetSize(1100, 700)
    f:SetPoint("CENTER")
    f:SetFrameStrata("HIGH")
    f:EnableMouse(true)
    f:SetMovable(true)
    f:RegisterForDrag("LeftButton")
    f:SetScript("OnDragStart", f.StartMoving)
    f:SetScript("OnDragStop", f.StopMovingOrSizing)
    f:Hide()

    -- ESC zum Schließen ermöglichen
    table.insert(UISpecialFrames, "IMAGOChronicleFrame")

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
    f.closeBtn:HookScript("OnClick", function()
        wipe(navStack)
        if IMAGO.Chronicle.SetBackEnabled then IMAGO.Chronicle.SetBackEnabled(false) end
    end)

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
    f.detailLineLeft:SetSize(355, 1)
    f.detailLineLeft:SetPoint("TOPRIGHT", f.detailTitle, "BOTTOM", 0, -8)
    f.detailLineLeft:SetTexture("Interface\\ChatFrame\\ChatFrameBackground")
    f.detailLineLeft:SetGradient("HORIZONTAL", CreateColor(1, 0.78, 0.1, 0), CreateColor(1, 0.78, 0.1, 0.7))

    f.detailLineRight = f.detailFrame:CreateTexture(nil, "ARTWORK")
    f.detailLineRight:SetSize(355, 1)
    f.detailLineRight:SetPoint("TOPLEFT", f.detailTitle, "BOTTOM", 0, -8)
    f.detailLineRight:SetTexture("Interface\\ChatFrame\\ChatFrameBackground")
    f.detailLineRight:SetGradient("HORIZONTAL", CreateColor(1, 0.78, 0.1, 0.7), CreateColor(1, 0.78, 0.1, 0))

    -- Zonen-Elemente (Bild, Rahmen, Trenner)
    f.detailImage = f.detailFrame:CreateTexture(nil, "ARTWORK")
    f.detailImage:SetSize(680, 200)
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
    f.infoContent:SetSize(440, 1)
    f.infoScroll:SetScrollChild(f.infoContent)

    f.loreBody = f.infoContent:CreateFontString(nil, "OVERLAY")
    f.loreBody:SetFont(FONT_BODY, 14)
    f.loreBody:SetPoint("TOPLEFT", f.infoContent, "TOPLEFT", 0, 0)
    f.loreBody:SetWidth(420)
    f.loreBody:SetJustifyH("LEFT")
    f.loreBody:SetTextColor(0.9, 0.9, 0.9)
    f.loreBody:SetSpacing(6)
    -- ==========================================
    -- BILD FÜR DIE ZONEN-DETAILANSICHT (PANORAMA)
    -- ==========================================
    f.detailImage = f.detailFrame:CreateTexture(nil, "ARTWORK")
    f.detailImage:SetSize(680, 180) -- Breites Panorama-Format
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
    -- Kein Rahmen - Modell steht frei im Raum

    -- Animation-Switcher Buttons
    f.detailModel.animButtons = {}
    local anims = {
        {id=3, label="St", name="Static"},
        {id=5, label="Ru", name="Run"},
        {id=26, label="Cs", name="Combat"},
        {id=18, label="At", name="Attack"}
    }

    local function UpdateAnimButtons(activeId)
        for _, btn in ipairs(f.detailModel.animButtons) do
            if btn.animId == activeId then
                btn.bg:SetVertexColor(1, 0.78, 0.1, 0.4)
            else
                btn.bg:SetVertexColor(0.1, 0.1, 0.1, 0.6)
            end
        end
    end

    for i, anim in ipairs(anims) do
        local btn = CreateFrame("Button", nil, f.detailModel)
        btn:SetSize(20, 18)
        btn:SetPoint("BOTTOMLEFT", 8 + (i-1)*24, 8)
        btn.animId = anim.id

        -- Hintergrund
        btn.bg = btn:CreateTexture(nil, "BACKGROUND")
        btn.bg:SetAllPoints()
        btn.bg:SetTexture("Interface\\ChatFrame\\ChatFrameBackground")

        -- Text
        btn.text = btn:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")
        btn.text:SetPoint("CENTER")
        btn.text:SetText(anim.label)
        btn.text:SetTextColor(0.8, 0.8, 0.8)

        -- Click
        btn:SetScript("OnClick", function()
            f.detailModel:SetAnimation(anim.id)
            f.detailModel.currentAnim = anim.id
            UpdateAnimButtons(anim.id)
        end)

        -- Hover
        btn:SetScript("OnEnter", function()
            btn.text:SetTextColor(1, 0.85, 0.1)
        end)
        btn:SetScript("OnLeave", function()
            btn.text:SetTextColor(0.8, 0.8, 0.8)
        end)

        table.insert(f.detailModel.animButtons, btn)
    end

    f.detailModel.UpdateAnimButtons = UpdateAnimButtons

    -- OnShow Animation starten
    f.detailModel:SetScript("OnShow", function(self)
        self:SetAnimation(0) -- Stand als Default
        if self.UpdateAnimButtons then
            self.UpdateAnimButtons(0)
        end
    end)
    
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
    f.hintPage.desc:SetFont(FONT_BODY, 14)
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

    -- ==========================================
    -- MODE TOGGLE BUTTON + DROPDOWN
    -- ==========================================
    f.modeBtn = CreateFrame("Button", nil, f.detailFrame, "BackdropTemplate")
    f.modeBtn:SetSize(85, 22)
    f.modeBtn:SetPoint("TOPLEFT", f.detailFrame, "TOPLEFT", 14, -14)
    f.modeBtn:SetBackdrop({ bgFile = "Interface\\ChatFrame\\ChatFrameBackground", edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border", edgeSize = 10, insets = {left=3,right=3,top=3,bottom=3} })
    f.modeBtn:SetBackdropColor(0.05, 0.05, 0.05, 0.85)
    f.modeBtn:SetBackdropBorderColor(1, 0.78, 0.1, 0.6)

    f.modeBtn.label = f.modeBtn:CreateFontString(nil, "OVERLAY")
    f.modeBtn.label:SetFont(FONT_BODY, 11, "OUTLINE")
    f.modeBtn.label:SetPoint("CENTER", f.modeBtn, "CENTER", 0, 0)
    f.modeBtn.label:SetTextColor(1, 0.85, 0.1)

    local function UpdateModeBtn()
        f.modeBtn.label:SetText(IMAGO.L["MODE_LABEL"])
    end

    -- ==========================================
    -- CONFIRM DIALOG (wiederverwendbar)
    -- ==========================================
    f.confirmDialog = CreateFrame("Frame", nil, f, "BackdropTemplate")
    f.confirmDialog:SetSize(320, 130)
    f.confirmDialog:SetPoint("CENTER", f.detailFrame, "CENTER", 0, 20)
    f.confirmDialog:SetFrameStrata("FULLSCREEN_DIALOG")
    f.confirmDialog:SetBackdrop({ bgFile = "Interface\\ChatFrame\\ChatFrameBackground", edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border", edgeSize = 14, insets = {left=4,right=4,top=4,bottom=4} })
    f.confirmDialog:SetBackdropColor(0.04, 0.04, 0.06, 0.97)
    f.confirmDialog:SetBackdropBorderColor(1, 0.78, 0.1, 0.9)
    f.confirmDialog:Hide()

    f.confirmDialog.title = f.confirmDialog:CreateFontString(nil, "OVERLAY")
    f.confirmDialog.title:SetFont(FONT_BODY, 13, "OUTLINE")
    f.confirmDialog.title:SetPoint("TOP", f.confirmDialog, "TOP", 0, -14)
    f.confirmDialog.title:SetTextColor(1, 0.85, 0.1)

    f.confirmDialog.line = f.confirmDialog:CreateTexture(nil, "ARTWORK")
    f.confirmDialog.line:SetSize(280, 1)
    f.confirmDialog.line:SetPoint("TOP", f.confirmDialog.title, "BOTTOM", 0, -6)
    f.confirmDialog.line:SetTexture("Interface\\ChatFrame\\ChatFrameBackground")
    f.confirmDialog.line:SetVertexColor(1, 0.78, 0.1, 0.4)

    f.confirmDialog.desc = f.confirmDialog:CreateFontString(nil, "OVERLAY")
    f.confirmDialog.desc:SetFont(FONT_BODY, 11)
    f.confirmDialog.desc:SetPoint("TOP", f.confirmDialog.line, "BOTTOM", 0, -8)
    f.confirmDialog.desc:SetWidth(290)
    f.confirmDialog.desc:SetJustifyH("CENTER")
    f.confirmDialog.desc:SetTextColor(0.85, 0.85, 0.85)
    f.confirmDialog.desc:SetSpacing(3)

    local function MakeConfirmBtn(label, xOff, color)
        local btn = CreateFrame("Button", nil, f.confirmDialog, "BackdropTemplate")
        btn:SetSize(90, 24)
        btn:SetPoint("BOTTOM", f.confirmDialog, "BOTTOM", xOff, 10)
        btn:SetBackdrop({ bgFile = "Interface\\ChatFrame\\ChatFrameBackground", edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border", edgeSize = 10, insets = {left=3,right=3,top=3,bottom=3} })
        btn:SetBackdropColor(0.05, 0.05, 0.05, 0.9)
        btn:SetBackdropBorderColor(color[1], color[2], color[3], 0.7)
        btn.lbl = btn:CreateFontString(nil, "OVERLAY")
        btn.lbl:SetFont(FONT_BODY, 11, "OUTLINE")
        btn.lbl:SetPoint("CENTER")
        btn.lbl:SetText(label)
        btn.lbl:SetTextColor(color[1], color[2], color[3])
        btn:SetScript("OnEnter", function(self) self:SetBackdropBorderColor(color[1], color[2], color[3], 1) end)
        btn:SetScript("OnLeave", function(self) self:SetBackdropBorderColor(color[1], color[2], color[3], 0.7) end)
        return btn
    end

    f.confirmDialog.yesBtn = MakeConfirmBtn(IMAGO.L["CONFIRM_YES"], -52, {0.2, 0.9, 0.3})
    f.confirmDialog.noBtn  = MakeConfirmBtn(IMAGO.L["CONFIRM_NO"],   52, {0.9, 0.3, 0.2})

    f.confirmDialog.noBtn:SetScript("OnClick", function()
        f.confirmDialog:Hide()
    end)

    f.ShowConfirm = function(title, desc, onYes)
        f.confirmDialog.title:SetText(title)
        f.confirmDialog.desc:SetText(desc)
        f.confirmDialog.yesBtn:SetScript("OnClick", function()
            f.confirmDialog:Hide()
            onYes()
        end)
        if f.modeDropdown:IsShown() then f.modeDropdown:Hide() end
        f.confirmDialog:Show()
    end

    -- Dropdown Frame
    f.modeDropdown = CreateFrame("Frame", nil, f.detailFrame, "BackdropTemplate")
    f.modeDropdown:SetSize(160, 54)
    f.modeDropdown:SetFrameStrata("DIALOG")
    f.modeDropdown:SetBackdrop({ bgFile = "Interface\\ChatFrame\\ChatFrameBackground", edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border", edgeSize = 10, insets = {left=3,right=3,top=3,bottom=3} })
    f.modeDropdown:SetBackdropColor(0.05, 0.05, 0.05, 0.97)
    f.modeDropdown:SetBackdropBorderColor(1, 0.78, 0.1, 0.8)
    f.modeDropdown:Hide()

    local function CreateDropdownEntry(parent, text, yOffset, modeValue)
        local btn = CreateFrame("Button", nil, parent)
        btn:SetSize(150, 22)
        btn:SetPoint("TOPLEFT", parent, "TOPLEFT", 5, yOffset)

        btn.check = btn:CreateTexture(nil, "ARTWORK")
        btn.check:SetSize(7, 7)
        btn.check:SetPoint("LEFT", btn, "LEFT", 6, 0)
        btn.check:SetTexture("Interface\\ChatFrame\\ChatFrameBackground")
        btn.check:SetVertexColor(1, 0.78, 0.1, 1)
        btn.check:Hide()

        btn.text = btn:CreateFontString(nil, "OVERLAY")
        btn.text:SetFont(FONT_BODY, 11)
        btn.text:SetPoint("LEFT", btn, "LEFT", 18, 0)
        btn.text:SetText(text)

        btn.modeValue = modeValue
        btn:SetScript("OnEnter", function(self)
            self.text:SetTextColor(1, 0.85, 0.1)
        end)
        btn:SetScript("OnLeave", function(self)
            self.text:SetTextColor(0.9, 0.9, 0.9)
        end)
        return btn
    end

    f.modeDropdown.entryExplorer = CreateDropdownEntry(f.modeDropdown, IMAGO.L["MODE_EXPLORER"], -5, false)
    f.modeDropdown.entryEncyclopedia = CreateDropdownEntry(f.modeDropdown, IMAGO.L["MODE_ENCYCLOPEDIA"], -27, true)

    -- Explorer: sofort umschalten
    f.modeDropdown.entryExplorer:SetScript("OnClick", function()
        IMAGOSaved.encyclopediaMode = false
        f.modeDropdown:Hide()
        IMAGO.Chronicle.UpdateList()
    end)

    -- Enzyklopädie: erst Bestätigung
    f.modeDropdown.entryEncyclopedia:SetScript("OnClick", function()
        if IMAGOSaved.encyclopediaMode then
            f.modeDropdown:Hide()
            return
        end
        f.ShowConfirm(
            IMAGO.L["CONFIRM_ENC_TITLE"],
            IMAGO.L["CONFIRM_ENC_DESC"],
            function()
                IMAGOSaved.encyclopediaMode = true
                IMAGO.Chronicle.UpdateList()
            end
        )
    end)

    local function UpdateDropdownChecks()
        local isEnc = IMAGOSaved and IMAGOSaved.encyclopediaMode
        f.modeDropdown.entryExplorer.check:SetShown(not isEnc)
        f.modeDropdown.entryExplorer.text:SetTextColor(isEnc and 0.6 or 1, isEnc and 0.6 or 0.85, isEnc and 0.6 or 0.1)
        f.modeDropdown.entryEncyclopedia.check:SetShown(isEnc)
        f.modeDropdown.entryEncyclopedia.text:SetTextColor(isEnc and 1 or 0.6, isEnc and 0.85 or 0.6, isEnc and 0.1 or 0.6)
    end

    f.modeBtn:SetScript("OnClick", function()
        if f.modeDropdown:IsShown() then
            f.modeDropdown:Hide()
        else
            f.modeDropdown:ClearAllPoints()
            f.modeDropdown:SetPoint("TOPLEFT", f.modeBtn, "BOTTOMLEFT", 0, -2)
            UpdateDropdownChecks()
            f.modeDropdown:Show()
        end
    end)
    f.modeBtn:SetScript("OnEnter", function()
        f.modeBtn:SetBackdropBorderColor(1, 0.95, 0.4, 1)
    end)
    f.modeBtn:SetScript("OnLeave", function()
        f.modeBtn:SetBackdropBorderColor(1, 0.78, 0.1, 0.6)
    end)

    -- Back button: sits to the right of modeBtn inside detailFrame
    f.backBtn = CreateFrame("Button", nil, f.detailFrame, "BackdropTemplate")
    f.backBtn:SetSize(70, 22)
    f.backBtn:SetPoint("LEFT", f.modeBtn, "RIGHT", 8, 0)
    f.backBtn:SetBackdrop({ bgFile = "Interface\\ChatFrame\\ChatFrameBackground", edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border", edgeSize = 10, insets = {left=3,right=3,top=3,bottom=3} })
    f.backBtn:SetBackdropColor(0.05, 0.05, 0.05, 0.85)
    f.backBtn:SetBackdropBorderColor(0.4, 0.4, 0.4, 0.4)

    f.backBtn.label = f.backBtn:CreateFontString(nil, "OVERLAY")
    f.backBtn.label:SetFont(FONT_BODY, 11, "OUTLINE")
    f.backBtn.label:SetPoint("CENTER", f.backBtn, "CENTER", 0, 0)
    f.backBtn.label:SetText("< " .. (IMAGO.L and IMAGO.L["BACK"] or "Back"))
    f.backBtn.label:SetTextColor(0.5, 0.5, 0.5)
    f.backBtn.enabled = false

    f.backBtn:SetScript("OnEnter", function(self)
        if self.enabled then
            self:SetBackdropBorderColor(1, 0.95, 0.4, 1)
        end
    end)
    f.backBtn:SetScript("OnLeave", function(self)
        if self.enabled then
            self:SetBackdropBorderColor(1, 0.78, 0.1, 0.6)
        else
            self:SetBackdropBorderColor(0.4, 0.4, 0.4, 0.4)
        end
    end)
    f.backBtn:SetScript("OnClick", function(self)
        if not self.enabled then return end
        local prev = table.remove(navStack)
        if not prev then return end

        isNavigatingBack = true
        if prev.type == "npc" then
            IMAGO.Chronicle.OpenToNPCSlug(prev.slug, { skipDiscoveryCinematic = true })
        elseif prev.type == "zone" then
            IMAGO.Chronicle.OpenToZoneMapID(prev.mapID)
        end
        C_Timer.After(0, function()
            isNavigatingBack = false
        end)

        if #navStack == 0 then
            self.enabled = false
            self:SetBackdropBorderColor(0.4, 0.4, 0.4, 0.4)
            self.label:SetTextColor(0.5, 0.5, 0.5)
        end
    end)

    IMAGO.Chronicle.SetBackEnabled = function(val)
        local btn = IMAGO.Chronicle.frame and IMAGO.Chronicle.frame.backBtn
        if not btn then return end
        btn.enabled = val
        if val then
            btn:SetBackdropBorderColor(1, 0.78, 0.1, 0.6)
            btn.label:SetTextColor(1, 0.85, 0.1)
        else
            btn:SetBackdropBorderColor(0.4, 0.4, 0.4, 0.4)
            btn.label:SetTextColor(0.5, 0.5, 0.5)
        end
    end

    -- Dropdown bei Klick außerhalb schließen
    f:HookScript("OnMouseDown", function()
        if f.modeDropdown:IsShown() then f.modeDropdown:Hide() end
    end)

    f.UpdateModeBtn = UpdateModeBtn

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
    f.comingSoonPage.desc:SetFont(FONT_BODY, 15)
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
                f.creditsHeader.desc:SetFont(FONT_BODY, 13)
                f.creditsHeader.desc:SetPoint("TOP", f.creditsHeader.title, "BOTTOM", 0, -10)
                f.creditsHeader.desc:SetWidth(550)
                f.creditsHeader.desc:SetText(IMAGO.L["CREDITS_DESC"])
                f.creditsHeader.desc:SetTextColor(0.8, 0.7, 0.5)
                f.creditsHeader.desc:SetJustifyH("CENTER")

                f.creditsHeader.topHint = f.creditsHeader:CreateFontString(nil, "OVERLAY")
                f.creditsHeader.topHint:SetFont(FONT_BODY, 12)
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
                {name = "Cadash", roles = "Lore Scribe, Translator", top = true},
                {name = "austin", roles = "Archivist, Lore Scribe", top = true},
                {name = "Elanor", roles = "Data Miner, Translator, Moderator", top = true},
                {name = "DeMaa", roles = "Lua Developer, Moderator", top = true},
                {name = "druidian", roles = "Archivist, Lore Scribe", top = true},
                {name = "Minorou", roles = "Lore Scribe", top = true},
                {name = "MayaWoW", roles = "Data Miner, Translator", top = true},
                {name = "Lewi", roles = "Archivist, Lore Scribe, Translator", top = true},
                {name = "Nebb", roles = "Lore Scribe", top = true},
                {name = "Metrus", roles = "Lore Scribe, Translator", top = true},
                {name = "Karstan", roles = "Lore Scribe, Translator"},
                {name = "Elsafan (Crazycat).", roles = "Archivist, Data Miner"},
                {name = "Travanoid", roles = "Lore Scribe"},
                {name = "Lemurensohn", roles = "Archivist, Translator"},
                {name = "zeerocool11", roles = "Archivist, Lore Scribe, Data Miner, Lua Developer"},
                {name = "ALI4S", roles = "Lua Developer"},
                {name = "Remu", roles = "Data Miner, Translator"},
                {name = "zelkaris", roles = "Lore Scribe, Data Miner, Lua Developer"},
                {name = "Duschgell", roles = "Archivist"},
                {name = "Nihilea", roles = "Data Miner, Translator"},
                {name = "Saljourn", roles = "Lore Scribe, Data Miner"},
                {name = "Riknar", roles = "Lore Scribe"},
                {name = "MortiousPrime", roles = "Archivist, Lore Scribe, Data Miner"},
                {name = "LeoColpas", roles = "Translator"},
                {name = "Chadson Chappo", roles = "Archivist"},
                {name = "ruffboi", roles = "Lore Scribe"},
                {name = "Echo_Delta_Golf", roles = "Lore Scribe"},
                {name = "Lilith", roles = "Translator"},
                {name = "LowRoars", roles = "Archivist, Lore Scribe, Data Miner, Lua Developer"},
                {name = "咪嚕", roles = "Archivist, Translator"},
                {name = "Silver_Wind809", roles = "Data Miner, Lua Developer"},
                {name = "William Orr", roles = "Data Miner"},
                {name = "Nuise_16094", roles = "Translator"},
                {name = "Nuise", roles = "Translator"},
                {name = "Jay! :P", roles = "Lore Scribe, Data Miner"},
                {name = "!pxrty193", roles = "Lua Developer"},
                {name = "johnnyd2", roles = "Tester"},
                {name = "Kittywulfe", roles = "Tester"},
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
        f.loreBody:SetWidth(420)

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
        f.timelineContainer:SetPoint("TOPLEFT", 20, 0)
        f.timelineContainer:SetSize(420, 1)
        f.timelineContainer.eras = {}
        f.timelineContainer.texts = {}
        f.timelineContainer.dividers = {}
    end
    f.timelineContainer:Show()

    -- Alle vorherigen Elemente verstecken (pairs für sparse tables)
    for _, fs in pairs(f.timelineContainer.eras) do fs:Hide() end
    for _, fs in pairs(f.timelineContainer.texts) do fs:Hide() end
    for _, div in pairs(f.timelineContainer.dividers) do div:Hide() end

    local y = 0
    local entryCount = #data.timeline

    for i, entry in ipairs(data.timeline) do
        -- Dezente Trennlinie vor jedem Eintrag (außer dem ersten)
        if i > 1 then
            local divider = f.timelineContainer.dividers[i]
            if not divider then
                divider = f.timelineContainer:CreateTexture(nil, "ARTWORK")
                divider:SetSize(320, 1)
                divider:SetTexture("Interface\\ChatFrame\\ChatFrameBackground")
                f.timelineContainer.dividers[i] = divider
            end
            divider:SetPoint("TOPLEFT", 0, -y + 10)
            divider:SetGradient("HORIZONTAL", CreateColor(1, 0.78, 0.1, 0.15), CreateColor(1, 0.78, 0.1, 0.05))
            divider:Show()
        end

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
            txt:SetWidth(310)
            txt:SetJustifyH("LEFT")
            txt:SetSpacing(4)
            f.timelineContainer.texts[i] = txt
        end

        -- Midnight Spoiler-Schutz
        local isMidnight = (entry.era == "Midnight")
        local npcSlug = f.selectedNPCSlug or ""
        IMAGOSaved.revealedMidnight = IMAGOSaved.revealedMidnight or {}
        local isRevealed = IMAGOSaved.revealedMidnight[npcSlug]

        if isMidnight and not isRevealed then
            local L = IMAGO.L
            txt:SetText("[" .. L["SPOILER_MIDNIGHT_TITLE"] .. "] — " .. L["SPOILER_MIDNIGHT_HINT"])
            txt:SetTextColor(0.42, 0.0, 0.8) -- Midnight-Leeren-Violett
            txt.realText = entry.text
            txt.npcSlug = npcSlug
            txt.isSpoiler = true
            txt:EnableMouse(true)
            txt:SetScript("OnMouseUp", function(self)
                IMAGOSaved.revealedMidnight[self.npcSlug] = true
                self:SetText(self.realText)
                self:SetTextColor(0.9, 0.9, 0.9)
                self.isSpoiler = false
                UIFrameFadeIn(self, 0.3, 0, 1)
            end)
            txt:SetScript("OnEnter", function(self)
                if self.isSpoiler then
                    GameTooltip:SetOwner(self, "ANCHOR_RIGHT")
                    GameTooltip:SetText("⚠️ " .. L["SPOILER_TOOLTIP_TITLE"], 1, 0.2, 0.2)
                    GameTooltip:AddLine(L["SPOILER_TOOLTIP_DESC"], 0.8, 0.8, 0.8)
                    GameTooltip:Show()
                    -- Hover-Effekt: Text heller
                    self:SetTextColor(0.6, 0.2, 1.0)
                end
            end)
            txt:SetScript("OnLeave", function(self)
                GameTooltip:Hide()
                if self.isSpoiler then
                    self:SetTextColor(0.42, 0.0, 0.8)
                end
            end)
        else
            -- Normaler Text
            txt:SetText(entry.text or "")
            txt:SetTextColor(0.9, 0.9, 0.9)
            txt.isSpoiler = false
            txt:EnableMouse(false)
            txt:SetScript("OnMouseUp", nil)
            txt:SetScript("OnEnter", nil)
            txt:SetScript("OnLeave", nil)
        end
        txt:SetPoint("TOPLEFT", 100, -y)
        txt:Show()

        local textHeight = txt:GetStringHeight()
        y = y + math.max(20, textHeight) + 28
    end
    f.timelineContainer:SetHeight(y - 5)
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
        for _, entries in pairs(IMAGOdb.npcs) do
            if type(entries) == "table" then
                for slug, _ in pairs(entries) do
                    total = total + 1
                    if IMAGOSaved.seenNPCs[slug] then seen = seen + 1 end
                end
            end
        end

        local perc = total > 0 and (seen / total) * 100 or 0
        local rankTitle = IMAGO.Chronicle.ranks[1] and IMAGO.Chronicle.ranks[1].title or ""
        for _, r in ipairs(IMAGO.Chronicle.ranks) do 
            if perc >= r.perc then rankTitle = r.title end 
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
            local rTitle = r.title or ""
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
                local data = IMAGO.GetNPCData(slug)
                if data then
                    local name = data.name or ""
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
            for catKey, entries in pairs(IMAGOdb.npcs) do
                if type(entries) == "table" then
                    for slug, data in pairs(entries) do
                        local isSeen = IMAGOSaved.seenNPCs[slug]
                        local name = data.name or ""
                        
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
                        if activeFilter:find("CAT_") and catKey ~= activeFilter then matchesFilter = false end
                        
                        if matchesSearch and matchesFilter then
                            if not categories[catKey] then 
                                categories[catKey] = { list = {}, totalCat = 0, seenCat = 0 } 
                            end
                            table.insert(categories[catKey].list, {slug = slug, data = data})
                            categories[catKey].totalCat = categories[catKey].totalCat + 1
                            if isSeen then categories[catKey].seenCat = categories[catKey].seenCat + 1 end
                        end
                    end
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
                        return (a.data.name or "") < (b.data.name or "")
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
                    local isManual = IMAGOSaved.manualUnlocks and IMAGOSaved.manualUnlocks[npc.slug]
                    local isEncyclopedia = IMAGOSaved.encyclopediaMode
                    local isVisible = isSeen or isEncyclopedia or isManual
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

                    local name = npc.data.name or ""
                    if isVisible then
                        btn.t:SetText(name)
                        if isManual and not isSeen and not isEncyclopedia then
                            btn.t:SetTextColor(0.6, 0.5, 0.8)
                        else
                            btn.t:SetTextColor(isSeen and 1 or 0.85, isSeen and 0.82 or 0.75, isSeen and 0 or 0.4)
                        end
                    else
                        btn.t:SetText(IMAGO.L["UNDISCOVERED"])
                        btn.t:SetTextColor(0.35, 0.35, 0.35)
                    end
                    
                    if isSeen and not hasViewed and not isEncyclopedia then
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
                        if IsShiftKeyDown() and isVisible then
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
                        if not isNavigatingBack then
                            local entry = nil
                            if f.selectedNPCSlug and f.selectedNPCSlug ~= "" and f.selectedNPCSlug ~= npc.slug then
                                entry = { type = "npc", slug = f.selectedNPCSlug }
                            elseif f.selectedZoneMapID then
                                entry = { type = "zone", mapID = f.selectedZoneMapID }
                            end
                            if entry then
                                table.insert(navStack, entry)
                                if IMAGO.Chronicle.SetBackEnabled then
                                    IMAGO.Chronicle.SetBackEnabled(true)
                                end
                            end
                        end
                        f.selectedZoneMapID = nil

                        f.selectedNPC = npc.data
                        f.selectedNPCSlug = npc.slug
                        
                        for _, b in pairs(IMAGO.Chronicle.buttons) do
                            if b.selected then b.selected:Hide() end
                        end
                        btn.selected:Show()
                        
                        if isVisible then
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

                                local lore = npc.data.lore or ""
                                local firstLetter = lore:sub(1,1)
                                local restLore = lore:sub(2)
                                f.loreBody:SetText("|cffffd700" .. firstLetter .. "|r" .. restLore)
                                
                                f.detailModel:ClearModel()
                                local modelID = GetValidModelID(npc.data)
                                if modelID then 
                                    f.detailModel:SetCreature(modelID)
                                    -- Animation nach kurzer Verzögerung starten (Modell muss laden)
                                    C_Timer.After(0.2, function()
                                        if f.detailModel:IsShown() then 
                                            f.detailModel:SetCreature(modelID)
                                            f.detailModel:SetAnimation(0)
                                            -- Buttons auf Stand zurücksetzen
                                            if f.detailModel.UpdateAnimButtons then
                                                f.detailModel.UpdateAnimButtons(0)
                                            end
                                        end
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
                            if isSeen and not IMAGOSaved.viewedNPCs[npc.slug] then
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
                            
                            local localZones = npc.data.zones
                            if localZones and #localZones > 0 then
                                local zoneStr = table.concat(localZones, ", ")
                                f.hintPage.desc:SetText(string.format(IMAGO.L["HINT_SCOUTS"], zoneStr))
                            else
                                f.hintPage.desc:SetText(IMAGO.L["HINT_UNKNOWN_LOC"])
                            end
                        end
                    end)

                    btn:SetScript("OnMouseUp", function(self, mouseBtn)
                        if mouseBtn == "RightButton" and not isSeen and not isEncyclopedia then
                            if isManual then
                                IMAGOSaved.manualUnlocks[npc.slug] = nil
                                IMAGO.Chronicle.UpdateList()
                            else
                                f.ShowConfirm(
                                    IMAGO.L["CONFIRM_UNLOCK_TITLE"],
                                    IMAGO.L["CONFIRM_UNLOCK_DESC"],
                                    function()
                                        IMAGOSaved.manualUnlocks = IMAGOSaved.manualUnlocks or {}
                                        IMAGOSaved.manualUnlocks[npc.slug] = true
                                        IMAGO.Chronicle.UpdateList()
                                    end
                                )
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

    local rankTitle = IMAGO.Chronicle.zoneRanks[1] and IMAGO.Chronicle.zoneRanks[1].title or ""
    for _, r in ipairs(IMAGO.Chronicle.zoneRanks) do 
        if perc >= r.perc then rankTitle = r.title end 
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
        local rTitle = r.title or ""
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
        local isEncyclopedia = IMAGOSaved.encyclopediaMode
        local isManual = IMAGOSaved.manualZoneUnlocks and IMAGOSaved.manualZoneUnlocks[mapID]
        local isZoneVisible = isSeen or isEncyclopedia or isManual
        local name = zoneData.name or ""
        local lore = zoneData.lore or ""

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
        btn.zoneMapID = mapID  -- store for nav stack lookup

        if isZoneVisible then
            btn.bg:SetTexture(zoneData.texturePath)
            btn.bg:SetDesaturated(false)
            btn.bg:SetVertexColor(1, 1, 1, 1) 
            btn.bg:SetTexCoord(0, 1, 0.2, 0.8)
            btn.t:SetText(name)
            if isManual then
                btn.t:SetTextColor(0.58, 0.40, 0.86)
            else
                btn.t:SetTextColor(1, 0.85, 0.1)
            end

            btn:SetScript("OnClick", function()
                if SOUNDKIT and SOUNDKIT.IG_MAINMENU_OPTION_CHECKBOX_ON then PlaySound(SOUNDKIT.IG_MAINMENU_OPTION_CHECKBOX_ON) end

                if not isNavigatingBack then
                    local entry = nil
                    if f.selectedNPCSlug and f.selectedNPCSlug ~= "" then
                        entry = { type = "npc", slug = f.selectedNPCSlug }
                    elseif f.selectedZoneMapID and f.selectedZoneMapID ~= mapID then
                        entry = { type = "zone", mapID = f.selectedZoneMapID }
                    end
                    if entry then
                        table.insert(navStack, entry)
                        if IMAGO.Chronicle.SetBackEnabled then IMAGO.Chronicle.SetBackEnabled(true) end
                    end
                end
                f.selectedNPCSlug = nil
                f.selectedZoneMapID = mapID

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
                    f.detailImage:SetSize(680, 200)
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
                        local pName = poi.name or ""
                        local pLore = poi.lore or ""
                        formattedLore = formattedLore .. "|cff9370db > " .. pName .. "|r\n" .. pLore .. "\n\n"
                    end
                end
                
                f.loreBody:SetText(formattedLore)
                f.loreBody:SetWidth(660)
                f.loreBody:SetJustifyH("LEFT")
                f.loreBody:Show()
                
                f.infoScroll:ClearAllPoints()
                f.infoScroll:SetWidth(680)
                f.infoScroll:SetPoint("TOP", f.detailFrame, "TOP", 0, -300)
                f.infoScroll:SetPoint("BOTTOM", f.detailFrame, "BOTTOM", 0, 100)
                f.infoScroll:Show()
                f.infoScroll:SetVerticalScroll(0)
            end)

            btn:SetScript("OnMouseUp", function(self, mouseBtn)
                if mouseBtn == "RightButton" and not isSeen and not isEncyclopedia then
                    if isManual then
                        IMAGOSaved.manualZoneUnlocks[mapID] = nil
                        IMAGO.Chronicle.UpdateList()
                    else
                        f.ShowConfirm(
                            IMAGO.L["CONFIRM_UNLOCK_TITLE"],
                            IMAGO.L["CONFIRM_UNLOCK_DESC"],
                            function()
                                IMAGOSaved.manualZoneUnlocks = IMAGOSaved.manualZoneUnlocks or {}
                                IMAGOSaved.manualZoneUnlocks[mapID] = true
                                IMAGO.Chronicle.UpdateList()
                            end
                        )
                    end
                end
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

                if not isNavigatingBack then
                    local entry = nil
                    if f.selectedNPCSlug and f.selectedNPCSlug ~= "" then
                        entry = { type = "npc", slug = f.selectedNPCSlug }
                    elseif f.selectedZoneMapID and f.selectedZoneMapID ~= mapID then
                        entry = { type = "zone", mapID = f.selectedZoneMapID }
                    end
                    if entry then
                        table.insert(navStack, entry)
                        if IMAGO.Chronicle.SetBackEnabled then IMAGO.Chronicle.SetBackEnabled(true) end
                    end
                end
                f.selectedNPCSlug = nil
                f.selectedZoneMapID = mapID

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
                    f.detailImage:SetSize(680, 400) 
                    f.detailImage:SetTexCoord(0, 1, 0, 1)
                    f.detailImage:Show()
                end

                local warningHeader = "\n\n|cffaaaaaa" .. (IMAGO.L["ZONE_UNEXPLORED_HEADER"] or "GEBIET UNERKUNDET") .. "|r"
                local descText = "\n\n|cff666666" .. (IMAGO.L["ZONE_UNEXPLORED_DESC"] or "Die Kartographie dieser Region ist noch unvollständig.\nReise dorthin, um ihre Geheimnisse zu offenbaren.") .. "|r"
                f.loreBody:SetText(warningHeader .. descText)
                f.loreBody:SetWidth(660)
                f.loreBody:SetJustifyH("CENTER")
                f.loreBody:Show()
                
                f.infoScroll:ClearAllPoints()
                f.infoScroll:SetWidth(680)
                f.infoScroll:SetPoint("TOP", f.detailFrame, "TOP", 0, -470)
                f.infoScroll:SetPoint("BOTTOM", f.detailFrame, "BOTTOM", 0, 100)
                f.infoScroll:Show()
                f.infoScroll:SetVerticalScroll(0)
            end)

            btn:SetScript("OnMouseUp", function(self, mouseBtn)
                if mouseBtn == "RightButton" and not isSeen and not isEncyclopedia then
                    f.ShowConfirm(
                        IMAGO.L["CONFIRM_UNLOCK_TITLE"],
                        IMAGO.L["CONFIRM_UNLOCK_DESC"],
                        function()
                            IMAGOSaved.manualZoneUnlocks = IMAGOSaved.manualZoneUnlocks or {}
                            IMAGOSaved.manualZoneUnlocks[mapID] = true
                            IMAGO.Chronicle.UpdateList()
                        end
                    )
                end
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
    if type(slug) ~= "string" or slug == "" or not IMAGO.GetNPCData(slug) then
        return false
    end

    if not IMAGO.Chronicle.frame then
        IMAGO.Chronicle.CreateFrame()
    end

    local f = IMAGO.Chronicle.frame

    -- Push current page onto nav stack before navigating away.
    -- Skip if navigating back, or already on this NPC.
    if not isNavigatingBack then
        local entry = nil
        if f.selectedNPCSlug and f.selectedNPCSlug ~= "" and f.selectedNPCSlug ~= slug then
            entry = { type = "npc", slug = f.selectedNPCSlug }
        elseif f.selectedZoneMapID then
            entry = { type = "zone", mapID = f.selectedZoneMapID }
        end
        if entry then
            table.insert(navStack, entry)
            if IMAGO.Chronicle.SetBackEnabled then IMAGO.Chronicle.SetBackEnabled(true) end
        end
    end
    f.selectedZoneMapID = nil

    local data = IMAGO.GetNPCData(slug)

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
    f.selectedNPCSlug = slug

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

--- Navigate back to a zone by mapID: switches to the zones tab, finds the button, and clicks it.
function IMAGO.Chronicle.OpenToZoneMapID(mapID)
    if not mapID then return false end

    if not IMAGO.Chronicle.frame then
        IMAGO.Chronicle.CreateFrame()
    end

    local f = IMAGO.Chronicle.frame
    IMAGO.Chronicle.SelectMainTab(2)
    f:Show()

    local function scrollToButton(btn)
        if not btn or not f.scrollFrame or not f.content then return end
        local scroll = f.scrollFrame
        local range = math.max(0, (f.content:GetHeight() or 0) - (scroll:GetHeight() or 0))
        local _, _, _, _, btnY = btn:GetPoint()
        local target = math.max(0, math.min(range, -(btnY or 0) - 40))
        scroll:SetVerticalScroll(target)
    end

    for _, btn in pairs(IMAGO.Chronicle.zoneButtons or {}) do
        if btn.zoneMapID == mapID and btn:IsShown() then
            local fn = btn:GetScript("OnClick")
            if fn then fn(btn) end
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
        if f.UpdateModeBtn then f.UpdateModeBtn() end
        f:Show() 
    end
end