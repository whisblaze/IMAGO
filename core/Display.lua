-- ============================================================
-- IMAGO — core/Display.lua
-- Die kinoreife Titelkarte: Einblenden, halten, ausblenden
-- ============================================================

IMAGO.Display = {}

local FONT_TITLE   = "Fonts\\MORPHEUS.TTF"
local FONT_BODY    = "Fonts\\FRIZQT__.TTF"
local FADE_IN_TIME = 0.6
local closeTimer = nil

local COLORS = {
    zone      = {r=1,    g=0.82, b=0},
    instance  = {r=0.6,  g=0.8,  b=1},
    npc       = {r=1,    g=0.78, b=0.1},
    encounter = {r=1,    g=0.4,  b=0.2},
}

local LABELS = {
    zone      = "",
    instance  = "⚔  ",
    npc       = "",
    encounter = "☠  ",
}

local BACKDROP_DEFAULT = {
    bgFile = "Interface\\Tooltips\\UI-Tooltip-Background",
    edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border",
    tile = true, tileSize = 16, edgeSize = 16,
    insets = { left = 4, right = 4, top = 4, bottom = 4 }
}

local BACKDROP_OPAQUE = {
    bgFile = "Interface\\Buttons\\WHITE8X8",
    edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border",
    tile = true, tileSize = 16, edgeSize = 16,
    insets = { left = 4, right = 4, top = 4, bottom = 4 }
}

local function ApplyBackdrop(f, alpha)
    local opaque = IMAGOSaved and IMAGOSaved.opaqueUI
    f:SetBackdrop(opaque and BACKDROP_OPAQUE or BACKDROP_DEFAULT)
    f:SetBackdropColor(0.05, 0.05, 0.05, opaque and 1.0 or alpha)
    f:SetBackdropBorderColor(1, 0.78, 0.1, 0.9)
end

local function countKeys(t)
    if type(t) ~= "table" then return 0 end
    local n = 0
    for _ in pairs(t) do n = n + 1 end
    return n
end

function IMAGO.GetProgress(type)
    if not IMAGOSaved or not IMAGOdb then return 0, 0 end
    
    local savedTable, dbTable
    if type == "npc" then
        savedTable = IMAGOSaved.seenNPCs
        dbTable = IMAGOdb.npcs
    elseif type == "zone" then
        savedTable = IMAGOSaved.seenZones
        dbTable = IMAGOdb.zones
    else
        return 0, 0
    end

    if not savedTable or not dbTable then return 0, 0 end
    
    local seen = 0
    for key, v in pairs(savedTable) do
        if v and dbTable[key] then seen = seen + 1 end
    end
    return seen, countKeys(dbTable)
end

local function RegisterLoreFrameForEscapeDismiss(frame)
    local name = frame:GetName()
    if not name then return end
    for i = 1, #UISpecialFrames do
        if UISpecialFrames[i] == name then return end
    end
    tinsert(UISpecialFrames, name)
end

function IMAGO.Display.HideLorePanel()
    if closeTimer then closeTimer:Cancel(); closeTimer = nil end
    local f = IMAGO.Display.frame
    if not f then return end
    if f.animFadeIn then f.animFadeIn:Stop() end
    UIFrameFadeRemoveFrame(f)
    f:SetAlpha(1)
    f:Hide()
end

local function attachProgressFontString(f)
    if f.progressText then return end
    f.progressText = f:CreateFontString(nil, "OVERLAY")
    f.progressText:SetFont(FONT_BODY, 11, "")
    f.progressText:SetPoint("TOP", f.body, "BOTTOM", 0, -10)
    f.progressText:SetWidth(620)
    f.progressText:SetJustifyH("CENTER")
    f.progressText:SetTextColor(0.58, 0.72, 0.88, 0.92)
    f.progressText:SetShadowColor(0, 0, 0, 1)
    f.progressText:SetShadowOffset(1, -1)
    f.progressText:Hide()
end

function IMAGO.Display.CreateFrame()
    if IMAGO.Display.frame then
        attachProgressFontString(IMAGO.Display.frame)
        return
    end

    local f = CreateFrame("Frame", "IMAGODisplayFrame", UIParent, "BackdropTemplate")
    f:SetSize(680, 115)

    if IMAGOSaved.framePoint then
        f:SetPoint(IMAGOSaved.framePoint, UIParent, IMAGOSaved.frameRelative, IMAGOSaved.frameX, IMAGOSaved.frameY)
    else
        f:SetPoint("BOTTOM", UIParent, "BOTTOM", 0, 180)
    end

    f:SetScale(IMAGOSaved.frameScale or 1.0)
    f:SetFrameStrata("HIGH")
    f:SetAlpha(0)
    f:Hide()

    ApplyBackdrop(f, 0.75)

    f.newBadge = f:CreateFontString(nil, "OVERLAY")
    f.newBadge:SetFont(FONT_TITLE, 20, "OUTLINE")
    f.newBadge:SetPoint("BOTTOMLEFT", f, "TOPLEFT", 15, -6)
    f.newBadge:SetTextColor(1, 0.82, 0)
    f.newBadge:SetShadowColor(0, 0, 0, 1)
    f.newBadge:SetShadowOffset(1, -1)
    f.newBadge:SetText(GetLocale() == "deDE" and "* NEU *" or "* NEW *")
    f.newBadge:Hide()

    f.lineTopLeft = f:CreateTexture(nil, "ARTWORK")
    f.lineTopLeft:SetSize(320, 1)
    f.lineTopLeft:SetPoint("TOPRIGHT", f, "TOP", 0, -12)
    f.lineTopLeft:SetTexture("Interface\\ChatFrame\\ChatFrameBackground")

    f.lineTopRight = f:CreateTexture(nil, "ARTWORK")
    f.lineTopRight:SetSize(320, 1)
    f.lineTopRight:SetPoint("TOPLEFT", f, "TOP", 0, -12)
    f.lineTopRight:SetTexture("Interface\\ChatFrame\\ChatFrameBackground")

    f.lineBottomLeft = f:CreateTexture(nil, "ARTWORK")
    f.lineBottomLeft:SetSize(320, 1)
    f.lineBottomLeft:SetPoint("BOTTOMRIGHT", f, "BOTTOM", 0, 12)
    f.lineBottomLeft:SetTexture("Interface\\ChatFrame\\ChatFrameBackground")

    f.lineBottomRight = f:CreateTexture(nil, "ARTWORK")
    f.lineBottomRight:SetSize(320, 1)
    f.lineBottomRight:SetPoint("BOTTOMLEFT", f, "BOTTOM", 0, 12)
    f.lineBottomRight:SetTexture("Interface\\ChatFrame\\ChatFrameBackground")

    f.title = f:CreateFontString(nil, "OVERLAY")
    f.title:SetFont(FONT_TITLE, 24, "OUTLINE") 
    f.title:SetPoint("TOP", f, "TOP", 0, -18)
    f.title:SetShadowColor(0, 0, 0, 1)
    f.title:SetShadowOffset(1, -1)
    f.title:SetJustifyH("CENTER")

    f.body = f:CreateFontString(nil, "OVERLAY")
    f.body:SetFont(FONT_BODY, 13, "")
    f.body:SetPoint("TOP", f.title, "BOTTOM", 0, -8)
    f.body:SetSize(620, 0)
    f.body:SetTextColor(0.95, 0.95, 0.95, 0.9)
    f.body:SetShadowColor(0, 0, 0, 1)
    f.body:SetShadowOffset(1, -1)
    f.body:SetJustifyH("CENTER")
    f.body:SetWordWrap(true)
    f.body:SetSpacing(3)

    attachProgressFontString(f)

    -- Kein UIPanelCloseButtonTemplate: in manchen Clients nicht als inherit verfügbar.
    f.closeButton = CreateFrame("Button", nil, f)
    f.closeButton:SetSize(28, 28)
    f.closeButton:SetPoint("TOPRIGHT", f, "TOPRIGHT", -4, -4)
    f.closeButton:RegisterForClicks("LeftButtonUp")

    local closeIcon = f.closeButton:CreateFontString(nil, "OVERLAY")
    closeIcon:SetFont(FONT_TITLE, 22, "OUTLINE")
    closeIcon:SetText("×")
    closeIcon:SetPoint("CENTER", 0, 0)
    closeIcon:SetTextColor(1, 0.78, 0.1, 0.75)
    f.closeButton.closeIcon = closeIcon

    f.closeButton:SetScript("OnEnter", function(self)
        if self.closeIcon then self.closeIcon:SetTextColor(1, 0.25, 0.25, 1) end
    end)
    f.closeButton:SetScript("OnLeave", function(self)
        if self.closeIcon then self.closeIcon:SetTextColor(1, 0.78, 0.1, 0.75) end
    end)
    f.closeButton:SetScript("OnClick", function()
        IMAGO.Display.HideLorePanel()
    end)

    f:SetMovable(true)
    f:EnableMouse(true)
    f:RegisterForDrag("LeftButton")
    f:SetScript("OnDragStart", f.StartMoving)
    f:SetScript("OnDragStop", function(self)
        self:StopMovingOrSizing()
        local point, _, relativePoint, xOfs, yOfs = self:GetPoint()
        IMAGOSaved.framePoint = point
        IMAGOSaved.frameRelative = relativePoint
        IMAGOSaved.frameX = xOfs
        IMAGOSaved.frameY = yOfs
    end)

    RegisterLoreFrameForEscapeDismiss(f)

    IMAGO.Display.frame = f
end

function IMAGO.Display.Show(title, bodyText, category, isNew)
    if not IMAGOSaved.enabled then return end
    if not IMAGO.Display.frame then return end

    local f = IMAGO.Display.frame
    attachProgressFontString(f)
    ApplyBackdrop(f, 0.75)
    local color = COLORS[category] or COLORS.zone
    local label = LABELS[category] or ""

    if not f.animFadeIn then
        f.animFadeIn = f:CreateAnimationGroup()
        local fadeIn = f.animFadeIn:CreateAnimation("Alpha")
        fadeIn:SetOrder(1)
        fadeIn:SetFromAlpha(0)
        fadeIn:SetToAlpha(1)
        fadeIn:SetDuration(FADE_IN_TIME)
        f.animFadeIn:SetScript("OnFinished", function()
            f:SetAlpha(1)
        end)
    end

    f.animFadeIn:Stop()
    UIFrameFadeRemoveFrame(f)

    if isNew then
        f.newBadge:Show()
    else
        f.newBadge:Hide()
    end

    f.title:SetText(label .. title)
    f.title:SetTextColor(color.r, color.g, color.b)

    f.lineTopLeft:SetGradient("HORIZONTAL", CreateColor(color.r, color.g, color.b, 0), CreateColor(color.r, color.g, color.b, 0.6))
    f.lineTopRight:SetGradient("HORIZONTAL", CreateColor(color.r, color.g, color.b, 0.6), CreateColor(color.r, color.g, color.b, 0))
    f.lineBottomLeft:SetGradient("HORIZONTAL", CreateColor(color.r, color.g, color.b, 0), CreateColor(color.r, color.g, color.b, 0.6))
    f.lineBottomRight:SetGradient("HORIZONTAL", CreateColor(color.r, color.g, color.b, 0.6), CreateColor(color.r, color.g, color.b, 0))

    f.body:SetText(bodyText or "")

    local progressBlock = 0
    local progressGap = 10
    if category == "npc" or category == "zone" then
        local seen, total = IMAGO.GetProgress(category)
        local perc = (total > 0) and math.floor((seen / total) * 100 + 0.5) or 0
        local localeKey = (category == "npc") and "DISPLAY_PROGRESS_NPC" or "DISPLAY_PROGRESS_ZONE"
        local defaultText = (category == "npc") and "Fortschritt: %d%% (%d/%d NPCs)" or "Fortschritt: %d%% (%d/%d Zonen)"
        
        f.progressText:SetText(string.format(
            IMAGO.L[localeKey] or defaultText,
            perc, seen, total
        ))
        f.progressText:Show()
        progressBlock = f.progressText:GetStringHeight() + progressGap
    else
        f.progressText:SetText("")
        f.progressText:Hide()
    end

    local titleHeight = f.title:GetStringHeight()
    local bodyHeight = f.body:GetStringHeight()
    local paddingTop, spacing, paddingBottom = 18, 8, 28
    local totalHeight = paddingTop + titleHeight + spacing + bodyHeight + progressBlock + paddingBottom
    f:SetHeight(math.max(115, totalHeight))

    -- Timer-Logik für automatisches Schließen
    if closeTimer then closeTimer:Cancel(); closeTimer = nil end
    if not IMAGOSaved.noMainLoreTimerClose then
        closeTimer = C_Timer.After(30, function()
            IMAGO.Display.HideLorePanel()
        end)
    end

    f:SetAlpha(0)
    f:Show()
    f.animFadeIn:Play()
end
