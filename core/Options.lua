-- ============================================================
-- IMAGO — core/Options.lua
-- Interface-Optionen im standard WoW-Menü
-- ============================================================

IMAGO.Options = {}

function IMAGO.Options.Init()
    -- Haupt-Panel erstellen
    local panel = CreateFrame("Frame", "IMAGOOptionsPanel")
    panel.name = "IMAGO"

    -- Titel (Lokalisiert)
    local title = panel:CreateFontString(nil, "ARTWORK", "GameFontNormalLarge")
    title:SetPoint("TOPLEFT", 16, -16)
    title:SetText(IMAGO.L["SETTINGS_TITLE"])

    local description = panel:CreateFontString(nil, "ARTWORK", "GameFontHighlightSmall")
    description:SetPoint("TOPLEFT", title, "BOTTOMLEFT", 0, -8)
    description:SetText(IMAGO.L["SETTINGS_DESC"])

    local function CreateSectionHeader(text, anchor, x, y)
        local header = panel:CreateFontString(nil, "ARTWORK", "GameFontNormal")
        header:SetPoint("TOPLEFT", anchor, "BOTTOMLEFT", x or 0, y or -18)
        header:SetText(text)
        return header
    end

    local generalHeader = CreateSectionHeader(IMAGO.L["SETTINGS_SEC_GENERAL"], description, 0, -18)

    -- Checkbox: Addon Aktivieren (Lokalisiert)
    local cbEnabled = CreateFrame("CheckButton", nil, panel, "InterfaceOptionsCheckButtonTemplate")
    cbEnabled:SetPoint("TOPLEFT", generalHeader, "BOTTOMLEFT", 0, -10)
    cbEnabled.Text:SetText(IMAGO.L["OPT_ENABLE"])
    cbEnabled:SetChecked(IMAGOSaved.enabled)
    cbEnabled:SetScript("OnClick", function(self) 
        IMAGOSaved.enabled = self:GetChecked() and true or false
    end)

    -- Button: Historie zurücksetzen (Lokalisiert)
    local btnReset = CreateFrame("Button", nil, panel, "UIPanelButtonTemplate")
    btnReset:SetPoint("TOPLEFT", cbEnabled, "BOTTOMLEFT", 0, -14)
    btnReset:SetSize(160, 26)
    btnReset:SetText(IMAGO.L["OPT_RESET_BTN"])
    btnReset:SetScript("OnClick", function()
        IMAGOSaved.seenZones = {}
        IMAGOSaved.discoveredZones = IMAGOSaved.seenZones
        IMAGOSaved.seenNPCs = {}
        IMAGOSaved.seenInstances = {}
        print("|cFFFFD700IMAGO:|r " .. IMAGO.L["RESET_DONE"])
    end)

    local discoveryHeader = CreateSectionHeader(IMAGO.L["SETTINGS_SEC_DISCOVERY_CARD"], btnReset, 0, -22)

    -- Checkbox: Nur einmal anzeigen (NPCs)
    local cbOnceNPC = CreateFrame("CheckButton", nil, panel, "InterfaceOptionsCheckButtonTemplate")
    cbOnceNPC:SetPoint("TOPLEFT", discoveryHeader, "BOTTOMLEFT", 0, -10)
    cbOnceNPC.Text:SetText(IMAGO.L["OPT_ONCE_ONLY_NPC"])
    cbOnceNPC:SetChecked(IMAGOSaved.showOnceOnlyNPC)
    cbOnceNPC:SetScript("OnClick", function(self)
        IMAGOSaved.showOnceOnlyNPC = self:GetChecked() and true or false
    end)

    -- Checkbox: Nur einmal anzeigen (Zonen)
    local cbOnceZone = CreateFrame("CheckButton", nil, panel, "InterfaceOptionsCheckButtonTemplate")
    cbOnceZone:SetPoint("TOPLEFT", cbOnceNPC, "BOTTOMLEFT", 0, -10)
    cbOnceZone.Text:SetText(IMAGO.L["OPT_ONCE_ONLY_ZONE"])
    cbOnceZone:SetChecked(IMAGOSaved.showOnceOnlyZone)
    cbOnceZone:SetScript("OnClick", function(self)
        IMAGOSaved.showOnceOnlyZone = self:GetChecked() and true or false
    end)

    -- Checkbox: Haupt-Lorefenster offen lassen (kein Timer)
    local cbNoMainLoreTimer = CreateFrame("CheckButton", nil, panel, "InterfaceOptionsCheckButtonTemplate")
    cbNoMainLoreTimer:SetPoint("TOPLEFT", cbOnceZone, "BOTTOMLEFT", 0, -10)
    cbNoMainLoreTimer.Text:SetText(IMAGO.L["OPT_MAIN_LORE_NO_TIMER"])
    cbNoMainLoreTimer:SetChecked(IMAGOSaved.noMainLoreTimerClose)
    cbNoMainLoreTimer:SetScript("OnClick", function(self)
        IMAGOSaved.noMainLoreTimerClose = self:GetChecked() and true or false
    end)

    local flashcardsHeader = CreateSectionHeader(IMAGO.L["SETTINGS_SEC_IDLE_FLASHCARDS"], cbNoMainLoreTimer, 0, -18)

    local cbEnableFlashcards = CreateFrame("CheckButton", nil, panel, "InterfaceOptionsCheckButtonTemplate")
    cbEnableFlashcards:SetPoint("TOPLEFT", flashcardsHeader, "BOTTOMLEFT", 0, -10)
    cbEnableFlashcards.Text:SetText(IMAGO.L["OPT_ENABLE_IDLE_FLASHCARDS"])
    cbEnableFlashcards:SetChecked(IMAGOSaved.enableIdleFlashcards)
    cbEnableFlashcards:SetScript("OnClick", function(self)
        local enabled = self:GetChecked() and true or false
        IMAGOSaved.enableIdleFlashcards = enabled
        if not enabled and IMAGO.UI and IMAGO.UI.HideSnippetPopup then
            IMAGO.UI.HideSnippetPopup()
        end
    end)

    -- Checkbox: Idle Flashcards offen lassen (kein Timer)
    local cbKeepSnippetOpen = CreateFrame("CheckButton", nil, panel, "InterfaceOptionsCheckButtonTemplate")
    cbKeepSnippetOpen:SetPoint("TOPLEFT", cbEnableFlashcards, "BOTTOMLEFT", 0, -10)
    cbKeepSnippetOpen.Text:SetText(IMAGO.L["OPT_SNIPPET_NO_TIMER"])
    cbKeepSnippetOpen:SetChecked(IMAGOSaved.keepSnippetOpen)
    cbKeepSnippetOpen:SetScript("OnClick", function(self)
        IMAGOSaved.keepSnippetOpen = self:GetChecked() and true or false
    end)

    local motdHeader = CreateSectionHeader(IMAGO.L["SETTINGS_SEC_MOTD"], cbKeepSnippetOpen, 0, -18)

    local cbEnableMotD = CreateFrame("CheckButton", nil, panel, "InterfaceOptionsCheckButtonTemplate")
    cbEnableMotD:SetPoint("TOPLEFT", motdHeader, "BOTTOMLEFT", 0, -10)
    cbEnableMotD.Text:SetText(IMAGO.L["OPT_ENABLE_MOTD"])
    cbEnableMotD:SetChecked(IMAGOSaved.enableMotD)
    cbEnableMotD:SetScript("OnClick", function(self)
        IMAGOSaved.enableMotD = self:GetChecked() and true or false
    end)

    local uiHeader = CreateSectionHeader(IMAGO.L["SETTINGS_SEC_UI"], cbEnableMotD, 0, -18)

    -- Checkbox: 100% intransparente Fenster
    local cbOpaqueUI = CreateFrame("CheckButton", nil, panel, "InterfaceOptionsCheckButtonTemplate")
    cbOpaqueUI:SetPoint("TOPLEFT", uiHeader, "BOTTOMLEFT", 0, -10)
    cbOpaqueUI.Text:SetText(IMAGO.L["OPT_OPAQUE_UI"])
    cbOpaqueUI:SetChecked(IMAGOSaved.opaqueUI)
    cbOpaqueUI:SetScript("OnClick", function(self)
        IMAGOSaved.opaqueUI = self:GetChecked() and true or false
    end)

    -- Slider: Skalierung (Lokalisiert)
    local sliderScale = CreateFrame("Slider", "IMAGOScaleSlider", panel, "OptionsSliderTemplate")
    sliderScale:SetPoint("TOPLEFT", cbOpaqueUI, "BOTTOMLEFT", 0, -40)
    sliderScale:SetMinMaxValues(0.5, 2.0)
    sliderScale:SetValueStep(0.05)
    sliderScale:SetObeyStepOnDrag(true)
    sliderScale:SetValue(IMAGOSaved.frameScale or 1.0)
    
    _G[sliderScale:GetName() .. "Low"]:SetText("50%")
    _G[sliderScale:GetName() .. "High"]:SetText("200%")
    _G[sliderScale:GetName() .. "Text"]:SetText(IMAGO.L["OPT_SCALE"])

    sliderScale:SetScript("OnValueChanged", function(self, value)
        IMAGOSaved.frameScale = value
        if IMAGO.Display.frame then
            IMAGO.Display.frame:SetScale(value)
        end
    end)

    -- In das WoW Settings-Menü registrieren
    local category = Settings.RegisterCanvasLayoutCategory(panel, panel.name)
    Settings.RegisterAddOnCategory(category)
    IMAGO.settingsCategory = category
end
