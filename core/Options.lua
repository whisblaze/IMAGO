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

    -- Checkbox: Addon Aktivieren (Lokalisiert)
    local cbEnabled = CreateFrame("CheckButton", nil, panel, "InterfaceOptionsCheckButtonTemplate")
    cbEnabled:SetPoint("TOPLEFT", description, "BOTTOMLEFT", 0, -20)
    cbEnabled.Text:SetText(IMAGO.L["OPT_ENABLE"])
    cbEnabled:SetChecked(IMAGOSaved.enabled)
    cbEnabled:SetScript("OnClick", function(self) 
        IMAGOSaved.enabled = self:GetChecked() 
    end)

    -- Checkbox: Nur einmal anzeigen (Lokalisiert)
    local cbOnce = CreateFrame("CheckButton", nil, panel, "InterfaceOptionsCheckButtonTemplate")
    cbOnce:SetPoint("TOPLEFT", cbEnabled, "BOTTOMLEFT", 0, -10)
    cbOnce.Text:SetText(IMAGO.L["OPT_ONCE_ONLY"])
    cbOnce:SetChecked(IMAGOSaved.showOnceOnly)
    cbOnce:SetScript("OnClick", function(self)
        local c = self:GetChecked()
        IMAGOSaved.showOnceOnly = (c == true or c == 1)
    end)

    -- Checkbox: Popup dauerhaft anzeigen (kein Timer)
    local cbNoTimer = CreateFrame("CheckButton", nil, panel, "InterfaceOptionsCheckButtonTemplate")
    cbNoTimer:SetPoint("TOPLEFT", cbOnce, "BOTTOMLEFT", 0, -10)
    cbNoTimer.Text:SetText(IMAGO.L["OPT_NO_TIMER_CLOSE"])
    cbNoTimer:SetChecked(IMAGOSaved.noTimerClose)
    cbNoTimer:SetScript("OnClick", function(self)
        local c = self:GetChecked()
        IMAGOSaved.noTimerClose = (c == true or c == 1)
    end)

    -- Button: Historie zurücksetzen (Lokalisiert)
    local btnReset = CreateFrame("Button", nil, panel, "UIPanelButtonTemplate")
    btnReset:SetPoint("TOPLEFT", cbNoTimer, "BOTTOMLEFT", 0, -30)
    btnReset:SetSize(160, 26)
    btnReset:SetText(IMAGO.L["OPT_RESET_BTN"])
    btnReset:SetScript("OnClick", function()
        IMAGOSaved.seenZones = {}
        IMAGOSaved.discoveredZones = IMAGOSaved.seenZones
        IMAGOSaved.seenNPCs = {}
        IMAGOSaved.seenInstances = {}
        print("|cFFFFD700IMAGO:|r " .. IMAGO.L["RESET_DONE"])
    end)

    -- Slider: Skalierung (Lokalisiert)
    local sliderScale = CreateFrame("Slider", "IMAGOScaleSlider", panel, "OptionsSliderTemplate")
    sliderScale:SetPoint("TOPLEFT", btnReset, "BOTTOMLEFT", 0, -40)
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