-- ============================================================
-- IMAGO — core/Eras.lua  v3  (Mockup-Neuschrieb)
-- "Eras & Expansion Summaries" — 4-Tab-System
-- Sidebar: Gruppen-Labels + Era-Items (Dot · Name · Version-Tag)
-- Content: Expansion-Banner · Tab-Bar · ScrollFrame pro Tab
-- ============================================================

IMAGO.Eras = IMAGO.Eras or {}

-- ============================================================
-- KONSTANTEN & FARBEN  (HTML-Mockup → WoW 0-1 Range)
-- ============================================================

local FONT_TITLE = "Fonts\\MORPHEUS.TTF"
local FONT_BODY  = "Fonts\\FRIZQT__.TTF"

local C_GOLD        = IMAGO_COLORS.GOLD           -- #D0AD4D  Antique Gold
local C_GOLD_DIM    = IMAGO_COLORS.GOLD_MUTED     -- #9E8135  Old Gold
local C_GOLD_BRIGHT = IMAGO_COLORS.GOLD_BRIGHT    -- #E6C766  Bright Gold
local C_TEXT_PRI    = IMAGO_COLORS.TEXT_PRIMARY   -- #E9E2D3  Warm Parchment
local C_TEXT_SEC    = IMAGO_COLORS.TEXT_SECONDARY -- #B8AE9A  Dusty Parchment
local C_TEXT_MUTED  = IMAGO_COLORS.TEXT_MUTED     -- #7E7669  Ash
local C_BG_MAIN     = IMAGO_COLORS.BG_MAIN        -- #0B0A08  Obsidian
local C_BG_SIDEBAR  = IMAGO_COLORS.BG_PANEL       -- #12100D  Black Walnut
local C_BG_CARD     = IMAGO_COLORS.BG_RAISED      -- #1A1711  Dark Bronze
local C_BG_TAB_ACT  = IMAGO_COLORS.BG_SELECTED    -- #2C2517  Bronze Shadow
local C_BORDER      = {IMAGO_COLORS.BORDER[1], IMAGO_COLORS.BORDER[2], IMAGO_COLORS.BORDER[3], 0.60}
local C_BORDER_STR  = {IMAGO_COLORS.BORDER[1], IMAGO_COLORS.BORDER[2], IMAGO_COLORS.BORDER[3], 1.00}
local C_DIVIDER     = IMAGO_COLORS.DIVIDER
local C_PURPLE_TEXT = {0.769, 0.651, 1.000}          -- #c4a6ff
local C_PURPLE_BG   = {0.416, 0.298, 0.678, 0.20}   -- rgba(106,76,173,0.20)
local C_TEAL_TEXT   = {0.478, 0.906, 0.847}          -- #7ae8d8
local LAYOUT = IMAGO.LAYOUT

local SIDEBAR_W = LAYOUT.SIDEBAR_WIDTH
local BANNER_H  = 120

-- ============================================================
-- VERSION-TAGS & RÖMISCHE ZIFFERN (pro Era-Slug)
-- ============================================================

local ERA_VERSION = {
    midnight               = "12.x",
    the_war_within         = "11.x",
    dragonflight           = "10.x",
    shadowlands            = "9.x",
    battle_for_azeroth     = "8.x",
    legion                 = "7.x",
    warlords_of_draenor    = "6.x",
    mists_of_pandaria      = "5.x",
    cataclysm              = "4.x",
    wrath_of_the_lich_king = "3.x",
    the_burning_crusade    = "2.x",
    classic                = "1.x",
}

local ERA_ROMAN = {
    midnight               = "XII",
    the_war_within         = "XI",
    dragonflight           = "X",
    shadowlands            = "IX",
    battle_for_azeroth     = "VIII",
    legion                 = "VII",
    warlords_of_draenor    = "VI",
    mists_of_pandaria      = "V",
    cataclysm              = "IV",
    wrath_of_the_lich_king = "III",
    the_burning_crusade    = "II",
    classic                = "I",
}

-- order <= MODERN_CUTOFF → "Modern Era", sonst "Classic Era"
-- Classic (1), TBC (2), WotLK (3) haben order >= 10; Cataclysm = order 9 ist Modern
local MODERN_CUTOFF = 9

-- Session-lokaler Navigationsverlauf
local erasViewHistory = {}
local ERAS_TAB_INDEX  = 3

-- Fortschrittsränge (lore-thematisch)
IMAGO.Eras.ranks = {
    { perc =   0, key = "ERAS_RANK_SEEKER"    },
    { perc =   1, key = "ERAS_RANK_APPRENTICE" },
    { perc =  25, key = "ERAS_RANK_CHRONICLER" },
    { perc =  50, key = "ERAS_RANK_ARCHIVIST"  },
    { perc =  75, key = "ERAS_RANK_LOREKEEPER" },
    { perc = 100, key = "ERAS_RANK_MASTER"     },
}

-- ============================================================
-- HILFSFUNKTIONEN
-- ============================================================

local function GetSortedEras()
    local list = {}
    for slug, data in pairs(IMAGOdb.eras or {}) do
        table.insert(list, {slug = slug, data = data})
    end
    table.sort(list, function(a, b)
        return (a.data.order or 99) < (b.data.order or 99)
    end)
    return list
end

local function PoolFS(pool, key, parent)
    if not pool[key] then
        pool[key] = parent:CreateFontString(nil, "OVERLAY")
    end
    return pool[key]
end

local function PoolTex(pool, key, parent)
    if not pool[key] then
        pool[key] = parent:CreateTexture(nil, "ARTWORK")
    end
    return pool[key]
end

local function PoolFrame(pool, key, parent, template)
    if not pool[key] then
        pool[key] = CreateFrame("Frame", nil, parent, template)
    end
    return pool[key]
end

local function PoolBtn(pool, key, parent, template)
    if not pool[key] then
        pool[key] = CreateFrame("Button", nil, parent, template)
    end
    return pool[key]
end

local function HidePool(pool)
    for _, obj in pairs(pool) do
        if obj and obj.Hide then obj:Hide() end
    end
end

local function BuildRichText(text)
    if not text or text == "" then return "" end
    return (text:gsub("{npc:([^}]+)}", function(slug)
        local d = IMAGO.GetNPCData and IMAGO.GetNPCData(slug)
        local name = (d and d.name) or (slug:gsub("_", " "):gsub("(%a)([%w_']*)", function(a, b) return a:upper() .. b end))
        return "|Himago_npc:" .. slug .. "|h|c" .. IMAGO_HEX.GOLD .. name .. "|r|h"
    end))
end

local function StyleScrollBar(scrollName)
    IMAGO.StyleScrollBar(scrollName .. "ScrollBar")
end

-- ============================================================
-- HAUPT-FRAME ERSTELLEN
-- ============================================================

function IMAGO.Eras.CreateFrame()
    local chronicle = IMAGO.Chronicle.frame
    if not chronicle then return end
    if IMAGO.Eras.frame then return end

    local E = {}
    IMAGO.Eras.frame = E

    -- --------------------------------------------------------
    -- WRAPPER  (füllt den Chronicle-Innenbereich)
    -- --------------------------------------------------------
    E.wrapper = CreateFrame("Frame", "IMAGOErasWrapper", chronicle)
    E.wrapper:SetPoint("TOPLEFT",     chronicle, "TOPLEFT",      LAYOUT.SIDEBAR_OFFSET_LEFT, -LAYOUT.WORKSPACE_TOP)
    E.wrapper:SetPoint("BOTTOMRIGHT", chronicle, "BOTTOMRIGHT", -LAYOUT.CONTENT_PADDING_RIGHT, LAYOUT.WORKSPACE_BOTTOM)
    E.wrapper:Hide()
    E.wrapper:SetScript("OnShow", IMAGO.Eras.ApplyOpaqueUI)

    E.wrapper.bg = E.wrapper:CreateTexture(nil, "BACKGROUND")
    E.wrapper.bg:SetAllPoints()
    E.wrapper.bg:SetColorTexture(unpack(C_BG_MAIN))
    E.wrapper.bg:SetAlpha((IMAGOSaved and IMAGOSaved.opaqueUI) and 1.0 or 0.95)

    -- --------------------------------------------------------
    -- LINKE SIDEBAR
    -- --------------------------------------------------------
    E.sidebar = CreateFrame("Frame", "IMAGOErasSidebar", E.wrapper)
    E.sidebar:SetPoint("TOPLEFT",    E.wrapper, "TOPLEFT",    0, 0)
    E.sidebar:SetPoint("BOTTOMLEFT", E.wrapper, "BOTTOMLEFT", 0, 0)
    E.sidebar:SetWidth(SIDEBAR_W)

    E.sidebar.bg = E.sidebar:CreateTexture(nil, "BACKGROUND")
    E.sidebar.bg:SetAllPoints()
    E.sidebar.bg:SetColorTexture(unpack(C_BG_SIDEBAR))
    E.sidebar.bg:SetAlpha((IMAGOSaved and IMAGOSaved.opaqueUI) and 1.0 or 0.85)

    -- Sidebar: rechte Trennlinie (1px, gold dim)
    do
        local line = E.sidebar:CreateTexture(nil, "ARTWORK")
        line:SetWidth(1)
        line:SetPoint("TOPRIGHT",    E.sidebar, "TOPRIGHT",    0, 0)
        line:SetPoint("BOTTOMRIGHT", E.sidebar, "BOTTOMRIGHT", 0, 0)
        line:SetColorTexture(IMAGO_COLORS.DIVIDER[1], IMAGO_COLORS.DIVIDER[2], IMAGO_COLORS.DIVIDER[3], 0.8)
    end

    -- Sidebar: Überschrift → klickbarer Overview-Button
    E.overviewBtn = CreateFrame("Button", nil, E.sidebar)
    E.overviewBtn:SetPoint("TOPLEFT",  E.sidebar, "TOPLEFT",  0, 0)
    E.overviewBtn:SetSize(SIDEBAR_W, LAYOUT.SIDEBAR_HEADER_HEIGHT)
    do
        local hl = E.overviewBtn:CreateTexture(nil, "HIGHLIGHT")
        hl:SetAllPoints()
        hl:SetColorTexture(IMAGO_COLORS.BG_HOVER[1], IMAGO_COLORS.BG_HOVER[2], IMAGO_COLORS.BG_HOVER[3], 0.3)
        local lbl = E.overviewBtn:CreateFontString(nil, "OVERLAY")
        IMAGO.ApplyTextStyle(lbl, "SIDEBAR_HEADER")
        lbl:SetPoint("LEFT", E.overviewBtn, "LEFT", 12, 0)
        lbl:SetText(IMAGO.L["ERAS_SIDEBAR_HEADING"] or "ERAS OVERVIEW")
        lbl:SetWordWrap(false)
    end
    E.overviewBtn:SetScript("OnClick", function() IMAGO.Eras.ShowErasOverview() end)

    -- Sidebar: Trennlinie unter Überschrift
    do
        local div = E.sidebar:CreateTexture(nil, "ARTWORK")
        div:SetHeight(1)
        div:SetPoint("TOPLEFT",  E.sidebar, "TOPLEFT",  0, -LAYOUT.SIDEBAR_HEADER_HEIGHT)
        div:SetPoint("TOPRIGHT", E.sidebar, "TOPRIGHT", 0, -LAYOUT.SIDEBAR_HEADER_HEIGHT)
        div:SetColorTexture(IMAGO_COLORS.DIVIDER[1], IMAGO_COLORS.DIVIDER[2], IMAGO_COLORS.DIVIDER[3], 0.8)
    end

    -- Sidebar: ScrollFrame
    E.sidebar.scroll = CreateFrame("ScrollFrame", "IMAGOErasSideScroll", E.sidebar, "UIPanelScrollFrameTemplate")
    E.sidebar.scroll:SetPoint("TOPLEFT",     E.sidebar, "TOPLEFT",     0, -LAYOUT.SIDEBAR_HEADER_HEIGHT)
    E.sidebar.scroll:SetPoint("BOTTOMRIGHT", E.sidebar, "BOTTOMRIGHT", 0, 0)
    IMAGO.StyleAndAnchorScrollBar("IMAGOErasSideScrollScrollBar", E.sidebar.scroll)

    E.sidebar.sideContent = CreateFrame("Frame", nil, E.sidebar.scroll)
    E.sidebar.sideContent:SetWidth(LAYOUT.SIDEBAR_USABLE_WIDTH)
    E.sidebar.sideContent:SetHeight(1)
    E.sidebar.scroll:SetScrollChild(E.sidebar.sideContent)

    E.sidebarRows = {}

    -- --------------------------------------------------------
    -- RECHTE CONTENT PANE
    -- --------------------------------------------------------
    E.contentPane = CreateFrame("Frame", "IMAGOErasContentPane", E.wrapper)
    E.contentPane:SetPoint("TOPLEFT",     E.sidebar, "TOPRIGHT",    LAYOUT.CONTENT_PADDING_LEFT, 0)
    E.contentPane:SetPoint("BOTTOMRIGHT", E.wrapper, "BOTTOMRIGHT", 0, 0)

    -- --------------------------------------------------------
    -- EXPANSION BANNER (BANNER_H = 120px)
    -- --------------------------------------------------------
    E.banner = CreateFrame("Frame", nil, E.contentPane)
    E.banner:SetPoint("TOPLEFT",  E.contentPane, "TOPLEFT",  0, 0)
    E.banner:SetPoint("TOPRIGHT", E.contentPane, "TOPRIGHT", 0, 0)
    E.banner:SetHeight(BANNER_H)

    -- Banner: Basis-Farbe (IMAGO-Hintergrund)
    do
        local base = E.banner:CreateTexture(nil, "BACKGROUND", nil, -2)
        base:SetAllPoints()
        base:SetColorTexture(unpack(C_BG_MAIN))
    end

    -- Banner: Era-spezifisches Artwork (bgPath)
    E.banner.eraBg = E.banner:CreateTexture(nil, "BACKGROUND", nil, -1)
    E.banner.eraBg:SetAllPoints()
    E.banner.eraBg:SetAlpha(0)

    -- Banner: Gradient-Overlay (oben leicht → unten dunkel)
    do
        local grad = E.banner:CreateTexture(nil, "ARTWORK", nil, 0)
        grad:SetAllPoints()
        grad:SetTexture("Interface\\ChatFrame\\ChatFrameBackground")
        grad:SetGradient("VERTICAL",
            CreateColor(0, 0, 0, 0.05),
            CreateColor(0, 0, 0, 0.85))
    end

    -- Banner: Dekorative Licht-Punkte ("Sterne")
    local starData = {
        {0.07, 0.15}, {0.21, 0.32}, {0.38, 0.11}, {0.52, 0.42},
        {0.68, 0.20}, {0.79, 0.55}, {0.88, 0.13}, {0.95, 0.37},
    }
    E.banner.stars = {}
    for _, s in ipairs(starData) do
        local star = E.banner:CreateTexture(nil, "OVERLAY")
        star:SetSize(2, 2)
        star:SetPoint("TOPLEFT", E.banner, "TOPLEFT",
            s[1] * 800,             -- relative X (Banner-Breite ≈ 800px)
            -(s[2] * BANNER_H))
        star:SetColorTexture(C_GOLD[1], C_GOLD[2], C_GOLD[3], 0.45)
        table.insert(E.banner.stars, star)
    end

    -- Banner: Era-Name (unten links)
    E.banner.nameLabel = E.banner:CreateFontString(nil, "OVERLAY")
    E.banner.nameLabel:SetFont(FONT_TITLE, 28, "")
    E.banner.nameLabel:SetPoint("BOTTOMLEFT", E.banner, "BOTTOMLEFT", 16, 46)
    E.banner.nameLabel:SetTextColor(C_TEXT_PRI[1], C_TEXT_PRI[2], C_TEXT_PRI[3])
    E.banner.nameLabel:SetShadowColor(0, 0, 0, 1)
    E.banner.nameLabel:SetShadowOffset(1, -1)
    E.banner.nameLabel:SetText("")

    -- Banner: Meta-Zeile (Erweiterung XII · Region)
    E.banner.metaLabel = E.banner:CreateFontString(nil, "OVERLAY")
    E.banner.metaLabel:SetFont(FONT_BODY, 11, "")
    E.banner.metaLabel:SetPoint("TOPLEFT", E.banner.nameLabel, "BOTTOMLEFT", 0, -5)
    E.banner.metaLabel:SetTextColor(unpack(C_GOLD_DIM))
    E.banner.metaLabel:SetText("")

    -- Banner: Römische Ziffer (rechts, groß, sehr transparent)
    E.banner.romanLabel = E.banner:CreateFontString(nil, "OVERLAY")
    E.banner.romanLabel:SetFont(FONT_TITLE, 40, "")
    E.banner.romanLabel:SetPoint("BOTTOMRIGHT", E.banner, "BOTTOMRIGHT", -16, 10)
    E.banner.romanLabel:SetTextColor(C_GOLD[1], C_GOLD[2], C_GOLD[3], 0.20)
    E.banner.romanLabel:SetText("")

    -- Banner: Logo (rechts, optional — gesetzt via data.logoPath)
    E.banner.logo = E.banner:CreateTexture(nil, "OVERLAY")
    E.banner.logo:SetSize(90, 70)  -- 1280x1000 Verhältnis
    E.banner.logo:SetPoint("RIGHT", E.banner, "RIGHT", -20, 8)
    E.banner.logo:SetAlpha(0)

    -- Banner: Unterlinie
    do
        local line = E.contentPane:CreateTexture(nil, "ARTWORK")
        line:SetHeight(1)
        line:SetPoint("TOPLEFT",  E.banner, "BOTTOMLEFT",  0, 0)
        line:SetPoint("TOPRIGHT", E.banner, "BOTTOMRIGHT", 0, 0)
        line:SetColorTexture(IMAGO_COLORS.DIVIDER[1], IMAGO_COLORS.DIVIDER[2], IMAGO_COLORS.DIVIDER[3], 0.8)
    end

    -- --------------------------------------------------------
    -- TAB-BAR (4 gleichbreite Buttons)
    -- --------------------------------------------------------
    local tabDefs = {
        { id = "overview",   key = "ERAS_TAB_OVERVIEW",   fallback = "Overview"   },
        { id = "story",      key = "ERAS_TAB_STORY",      fallback = "Story"      },
        { id = "patches",    key = "ERAS_TAB_PATCHES",    fallback = "Patches"    },
        { id = "characters", key = "ERAS_TAB_CHARACTERS", fallback = "Characters" },
    }

    E.tabBar = CreateFrame("Frame", nil, E.contentPane)
    E.tabBar:SetPoint("TOPLEFT",  E.banner, "BOTTOMLEFT",  0, -1)
    E.tabBar:SetPoint("TOPRIGHT", E.banner, "BOTTOMRIGHT", 0, -1)
    E.tabBar:SetHeight(36)

    do
        local bg = E.tabBar:CreateTexture(nil, "BACKGROUND")
        bg:SetAllPoints()
        bg:SetColorTexture(unpack(C_BG_MAIN))
        bg:SetAlpha(1)
    end

    E.tabs     = {}
    E.tabOrder = {}

    for i, def in ipairs(tabDefs) do
        local btn = CreateFrame("Button", nil, E.tabBar)
        btn:SetHeight(30)

        -- Hover-Highlight
        local hl = btn:CreateTexture(nil, "HIGHLIGHT")
        hl:SetAllPoints()
        hl:SetColorTexture(C_GOLD[1], C_GOLD[2], C_GOLD[3], 0.08)

        -- Aktiver Tab: leicht andersfarbiger Hintergrund
        btn.activeBg = btn:CreateTexture(nil, "BACKGROUND")
        btn.activeBg:SetAllPoints()
        btn.activeBg:SetColorTexture(unpack(C_BG_TAB_ACT))
        btn.activeBg:Hide()

        -- Tab-Beschriftung
        btn.textFS = btn:CreateFontString(nil, "OVERLAY")
        btn.textFS:SetFont(FONT_BODY, 13, "")
        btn.textFS:SetPoint("CENTER", 0, 0)
        btn.textFS:SetText(string.upper(IMAGO.L[def.key] or def.fallback))
        btn.textFS:SetTextColor(unpack(C_TEXT_MUTED))

        -- Aktive Unterlinie (2px, gold)
        btn.activeLine = btn:CreateTexture(nil, "OVERLAY")
        btn.activeLine:SetPoint("BOTTOMLEFT",  btn, "BOTTOMLEFT",   3, 0)
        btn.activeLine:SetPoint("BOTTOMRIGHT", btn, "BOTTOMRIGHT", -3, 0)
        btn.activeLine:SetHeight(2)
        btn.activeLine:SetColorTexture(unpack(C_GOLD))
        btn.activeLine:Hide()

        local tabId = def.id
        btn:SetScript("OnClick", function()
            IMAGO.Eras.ShowSubTab(tabId)
        end)

        E.tabs[def.id] = btn
        E.tabOrder[i]  = btn
    end

    -- Tabs gleichmäßig verteilen bei Größenänderung
    local function RelayoutTabs(paneW)
        paneW = paneW or E.tabBar:GetWidth()
        if not paneW or paneW < 4 then return end
        for i, btn in ipairs(E.tabOrder) do
            local x0 = math.floor((i - 1) * paneW / 4 + 0.5)
            local x1 = math.floor(i       * paneW / 4 + 0.5)
            btn:ClearAllPoints()
            btn:SetPoint("TOPLEFT",    E.tabBar, "TOPLEFT", x0, 0)
            btn:SetPoint("BOTTOMLEFT", E.tabBar, "BOTTOMLEFT", x0, 0)
            btn:SetWidth(x1 - x0)
        end
    end
    E.tabBar:SetScript("OnSizeChanged", function(_, w) RelayoutTabs(w) end)
    RelayoutTabs()

    -- Tab-Unterlinie
    do
        local line = E.contentPane:CreateTexture(nil, "ARTWORK")
        line:SetHeight(1)
        line:SetPoint("TOPLEFT",  E.tabBar, "BOTTOMLEFT",  0, 0)
        line:SetPoint("TOPRIGHT", E.tabBar, "BOTTOMRIGHT", 0, 0)
        line:SetColorTexture(IMAGO_COLORS.DIVIDER[1], IMAGO_COLORS.DIVIDER[2], IMAGO_COLORS.DIVIDER[3], 0.8)
    end

    -- --------------------------------------------------------
    -- CONTENT AREA (unterhalb Tab-Bar, Rest der Pane)
    -- --------------------------------------------------------
    E.contentArea = CreateFrame("Frame", nil, E.contentPane)
    E.contentArea:SetPoint("TOPLEFT",     E.tabBar,      "BOTTOMLEFT",  0, -1)
    E.contentArea:SetPoint("BOTTOMRIGHT", E.contentPane, "BOTTOMRIGHT", 0,  0)
    do
        local bg = E.contentArea:CreateTexture(nil, "BACKGROUND")
        bg:SetAllPoints()
        bg:SetColorTexture(unpack(C_BG_MAIN))
    end

    -- 4 ScrollFrames, eines pro Tab
    local scrollIds = {
        { id = "overview",   name = "IMAGOErasOvScroll"    },
        { id = "story",      name = "IMAGOErasStScroll"    },
        { id = "patches",    name = "IMAGOErasPaScroll"    },
        { id = "characters", name = "IMAGOErasChrScroll"   },
    }

    E.scrollFrames   = {}
    E.scrollContents = {}

    for _, si in ipairs(scrollIds) do
        local sf = CreateFrame("ScrollFrame", si.name, E.contentArea, "UIPanelScrollFrameTemplate")
        sf:SetPoint("TOPLEFT",     E.contentArea, "TOPLEFT",     0,   0)
        sf:SetPoint("BOTTOMRIGHT", E.contentArea, "BOTTOMRIGHT", -20, 0)

        local sc = CreateFrame("Frame", nil, sf)
        sc:SetWidth(1)
        sc:SetHeight(1)
        sf:SetScrollChild(sc)
        sf:Hide()

        StyleScrollBar(si.name)

        E.scrollFrames[si.id]   = sf
        E.scrollContents[si.id] = sc
    end

    -- --------------------------------------------------------
    -- LOCKED-PAGE (Entdecker-Modus, NPC noch nicht getroffen)
    -- --------------------------------------------------------
    E.lockedPage = CreateFrame("Frame", nil, E.contentPane)
    E.lockedPage:SetPoint("TOPLEFT",     E.tabBar, "BOTTOMLEFT",  0, -1)
    E.lockedPage:SetPoint("BOTTOMRIGHT", E.contentPane, "BOTTOMRIGHT", 0, 0)
    E.lockedPage:Hide()
    do
        local bg = E.lockedPage:CreateTexture(nil, "BACKGROUND")
        bg:SetAllPoints()
        bg:SetColorTexture(unpack(C_BG_MAIN))
        local lockTex = E.lockedPage:CreateTexture(nil, "ARTWORK")
        lockTex:SetSize(64, 64)
        lockTex:SetPoint("CENTER", E.lockedPage, "CENTER", 0, 80)
        lockTex:SetTexture("Interface\\LFGFrame\\LFG-Lock")
        lockTex:SetAlpha(0.45)
        E.lockedPage.title = E.lockedPage:CreateFontString(nil, "OVERLAY")
        E.lockedPage.title:SetFont(FONT_BODY, 22, "OUTLINE")
        E.lockedPage.title:SetPoint("TOP", lockTex, "BOTTOM", 0, -14)
        E.lockedPage.title:SetTextColor(C_GOLD[1], C_GOLD[2], C_GOLD[3])
        local divLine = E.lockedPage:CreateTexture(nil, "ARTWORK")
        divLine:SetSize(420, 1)
        divLine:SetPoint("TOP", E.lockedPage.title, "BOTTOM", 0, -14)
        divLine:SetColorTexture(C_GOLD[1], C_GOLD[2], C_GOLD[3], 0.25)
        E.lockedPage.body = E.lockedPage:CreateFontString(nil, "OVERLAY")
        E.lockedPage.body:SetFont(FONT_BODY, 13, "")
        E.lockedPage.body:SetPoint("TOP", divLine, "BOTTOM", 0, -18)
        E.lockedPage.body:SetWidth(500)
        E.lockedPage.body:SetJustifyH("CENTER")
        E.lockedPage.body:SetSpacing(4)
        E.lockedPage.body:SetTextColor(C_TEXT_PRI[1], C_TEXT_PRI[2], C_TEXT_PRI[3])
        E.lockedPage.hint = E.lockedPage:CreateFontString(nil, "OVERLAY")
        E.lockedPage.hint:SetFont(FONT_BODY, 11, "")
        E.lockedPage.hint:SetPoint("TOP", E.lockedPage.body, "BOTTOM", 0, -20)
        E.lockedPage.hint:SetWidth(460)
        E.lockedPage.hint:SetJustifyH("CENTER")
        E.lockedPage.hint:SetSpacing(3)
        E.lockedPage.hint:SetTextColor(C_TEXT_MUTED[1], C_TEXT_MUTED[2], C_TEXT_MUTED[3])
    end

    -- --------------------------------------------------------
    -- WIP-PAGE (coming_soon Ären)
    -- --------------------------------------------------------
    E.wipPage = CreateFrame("Frame", nil, E.contentPane)
    E.wipPage:SetPoint("TOPLEFT",     E.tabBar, "BOTTOMLEFT",  0, -1)
    E.wipPage:SetPoint("BOTTOMRIGHT", E.contentPane, "BOTTOMRIGHT", 0, 0)
    E.wipPage:Hide()
    do
        local bg = E.wipPage:CreateTexture(nil, "BACKGROUND")
        bg:SetAllPoints()
        bg:SetColorTexture(unpack(C_BG_MAIN))
        E.wipPage.title = E.wipPage:CreateFontString(nil, "OVERLAY")
        E.wipPage.title:SetFont(FONT_BODY, 22, "OUTLINE")
        E.wipPage.title:SetPoint("CENTER", E.wipPage, "CENTER", 0, 30)
        E.wipPage.title:SetTextColor(C_TEXT_MUTED[1], C_TEXT_MUTED[2], C_TEXT_MUTED[3])
        local divLine = E.wipPage:CreateTexture(nil, "ARTWORK")
        divLine:SetSize(420, 1)
        divLine:SetPoint("TOP", E.wipPage.title, "BOTTOM", 0, -14)
        divLine:SetColorTexture(C_DIVIDER[1], C_DIVIDER[2], C_DIVIDER[3], 0.45)
        E.wipPage.body = E.wipPage:CreateFontString(nil, "OVERLAY")
        E.wipPage.body:SetFont(FONT_BODY, 13, "")
        E.wipPage.body:SetPoint("TOP", divLine, "BOTTOM", 0, -18)
        E.wipPage.body:SetWidth(500)
        E.wipPage.body:SetJustifyH("CENTER")
        E.wipPage.body:SetSpacing(4)
        E.wipPage.body:SetTextColor(C_TEXT_MUTED[1], C_TEXT_MUTED[2], C_TEXT_MUTED[3])
    end

    -- --------------------------------------------------------
    -- OVERVIEW PAGE (1:1 Chronicle f.startPage-Layout)
    -- --------------------------------------------------------
    E.overviewPage = CreateFrame("Frame", nil, E.contentPane)
    E.overviewPage:SetAllPoints()
    E.overviewPage:Hide()
    do
        local bg = E.overviewPage:CreateTexture(nil, "BACKGROUND")
        bg:SetAllPoints()
        bg:SetColorTexture(unpack(C_BG_MAIN))
    end
    local sp = E.overviewPage

    -- Logo
    sp.logo = sp:CreateTexture(nil, "ARTWORK")
    sp.logo:SetSize(140, 140)
    sp.logo:SetPoint("TOP", sp, "TOP", 0, -55)
    sp.logo:SetTexture("Interface\\AddOns\\IMAGO\\Media\\Logo.tga")

    -- Logo-Linie
    sp.logoLine = sp:CreateTexture(nil, "ARTWORK")
    sp.logoLine:SetSize(520, 1)
    sp.logoLine:SetPoint("TOP", sp.logo, "BOTTOM", 0, -5)
    sp.logoLine:SetTexture("Interface\\ChatFrame\\ChatFrameBackground")
    sp.logoLine:SetGradient("HORIZONTAL",
        CreateColor(C_GOLD[1], C_GOLD[2], C_GOLD[3], 0),
        CreateColor(C_GOLD[1], C_GOLD[2], C_GOLD[3], 0.5))

    -- Rang-Label ("LORE STATUS")
    sp.rankLabel = sp:CreateFontString(nil, "OVERLAY")
    sp.rankLabel:SetFont(FONT_BODY, 13, "")
    sp.rankLabel:SetPoint("TOP", sp.logoLine, "BOTTOM", 0, -30)
    sp.rankLabel:SetTextColor(C_GOLD_DIM[1], C_GOLD_DIM[2], C_GOLD_DIM[3])

    -- Rang-Name (groß)
    sp.rankName = sp:CreateFontString(nil, "OVERLAY")
    sp.rankName:SetFont(FONT_BODY, 24, "OUTLINE")
    sp.rankName:SetPoint("TOP", sp.rankLabel, "BOTTOM", 0, -8)
    sp.rankName:SetTextColor(C_GOLD_BRIGHT[1], C_GOLD_BRIGHT[2], C_GOLD_BRIGHT[3])
    sp.rankName:SetShadowColor(0, 0, 0, 1)
    sp.rankName:SetShadowOffset(2, -2)

    sp.vLine = sp:CreateTexture(nil, "ARTWORK")
    sp.vLine:SetSize(1, 200)
    sp.vLine:SetPoint("TOP", sp.rankName, "BOTTOM", 0, -35)
    sp.vLine:SetTexture("Interface\\ChatFrame\\ChatFrameBackground")
    sp.vLine:SetGradient("VERTICAL",
        CreateColor(C_GOLD[1], C_GOLD[2], C_GOLD[3], 0.3),
        CreateColor(C_GOLD[1], C_GOLD[2], C_GOLD[3], 0))

    sp.completedLabel = sp:CreateFontString(nil, "OVERLAY")
    sp.completedLabel:SetFont(FONT_BODY, 13, "")
    sp.completedLabel:SetPoint("TOPRIGHT", sp.vLine, "TOPLEFT", -20, 0)
    sp.completedLabel:SetTextColor(C_GOLD[1], C_GOLD[2], C_GOLD[3])

    sp.completedMilestones = sp:CreateFontString(nil, "OVERLAY")
    sp.completedMilestones:SetFont(FONT_BODY, 13, "")
    sp.completedMilestones:SetPoint("TOPRIGHT", sp.completedLabel, "BOTTOMRIGHT", 0, -10)
    sp.completedMilestones:SetJustifyH("RIGHT")
    sp.completedMilestones:SetSpacing(8)

    sp.nextLabel = sp:CreateFontString(nil, "OVERLAY")
    sp.nextLabel:SetFont(FONT_BODY, 13, "")
    sp.nextLabel:SetPoint("TOPLEFT", sp.vLine, "TOPRIGHT", 20, 0)
    sp.nextLabel:SetTextColor(C_TEXT_MUTED[1], C_TEXT_MUTED[2], C_TEXT_MUTED[3])

    sp.milestones = sp:CreateFontString(nil, "OVERLAY")
    sp.milestones:SetFont(FONT_BODY, 13, "")
    sp.milestones:SetPoint("TOPLEFT", sp.nextLabel, "BOTTOMLEFT", 0, -10)
    sp.milestones:SetJustifyH("LEFT")
    sp.milestones:SetSpacing(8)

    if not sp.footer then
        sp.footer = IMAGO.CreateProgressFooter(sp, 620)
    end

    -- --------------------------------------------------------
    -- MODE-BUTTON + BACK-BUTTON in contentPane (wie Chronicle)
    -- --------------------------------------------------------
    E.erasModeBtn = CreateFrame("Button", nil, E.contentPane, "BackdropTemplate")
    E.erasModeBtn:SetSize(85, 22)
    E.erasModeBtn:SetPoint("TOPLEFT", E.contentPane, "TOPLEFT", 14, -14)
    E.erasModeBtn:SetBackdrop({ bgFile="Interface\\ChatFrame\\ChatFrameBackground", edgeFile="Interface\\Tooltips\\UI-Tooltip-Border", edgeSize=10, insets={left=3,right=3,top=3,bottom=3} })
    E.erasModeBtn:SetBackdropColor(0.05, 0.05, 0.05, 0.85)
    E.erasModeBtn:SetBackdropBorderColor(C_GOLD[1], C_GOLD[2], C_GOLD[3], 0.6)
    E.erasModeBtn.label = E.erasModeBtn:CreateFontString(nil, "OVERLAY")
    E.erasModeBtn.label:SetFont(FONT_BODY, 11, "OUTLINE")
    E.erasModeBtn.label:SetPoint("CENTER")
    E.erasModeBtn.label:SetText(IMAGO.L["MODE_LABEL"] or "Mode")
    E.erasModeBtn.label:SetTextColor(C_GOLD[1], C_GOLD[2], C_GOLD[3])
    E.erasModeBtn:SetScript("OnEnter", function() E.erasModeBtn:SetBackdropBorderColor(C_GOLD[1], C_GOLD[2], C_GOLD[3], 1) end)
    E.erasModeBtn:SetScript("OnLeave", function() E.erasModeBtn:SetBackdropBorderColor(C_GOLD[1], C_GOLD[2], C_GOLD[3], 0.6) end)

    -- Mode-Dropdown
    E.erasModeDropdown = CreateFrame("Frame", nil, E.contentPane, "BackdropTemplate")
    E.erasModeDropdown:SetSize(160, 54)
    E.erasModeDropdown:SetFrameStrata("DIALOG")
    E.erasModeDropdown:SetBackdrop({ bgFile="Interface\\ChatFrame\\ChatFrameBackground", edgeFile="Interface\\Tooltips\\UI-Tooltip-Border", edgeSize=10, insets={left=3,right=3,top=3,bottom=3} })
    E.erasModeDropdown:SetBackdropColor(0.05, 0.05, 0.05, 0.97)
    E.erasModeDropdown:SetBackdropBorderColor(C_GOLD[1], C_GOLD[2], C_GOLD[3], 0.8)
    E.erasModeDropdown:Hide()
    do
        local function CreateDropdownEntry(parent, text, yOff)
            local btn = CreateFrame("Button", nil, parent)
            btn:SetSize(150, 22)
            btn:SetPoint("TOPLEFT", parent, "TOPLEFT", 5, yOff)
            btn.check = btn:CreateTexture(nil, "ARTWORK")
            btn.check:SetSize(7, 7)
            btn.check:SetPoint("LEFT", btn, "LEFT", 6, 0)
            btn.check:SetTexture("Interface\\ChatFrame\\ChatFrameBackground")
            btn.check:SetVertexColor(0.784, 0.659, 0.294, 1)
            btn.check:Hide()
            btn.text = btn:CreateFontString(nil, "OVERLAY")
            btn.text:SetFont(FONT_BODY, 11, "")
            btn.text:SetPoint("LEFT", btn, "LEFT", 18, 0)
            btn.text:SetText(text)
            btn:SetScript("OnEnter", function(self) self.text:SetTextColor(0.878, 0.753, 0.416) end)
            btn:SetScript("OnLeave", function(self) self.text:SetTextColor(0.9, 0.9, 0.9) end)
            return btn
        end
        local entryExplorer     = CreateDropdownEntry(E.erasModeDropdown, IMAGO.L["MODE_EXPLORER"]     or "Explorer Mode",    -5)
        local entryEncyclopedia = CreateDropdownEntry(E.erasModeDropdown, IMAGO.L["MODE_ENCYCLOPEDIA"] or "Encyclopedia Mode", -27)
        local function UpdateDropdownChecks()
            local isEnc = IMAGOSaved and IMAGOSaved.erasEncyclopediaMode
            entryExplorer.check:SetShown(not isEnc)
            entryExplorer.text:SetTextColor(isEnc and 0.6 or 0.784, isEnc and 0.6 or 0.659, isEnc and 0.6 or 0.294)
            entryEncyclopedia.check:SetShown(isEnc)
            entryEncyclopedia.text:SetTextColor(isEnc and 0.784 or 0.6, isEnc and 0.659 or 0.6, isEnc and 0.294 or 0.6)
        end
        entryExplorer:SetScript("OnClick", function()
            IMAGOSaved.erasEncyclopediaMode = false
            E.erasModeDropdown:Hide()
            IMAGO.Eras.RefreshSidebar()
        end)
        entryEncyclopedia:SetScript("OnClick", function()
            if IMAGOSaved.erasEncyclopediaMode then E.erasModeDropdown:Hide() return end
            local cf = IMAGO.Chronicle and IMAGO.Chronicle.frame
            if cf and cf.ShowConfirm then
                cf.ShowConfirm(
                    IMAGO.L["CONFIRM_ENC_TITLE"] or "Enable Encyclopedia Mode",
                    IMAGO.L["ERAS_MODE_ENC_CONFIRM"] or "All eras become visible.\n\nContinue?",
                    function()
                        IMAGOSaved.erasEncyclopediaMode = true
                        E.erasModeDropdown:Hide()
                        IMAGO.Eras.RefreshSidebar()
                    end
                )
            end
        end)
        E.erasModeBtn:SetScript("OnClick", function()
            if E.erasModeDropdown:IsShown() then
                E.erasModeDropdown:Hide()
            else
                E.erasModeDropdown:ClearAllPoints()
                E.erasModeDropdown:SetPoint("TOPLEFT", E.erasModeBtn, "BOTTOMLEFT", 0, -2)
                UpdateDropdownChecks()
                E.erasModeDropdown:Show()
            end
        end)
        E.wrapper:HookScript("OnMouseDown", function()
            if E.erasModeDropdown and E.erasModeDropdown:IsShown() then
                E.erasModeDropdown:Hide()
            end
        end)
    end

    -- Render-Pools (je ein Pool pro Tab)
    E.pools = {
        overview   = {},
        story      = {},
        patches    = {},
        characters = {},
    }

    IMAGO.Eras.activeSubTab = "overview"
    IMAGO.Eras.selectedEra  = nil
end

-- ============================================================
-- SIDEBAR AUFBAUEN
-- ============================================================

local function BuildSidebar()
    local E = IMAGO.Eras.frame
    if not E then return end

    local content    = E.sidebar.sideContent
    local sortedEras = GetSortedEras()
    local ROW_H      = 36
    local y          = 6

    -- Vorherige Rows aufräumen
    for _, row in ipairs(E.sidebarRows) do
        if row.Hide then row:Hide() end
    end
    E.sidebarRows = {}

    local lastGroup = nil

    for i, entry in ipairs(sortedEras) do
        local slug = entry.slug
        local data = entry.data

        -- Gruppen-Label (nur bei Wechsel)
        local group = ((data.order or 99) <= MODERN_CUTOFF)
            and (IMAGO.L["ERAS_GROUP_MODERN"]  or "Modern Era")
            or  (IMAGO.L["ERAS_GROUP_CLASSIC"] or "Classic Era")

        if group ~= lastGroup then
            lastGroup = group
            if i > 1 then
                y = y + 10
                -- Trennlinie oberhalb der 2. Gruppe
                local div = content:CreateTexture(nil, "ARTWORK")
                div:SetHeight(1)
                div:SetPoint("TOPLEFT",  content, "TOPLEFT",  8, -y)
                div:SetPoint("TOPRIGHT", content, "TOPRIGHT", -8, -y)
                div:SetColorTexture(IMAGO_COLORS.DIVIDER[1], IMAGO_COLORS.DIVIDER[2], IMAGO_COLORS.DIVIDER[3], 0.8)
                table.insert(E.sidebarRows, div)
                y = y + 8
            end

            local glbl = content:CreateFontString(nil, "OVERLAY")
            IMAGO.ApplyTextStyle(glbl, "NAV_CATEGORY", IMAGO_COLORS.GOLD_MUTED)
            glbl:SetPoint("TOPLEFT", content, "TOPLEFT", 12, -y)
            glbl:SetText(string.upper(group))
            glbl:SetWordWrap(false)
            table.insert(E.sidebarRows, glbl)
            y = y + 18
        end

        -- Name ohne "World of Warcraft: " Präfix; Fallback wenn gsub alles entfernt (z.B. "classic")
        local rawName     = data.name or slug
        local displayName = rawName:gsub("^[Ww]orld of [Ww]arcraft:?%s*", "")
        if displayName == "" then displayName = rawName end

        -- Era-Item Button
        local row = CreateFrame("Button", nil, content)
        row:SetSize(LAYOUT.SIDEBAR_USABLE_WIDTH, ROW_H)
        row:SetPoint("TOPLEFT", content, "TOPLEFT", 0, -y)

        -- Hover-BG
        local hl = row:CreateTexture(nil, "HIGHLIGHT")
        hl:SetAllPoints()
        hl:SetColorTexture(IMAGO_COLORS.BG_HOVER[1], IMAGO_COLORS.BG_HOVER[2], IMAGO_COLORS.BG_HOVER[3], 0.3)

        -- Aktive linke Border (2px, gold)
        row.leftBorder = row:CreateTexture(nil, "OVERLAY")
        row.leftBorder:SetWidth(2)
        row.leftBorder:SetPoint("TOPLEFT",    row, "TOPLEFT",    0, 0)
        row.leftBorder:SetPoint("BOTTOMLEFT", row, "BOTTOMLEFT", 0, 0)
        row.leftBorder:SetColorTexture(unpack(C_GOLD))
        row.leftBorder:Hide()

        -- Dot (6×6)
        row.dot = row:CreateTexture(nil, "OVERLAY")
        row.dot:SetSize(6, 6)
        row.dot:SetPoint("LEFT", row, "LEFT", 12, 0)
        row.dot:SetColorTexture(unpack(C_TEXT_MUTED))

        -- Era-Name
        row.label = row:CreateFontString(nil, "OVERLAY")
        IMAGO.ApplyTextStyle(row.label, "NAV_ITEM")
        row.label:SetPoint("LEFT",  row.dot, "RIGHT", 8,    0)
        row.label:SetPoint("RIGHT", row,     "RIGHT", -40,  0)
        row.label:SetJustifyH("LEFT")
        row.label:SetWordWrap(false)

        -- Version-Tag (rechts)
        row.versionTag = row:CreateFontString(nil, "OVERLAY")
        IMAGO.ApplyTextStyle(row.versionTag, "NAV_META")
        row.versionTag:SetPoint("RIGHT", row, "RIGHT", -10, 0)
        row.versionTag:SetJustifyH("RIGHT")
        row.versionTag:SetWordWrap(false)
        row.versionTag:SetText(ERA_VERSION[slug] or "")

        row.label:SetText(displayName)
        -- Alle Eras immer anklickbar
        local s = slug
        row:SetScript("OnClick", function() IMAGO.Eras.OpenToEra(s) end)
        row:SetScript("OnEnter", function(self)
            IMAGO.ShowTooltipIfTruncated(self, self.label)
        end)
        row:SetScript("OnLeave", function()
            GameTooltip:Hide()
        end)

        -- Visueller Zustand
        local isNPCLocked = (data.unlock_npc and data.unlock_npc ~= "")
            and not (IMAGOSaved and IMAGOSaved.erasEncyclopediaMode)
            and not (IMAGOSaved.seenEras and IMAGOSaved.seenEras[slug])
        if data.coming_soon then
            row.dot:SetColorTexture(unpack(C_TEXT_MUTED))
            row.label:SetTextColor(unpack(C_TEXT_SEC))
            row.versionTag:SetTextColor(unpack(C_TEXT_MUTED))
        elseif isNPCLocked then
            row.dot:SetColorTexture(0.55, 0.22, 0.15)
            row.label:SetTextColor(0.55, 0.50, 0.44)
            row.versionTag:SetTextColor(0.48, 0.45, 0.40)
        else
            row.dot:SetColorTexture(unpack(C_TEXT_MUTED))
            row.label:SetTextColor(unpack(C_TEXT_SEC))
            row.versionTag:SetTextColor(unpack(C_TEXT_MUTED))
        end

        row.slug = slug
        table.insert(E.sidebarRows, row)
        y = y + ROW_H
    end

    content:SetHeight(math.max(1, y + 10))
    IMAGO.UpdateScrollBarVisibility(E.sidebar.scroll)
end

-- ============================================================
-- SIDEBAR-SELEKTION AKTUALISIEREN
-- ============================================================

local function UpdateSidebarSelection(activeSlug)
    local E = IMAGO.Eras.frame
    if not E then return end

    for _, row in ipairs(E.sidebarRows) do
        if row.slug then
            local isActive  = (row.slug == activeSlug)
            local isSoon    = (IMAGOdb.eras[row.slug] or {}).coming_soon

            row.leftBorder:SetShown(isActive)

            local eData = IMAGOdb.eras[row.slug] or {}
            local isNPCLocked = (eData.unlock_npc and eData.unlock_npc ~= "")
                and not (IMAGOSaved and IMAGOSaved.erasEncyclopediaMode)
                and not (IMAGOSaved.seenEras and IMAGOSaved.seenEras[row.slug])
            if isActive then
                row.dot:SetColorTexture(unpack(C_GOLD_BRIGHT))
                row.label:SetTextColor(unpack(C_GOLD_BRIGHT))
                row.versionTag:SetTextColor(unpack(C_GOLD_DIM))
            elseif isSoon then
                row.dot:SetColorTexture(unpack(C_TEXT_MUTED))
                row.label:SetTextColor(unpack(C_TEXT_MUTED))
                row.versionTag:SetTextColor(unpack(C_TEXT_MUTED))
            elseif isNPCLocked then
                row.dot:SetColorTexture(0.55, 0.22, 0.15)
                row.label:SetTextColor(0.55, 0.50, 0.44)
                row.versionTag:SetTextColor(0.48, 0.45, 0.40)
            else
                row.dot:SetColorTexture(unpack(C_TEXT_MUTED))
                row.label:SetTextColor(unpack(C_TEXT_SEC))
                row.versionTag:SetTextColor(unpack(C_TEXT_MUTED))
            end
        end
    end
end

-- ============================================================
-- DASHBOARD ANZEIGEN  (Einstiegspunkt für Chronicle Tab 4)
-- ============================================================

function IMAGO.Eras.ApplyOpaqueUI()
    local E = IMAGO.Eras.frame
    if not E then return end
    local opaque = IMAGOSaved and IMAGOSaved.opaqueUI
    if E.wrapper and E.wrapper.bg then E.wrapper.bg:SetAlpha(opaque and 1.0 or 0.95) end
    if E.sidebar and E.sidebar.bg then E.sidebar.bg:SetAlpha(opaque and 1.0 or 0.85) end
end

function IMAGO.Eras.ShowDashboard()
    if not IMAGO.Eras.frame then IMAGO.Eras.CreateFrame() end
    local E = IMAGO.Eras.frame
    E.wrapper:Show()
    IMAGO.Eras.ApplyOpaqueUI()
    if #E.sidebarRows == 0 then BuildSidebar() end
    -- Immer Overview als Startseite zeigen
    IMAGO.Eras.ShowErasOverview()
end

-- ============================================================
-- ERA ÖFFNEN
-- ============================================================

function IMAGO.Eras.OpenToEra(slug, subTab, scrollY)
    if not IMAGO.Chronicle.frame then
        IMAGO.Chronicle.CreateFrame()
    end
    if not IMAGO.Eras.frame then IMAGO.Eras.CreateFrame() end
    local E    = IMAGO.Eras.frame
    local data = IMAGOdb.eras and IMAGOdb.eras[slug]
    if not data then return end

    IMAGO.Eras.selectedEra  = slug
    IMAGO.Eras.activeSubTab = subTab or "overview"

    E.wrapper:Show()
    IMAGO.Eras.ApplyOpaqueUI()
    if #E.sidebarRows == 0 then BuildSidebar() end
    -- Overview/Locked/WIP ausblenden, Banner immer zeigen
    if E.overviewPage    then E.overviewPage:Hide()    end
    if E.lockedPage      then E.lockedPage:Hide()      end
    if E.wipPage         then E.wipPage:Hide()         end
    if E.erasModeBtn     then E.erasModeBtn:Hide()     end
    if E.erasModeDropdown then E.erasModeDropdown:Hide() end
    if E.banner          then E.banner:Show()          end
    UpdateSidebarSelection(slug)

    -- Banner: Era-BG (center-crop: kein Verzerren, nur schneiden)
    if data.bgPath and data.bgPath ~= "" then
        E.banner.eraBg:SetTexture(data.bgPath)
        E.banner.eraBg:SetTexCoord(0, 1, 0.37, 0.63)  -- zeigt vertikale Mitte ~26% des Bildes
        E.banner.eraBg:SetAlpha(0.28)
    else
        E.banner.eraBg:SetTexture(nil)
        E.banner.eraBg:SetTexCoord(0, 1, 0, 1)
        E.banner.eraBg:SetAlpha(0)
    end

    -- Banner: Name (Fallback wenn gsub alles entfernt, z.B. slug "classic")
    local rawNm = data.name or slug
    local nm    = rawNm:gsub("^[Ww]orld of [Ww]arcraft:?%s*", "")
    if nm == "" then nm = rawNm end
    E.banner.nameLabel:SetText(nm)

    -- Banner: Meta-Zeile
    local roman = ERA_ROMAN[slug] or ""
    local meta  = {}
    if slug == "classic" then
        table.insert(meta, IMAGO.L["ERAS_ORIGINAL_GAME"] or "Original Game")
    elseif roman ~= "" then
        table.insert(meta, IMAGO.L["ERAS_EXPANSION"] .. " " .. roman)
    end
    if data.region and data.region ~= "" then table.insert(meta, data.region) end
    if data.release_date then
        table.insert(meta, data.release_date)
    elseif data.year then
        table.insert(meta, tostring(data.year))
    end
    E.banner.metaLabel:SetText(table.concat(meta, " · "))
    E.banner.romanLabel:SetText(roman)

    -- Banner: Logo
    if data.logoPath and data.logoPath ~= "" then
        E.banner.logo:SetTexture(data.logoPath)
        E.banner.logo:SetAlpha(1)
        E.banner.romanLabel:SetAlpha(0)
    else
        E.banner.logo:SetTexture(nil)
        E.banner.logo:SetAlpha(0)
        E.banner.romanLabel:SetAlpha(0.20)
    end

    -- Zustand: Explorer-gesperrt / WIP / normaler Inhalt
    local isExplorerLocked = (data.unlock_npc and data.unlock_npc ~= "")
        and not (IMAGOSaved and IMAGOSaved.erasEncyclopediaMode)
        and not (IMAGOSaved.seenEras and IMAGOSaved.seenEras[slug])

    if isExplorerLocked then
        if E.tabBar      then E.tabBar:Hide()      end
        if E.contentArea then E.contentArea:Hide() end
        if E.lockedPage then
            E.lockedPage.title:SetText(IMAGO.L["ERAS_LOCKED_TITLE"] or "Not Yet Unlocked")
            E.lockedPage.body:SetText(IMAGO.L["ERAS_LOCKED_BODY"] or "Seek out the key figure of this era to learn its story.")
            E.lockedPage.hint:SetText(IMAGO.L["ERAS_LOCKED_MODEHINT"] or "Tip: Switch to Encyclopedia Mode using the Mode button.")
            E.lockedPage:Show()
        end
    elseif data.coming_soon then
        if E.tabBar      then E.tabBar:Hide()      end
        if E.contentArea then E.contentArea:Hide() end
        if E.wipPage then
            E.wipPage.title:SetText(IMAGO.L["ERAS_WIP_TITLE"] or "In Development")
            E.wipPage.body:SetText(IMAGO.L["ERAS_WIP_BODY"] or "Content for this era is still being developed. Check back soon!")
            E.wipPage:Show()
        end
    else
        if E.tabBar      then E.tabBar:Show()      end
        if E.contentArea then E.contentArea:Show() end
        IMAGO.Eras.ShowSubTab(IMAGO.Eras.activeSubTab)
        if scrollY then
            C_Timer.After(0, function()
                local sf = E.scrollFrames[IMAGO.Eras.activeSubTab]
                if sf and sf:IsShown() then sf:SetVerticalScroll(scrollY) end
            end)
        end
    end

    IMAGO.Eras.UpdateBackBtn()
end

-- ============================================================
-- SUB-TABS UMSCHALTEN
-- ============================================================

function IMAGO.Eras.ShowSubTab(mode)
    if not IMAGO.Eras.frame then return end
    local E = IMAGO.Eras.frame
    IMAGO.Eras.activeSubTab = mode

    -- Alle ScrollFrames verstecken + Pools leeren
    for id, sf in pairs(E.scrollFrames) do
        sf:Hide()
    end
    for _, pool in pairs(E.pools) do
        HidePool(pool)
    end

    -- Tab-Styling
    for id, btn in pairs(E.tabs) do
        local active = (id == mode)
        if active then
            btn.textFS:SetTextColor(C_GOLD_BRIGHT[1], C_GOLD_BRIGHT[2], C_GOLD_BRIGHT[3])
        else
            btn.textFS:SetTextColor(C_TEXT_MUTED[1], C_TEXT_MUTED[2], C_TEXT_MUTED[3])
        end
        btn.activeLine:SetShown(active)
        btn.activeBg:SetShown(active)
    end

    local slug = IMAGO.Eras.selectedEra
    if not slug then return end
    local data = IMAGOdb.eras and IMAGOdb.eras[slug]
    if not data then return end

    local sf = E.scrollFrames[mode]
    if sf then
        sf:Show()
        sf:SetVerticalScroll(0)
    end

    if     mode == "overview"   then IMAGO.Eras.RenderOverview(data)
    elseif mode == "story"      then IMAGO.Eras.RenderStory(data)
    elseif mode == "patches"    then IMAGO.Eras.RenderPatches(data)
    elseif mode == "characters" then IMAGO.Eras.RenderCharacters(data)
    end
end

-- ============================================================
-- HILFSFUNKTION: Scroll-Content-Breite ermitteln
-- ============================================================

local function GetContentW(tabId)
    local E  = IMAGO.Eras.frame
    local sf = E.scrollFrames[tabId]
    local w  = sf and sf:GetWidth() or 0
    return math.max(200, w - 24)
end

-- ============================================================
-- HILFSFUNKTIONEN FÜR TAB-RENDERING
-- ============================================================

local function GetNPCDisplayName(slug)
    if IMAGOdb.npcs then
        for _, entries in pairs(IMAGOdb.npcs) do
            if type(entries) == "table" and entries[slug] then
                local n = entries[slug].name
                if n and n ~= "" then return n end
            end
        end
    end
    return (slug:gsub("_", " "):gsub("(%a)([%w_']*)", function(a, b)
        return a:upper() .. b
    end))
end

local function GetInitials(name)
    local result = ""
    for word in name:gmatch("%a+") do
        result = result .. word:sub(1, 1):upper()
        if #result >= 2 then break end
    end
    return result ~= "" and result or "?"
end

-- ============================================================
-- TAB 1: OVERVIEW
-- ============================================================

-- Hilfsfunktion: Card-Frame aus Pool holen oder neu anlegen
local function GetCard(pool, key, parent)
    local f = pool[key]
    if not f then
        f = CreateFrame("Frame", nil, parent, "BackdropTemplate")
        f:SetBackdrop({
            bgFile   = "Interface\\Buttons\\WHITE8X8",
            edgeFile = "Interface\\Buttons\\WHITE8X8",
            tile = true, tileSize = 1, edgeSize = 1,
            insets = {left=1, right=1, top=1, bottom=1},
        })
        pool[key] = f
    end
    return f
end

function IMAGO.Eras.RenderOverview(data)
    local E       = IMAGO.Eras.frame
    local content = E.scrollContents["overview"]
    local pool    = E.pools.overview
    local W       = GetContentW("overview")
    local PAD     = 14
    local INNER   = W - PAD * 2
    local GAP     = 6    -- horizontaler Spalt zwischen 3-Spalten
    local VSEP    = 16   -- vertikaler Abstand zwischen Sektionen
    local y       = PAD

    content:SetWidth(W + 16)

    -- No-data state
    if data.coming_soon or not data.summary or data.summary == "" then
        local fs = PoolFS(pool, "nodata", content)
        fs:SetFont(FONT_BODY, 12, "")
        fs:ClearAllPoints()
        fs:SetPoint("TOPLEFT", content, "TOPLEFT", PAD, -y)
        fs:SetWidth(INNER)
        fs:SetText(IMAGO.L["ERAS_NO_DATA"] or "Keine Aufzeichnungen verfügbar.")
        fs:SetTextColor(unpack(C_TEXT_MUTED))
        fs:SetJustifyH("LEFT")
        fs:SetWordWrap(true)
        fs:Show()
        content:SetHeight(y + 60)
        IMAGO.UpdateScrollBarVisibility(E.scrollFrames["overview"])
        return
    end

    -- --------------------------------------------------------
    -- 1. HOOK TEXT  (summary mit gold linker Border)
    -- --------------------------------------------------------
    local hookBorder = PoolTex(pool, "hookBorder", content)
    hookBorder:SetWidth(2)
    hookBorder:SetColorTexture(C_GOLD_DIM[1], C_GOLD_DIM[2], C_GOLD_DIM[3], 0.9)

    local hookFS = PoolFS(pool, "hookFS", content)
    hookFS:SetFont(FONT_BODY, 15, "")
    hookFS:ClearAllPoints()
    hookFS:SetPoint("TOPLEFT", content, "TOPLEFT", PAD + 12, -y)
    hookFS:SetWidth(INNER - 14)
    hookFS:SetText(data.summary)
    hookFS:SetTextColor(unpack(C_TEXT_PRI))
    hookFS:SetJustifyH("LEFT")
    hookFS:SetSpacing(4)
    hookFS:SetWordWrap(true)
    hookFS:Show()

    local hookH = math.max(hookFS:GetStringHeight(), 14)
    hookBorder:ClearAllPoints()
    hookBorder:SetPoint("TOPLEFT",    content, "TOPLEFT", PAD, -y)
    hookBorder:SetPoint("BOTTOMLEFT", content, "TOPLEFT", PAD, -(y + hookH))
    hookBorder:Show()
    y = y + hookH + 14

    -- --------------------------------------------------------
    -- 2. KEY FACTS ROW  (Region · Antagonist · Conflict)
    -- --------------------------------------------------------
    local KF_W = math.floor((INNER - GAP * 2) / 3)
    local kfDefs = {
        { key="kf1", lbl=IMAGO.L["ERAS_STAT_REGION"]     or "Region",     val=data.region     or "—" },
        { key="kf2", lbl=IMAGO.L["ERAS_STAT_ANTAGONIST"] or "Antagonist", val=data.antagonist or "—" },
        { key="kf3", lbl=IMAGO.L["ERAS_STAT_CONFLICT"]   or "Conflict",   val=data.conflict   or "—" },
    }
    local KF_LBL_H  = 14    -- approx. Zeilenhöhe bei 11px
    local KF_GAP_LV = 8     -- Abstand Label→Wert
    local KF_MIN_H  = 84    -- Mindesthöhe der Karte
    local KF_IPAD   = 10    -- horizontaler Innenabstand
    local kfMaxH    = 0
    for i, kf in ipairs(kfDefs) do
        local card = GetCard(pool, kf.key, content)
        card:SetBackdropColor(C_BG_CARD[1], C_BG_CARD[2], C_BG_CARD[3], 1)
        card:SetBackdropBorderColor(C_BORDER[1], C_BORDER[2], C_BORDER[3], C_BORDER[4])
        card:SetWidth(KF_W)
        card:ClearAllPoints()
        card:SetPoint("TOPLEFT", content, "TOPLEFT", PAD + (i-1)*(KF_W+GAP), -y)

        local lFS = PoolFS(pool, kf.key.."L", card)
        lFS:SetFont(FONT_BODY, 14, "")
        lFS:SetWidth(KF_W - KF_IPAD * 2)
        lFS:SetText(string.upper(kf.lbl))
        lFS:SetTextColor(C_GOLD[1], C_GOLD[2], C_GOLD[3])
        lFS:SetJustifyH("CENTER")
        lFS:SetWordWrap(false)
        lFS:Show()

        local vFS = PoolFS(pool, kf.key.."V", card)
        vFS:SetFont(FONT_BODY, 15, "")
        vFS:SetWidth(KF_W - KF_IPAD * 2)
        vFS:SetText(kf.val)
        vFS:SetTextColor(unpack(C_TEXT_PRI))
        vFS:SetJustifyH("CENTER")
        vFS:SetWordWrap(true)
        vFS:Show()

        local valH     = math.max(vFS:GetStringHeight(), 18)
        local contentH = KF_LBL_H + KF_GAP_LV + valH
        local h        = math.max(KF_MIN_H, contentH + 26)
        if h > kfMaxH then kfMaxH = h end
        card:Show()
    end
    -- 2. Pass: Kartenhöhe angleichen + Inhalt vertikal zentrieren
    for _, kf in ipairs(kfDefs) do
        local c  = pool[kf.key]
        local lf = pool[kf.key.."L"]
        local vf = pool[kf.key.."V"]
        if c and lf and vf then
            c:SetHeight(kfMaxH)
            local valH     = math.max(vf:GetStringHeight(), 18)
            local contentH = KF_LBL_H + KF_GAP_LV + valH
            local topPad   = math.floor((kfMaxH - contentH) / 2)
            lf:ClearAllPoints()
            lf:SetPoint("TOPLEFT", c, "TOPLEFT", KF_IPAD, -topPad)
            vf:ClearAllPoints()
            vf:SetPoint("TOPLEFT", c, "TOPLEFT", KF_IPAD, -(topPad + KF_LBL_H + KF_GAP_LV))
            local lu = PoolTex(pool, kf.key.."LU", c)
            lu:SetHeight(1)
            lu:SetColorTexture(C_GOLD[1], C_GOLD[2], C_GOLD[3], 0.7)
            lu:ClearAllPoints()
            local textW = lf:GetStringWidth()
            local xOff  = math.floor((lf:GetWidth() - textW) / 2)
            lu:SetPoint("TOPLEFT", lf, "BOTTOMLEFT", xOff, -1)
            lu:SetWidth(textW)
            lu:Show()
        end
    end
    y = y + kfMaxH + VSEP

    -- --------------------------------------------------------
    -- 3. BIG QUESTION BOX  (optional, wenn data.fastFacts.bigQuestion)
    -- --------------------------------------------------------
    local bqText = data.fastFacts and data.fastFacts.bigQuestion
    if bqText and bqText ~= "" then
        local bqCard = GetCard(pool, "bqCard", content)
        bqCard:SetBackdropColor(C_BG_CARD[1], C_BG_CARD[2], C_BG_CARD[3], 1)
        bqCard:SetBackdropBorderColor(C_BORDER_STR[1], C_BORDER_STR[2], C_BORDER_STR[3], C_BORDER_STR[4])
        bqCard:SetWidth(INNER)
        bqCard:ClearAllPoints()
        bqCard:SetPoint("TOPLEFT", content, "TOPLEFT", PAD, -y)

        local BQ_LBL_H  = 14
        local BQ_GAP_LV = 9
        local BQ_MIN_H  = 80
        local BQ_IPAD   = 11

        local bqLbl = PoolFS(pool, "bqLbl", bqCard)
        bqLbl:SetFont(FONT_BODY, 14, "")
        bqLbl:SetWidth(INNER - BQ_IPAD * 2)
        bqLbl:SetText(string.upper(IMAGO.L["ERAS_BIG_QUESTION"] or "The Central Question"))
        bqLbl:SetTextColor(unpack(C_GOLD))
        bqLbl:SetJustifyH("CENTER")
        bqLbl:SetWordWrap(false)
        bqLbl:Show()

        local bqFS = PoolFS(pool, "bqFS", bqCard)
        bqFS:SetFont(FONT_BODY, 16, "")
        bqFS:SetWidth(INNER - BQ_IPAD * 2)
        bqFS:SetText(bqText)
        bqFS:SetTextColor(unpack(C_PURPLE_TEXT))
        bqFS:SetJustifyH("CENTER")
        bqFS:SetSpacing(3)
        bqFS:SetWordWrap(true)
        bqFS:Show()

        -- vertikal zentrieren
        local textH    = math.max(bqFS:GetStringHeight(), 20)
        local contentH = BQ_LBL_H + BQ_GAP_LV + textH
        local bqH      = math.max(BQ_MIN_H, contentH + 28)
        local topPad   = math.floor((bqH - contentH) / 2)
        bqLbl:ClearAllPoints()
        bqLbl:SetPoint("TOPLEFT", bqCard, "TOPLEFT", BQ_IPAD, -topPad)
        local bqLU = PoolTex(pool, "bqLU", bqCard)
        bqLU:SetHeight(1)
        bqLU:SetColorTexture(C_GOLD[1], C_GOLD[2], C_GOLD[3], 0.7)
        bqLU:ClearAllPoints()
        local bqLblW = bqLbl:GetStringWidth()
        local bqXOff = math.floor(((INNER - BQ_IPAD * 2) - bqLblW) / 2)
        bqLU:SetPoint("TOPLEFT", bqLbl, "BOTTOMLEFT", bqXOff, -1)
        bqLU:SetWidth(bqLblW)
        bqLU:Show()
        bqFS:ClearAllPoints()
        bqFS:SetPoint("TOPLEFT", bqCard, "TOPLEFT", BQ_IPAD, -(topPad + BQ_LBL_H + BQ_GAP_LV))

        bqCard:SetHeight(bqH)
        bqCard:Show()
        y = y + bqH + VSEP
    end

    -- --------------------------------------------------------
    -- 4. PILLARS ROW  (cosmicForces · casualties · worldScar)
    -- --------------------------------------------------------
    local ff = data.fastFacts
    if ff and (ff.cosmicForces or ff.casualties or ff.worldScar) then
        local pillarDefs = {
            { key="p1", lbl=IMAGO.L["ERAS_FF_COSMIC"]     or "Cosmic Forces",  val=ff.cosmicForces or "" },
            { key="p2", lbl=IMAGO.L["ERAS_FF_CASUALTIES"] or "Key Casualties", val=ff.casualties   or "" },
            { key="p3", lbl=IMAGO.L["ERAS_FF_WORLDSCAR"]  or "World Scar",     val=ff.worldScar    or "" },
        }
        local P_W      = math.floor((INNER - GAP * 2) / 3)
        local P_LBL_H  = 14
        local P_GAP_LV = 8
        local P_MIN_H  = 90
        local P_IPAD   = 10
        local pMaxH    = 0

        for i, pd in ipairs(pillarDefs) do
            local card = GetCard(pool, pd.key, content)
            card:SetBackdropColor(C_BG_CARD[1], C_BG_CARD[2], C_BG_CARD[3], 1)
            card:SetBackdropBorderColor(C_BORDER[1], C_BORDER[2], C_BORDER[3], C_BORDER[4])
            card:SetWidth(P_W)
            card:ClearAllPoints()
            card:SetPoint("TOPLEFT", content, "TOPLEFT", PAD + (i-1)*(P_W+GAP), -y)

            local lFS = PoolFS(pool, pd.key.."L", card)
            lFS:SetFont(FONT_BODY, 14, "")
            lFS:SetWidth(P_W - P_IPAD * 2)
            lFS:SetText(string.upper(pd.lbl))
            lFS:SetTextColor(C_GOLD[1], C_GOLD[2], C_GOLD[3])
            lFS:SetJustifyH("CENTER")
            lFS:SetWordWrap(false)
            lFS:Show()

            local tFS = PoolFS(pool, pd.key.."T", card)
            tFS:SetFont(FONT_BODY, 13, "")
            tFS:SetWidth(P_W - P_IPAD * 2)
            tFS:SetText(pd.val)
            tFS:SetTextColor(unpack(C_TEXT_PRI))
            tFS:SetJustifyH("CENTER")
            tFS:SetSpacing(2)
            tFS:SetWordWrap(true)
            tFS:Show()

            local valH     = math.max(tFS:GetStringHeight(), 16)
            local contentH = P_LBL_H + P_GAP_LV + valH
            local h        = math.max(P_MIN_H, contentH + 26)
            if h > pMaxH then pMaxH = h end
            card:Show()
        end
        -- 2. Pass: Kartenhöhe angleichen + Inhalt vertikal zentrieren
        for _, pd in ipairs(pillarDefs) do
            local c  = pool[pd.key]
            local lf = pool[pd.key.."L"]
            local tf = pool[pd.key.."T"]
            if c and lf and tf then
                c:SetHeight(pMaxH)
                local valH     = math.max(tf:GetStringHeight(), 16)
                local contentH = P_LBL_H + P_GAP_LV + valH
                local topPad   = math.floor((pMaxH - contentH) / 2)
                lf:ClearAllPoints()
                lf:SetPoint("TOPLEFT", c, "TOPLEFT", P_IPAD, -topPad)
                tf:ClearAllPoints()
                tf:SetPoint("TOPLEFT", c, "TOPLEFT", P_IPAD, -(topPad + P_LBL_H + P_GAP_LV))
                local lu = PoolTex(pool, pd.key.."LU", c)
                lu:SetHeight(1)
                lu:SetColorTexture(C_GOLD[1], C_GOLD[2], C_GOLD[3], 0.7)
                lu:ClearAllPoints()
                local textW = lf:GetStringWidth()
                local xOff  = math.floor((lf:GetWidth() - textW) / 2)
                lu:SetPoint("TOPLEFT", lf, "BOTTOMLEFT", xOff, -1)
                lu:SetWidth(textW)
                lu:Show()
            end
        end
        y = y + pMaxH + VSEP
    end

    content:SetHeight(math.max(1, y + PAD))
    IMAGO.UpdateScrollBarVisibility(E.scrollFrames["overview"])
end

-- ============================================================
-- LORE POPUP
-- ============================================================

function IMAGO.Eras.ShowLorePopup(text, title)
    if not IMAGO.Eras.lorePopup then
        local p = CreateFrame("Frame", "IMAGOErasLorePopup", UIParent, "BackdropTemplate")
        p:SetSize(620, 400)
        p:SetFrameStrata("DIALOG")
        local LORE_BACKDROP = {
            bgFile   = "Interface\\Buttons\\WHITE8X8",
            edgeFile = "Interface\\Buttons\\WHITE8X8",
            tile=true, tileSize=2, edgeSize=2,
            insets={left=2, right=2, top=2, bottom=2}
        }
        p._backdrop = LORE_BACKDROP
        p:SetBackdrop(LORE_BACKDROP)
        p:SetMovable(true)
        p:EnableMouse(true)
        p:RegisterForDrag("LeftButton")
        p:SetScript("OnDragStart", p.StartMoving)
        p:SetScript("OnDragStop",  p.StopMovingOrSizing)

        -- Schließen-Button
        local cb = CreateFrame("Button", nil, p, "UIPanelCloseButton")
        cb:SetSize(24, 24)
        cb:SetPoint("TOPRIGHT", p, "TOPRIGHT", 2, 2)
        cb:SetScript("OnClick", function() p:Hide() end)

        -- Zwei Theme-Buttons: Dunkel | Pergament
        local function MakeThemeBtn(xOff)
            local btn = CreateFrame("Button", nil, p, "BackdropTemplate")
            btn:SetSize(18, 18)
            btn:SetPoint("TOPRIGHT", p, "TOPRIGHT", xOff, -4)
            btn:SetBackdrop({ bgFile="Interface\\Buttons\\WHITE8X8",
                              edgeFile="Interface\\Buttons\\WHITE8X8", edgeSize=1 })
            local hl = btn:CreateTexture(nil, "HIGHLIGHT")
            hl:SetAllPoints()
            hl:SetColorTexture(1, 1, 1, 0.18)
            return btn
        end
        p._darkBtn  = MakeThemeBtn(-52)
        p._parchBtn = MakeThemeBtn(-32)
        -- Dunkel-Button: C_BG_CARD Farbe
        p._darkBtn:SetBackdropColor(C_BG_CARD[1], C_BG_CARD[2], C_BG_CARD[3], 1)
        -- Pergament-Button: warmes Creme
        p._parchBtn:SetBackdropColor(0.84, 0.78, 0.60, 1)

        -- Headline (lesbare Schrift)
        p.headlineFS = p:CreateFontString(nil, "OVERLAY")
        p.headlineFS:SetFont(FONT_BODY, 14, "")
        p.headlineFS:SetPoint("TOPLEFT",  p, "TOPLEFT",  12, -10)
        p.headlineFS:SetPoint("TOPRIGHT", p, "TOPRIGHT", -76, -10)
        p.headlineFS:SetWordWrap(false)
        p.headlineFS:SetText(IMAGO.L["ERAS_LORE_HEADLINE"] or "Would you like to know the whole story?")

        -- Subtitle (Kampagnenname)
        p.titleFS = p:CreateFontString(nil, "OVERLAY")
        p.titleFS:SetFont(FONT_BODY, 11, "")
        p.titleFS:SetPoint("TOPLEFT",  p, "TOPLEFT",  12, -28)
        p.titleFS:SetPoint("TOPRIGHT", p, "TOPRIGHT", -76, -28)
        p.titleFS:SetWordWrap(false)

        -- Trennlinie
        local div = p:CreateTexture(nil, "ARTWORK")
        div:SetHeight(1)
        div:SetPoint("TOPLEFT",  p, "TOPLEFT",  6, -46)
        div:SetPoint("TOPRIGHT", p, "TOPRIGHT", -6, -46)
        p._div = div

        -- ScrollFrame für langen Text
        local sf = CreateFrame("ScrollFrame", "IMAGOLoreScroll", p, "UIPanelScrollFrameTemplate")
        sf:SetPoint("TOPLEFT",     p, "TOPLEFT",     8, -52)
        sf:SetPoint("BOTTOMRIGHT", p, "BOTTOMRIGHT", -24, 8)
        StyleScrollBar("IMAGOLoreScroll")

        local sc = CreateFrame("Frame", nil, sf)
        sc:SetWidth(sf:GetWidth() or 570)
        sc:SetHeight(1)
        sf:SetScrollChild(sc)

        p.textFS = sc:CreateFontString(nil, "OVERLAY")
        p.textFS:SetFont(FONT_BODY, 13, "")
        p.textFS:SetPoint("TOPLEFT",  sc, "TOPLEFT",  4, -8)
        p.textFS:SetPoint("TOPRIGHT", sc, "TOPRIGHT", -4, -8)
        p.textFS:SetTextColor(unpack(C_TEXT_PRI))
        p.textFS:SetJustifyH("LEFT")
        p.textFS:SetSpacing(4)
        p.textFS:SetWordWrap(true)

        p._sc = sc
        p._sf = sf
        p._darkMode = true

        -- Inline-Farben im Text je nach Theme ersetzen
        local function ProcessLoreText(raw, darkMode)
            if darkMode or not raw then return raw end
            local t = raw:gsub("|cFFc8a84b", "|cFF3D1A00")  -- Gold → Dunkelbraun (Sektion)
                         :gsub("|c" .. IMAGO_HEX.GOLD, "|cFF3D1A00")
                         :gsub("|cFFe0c06a", "|cFF5C2E00")  -- Hell-Gold → Braun (Questname)
                         :gsub("|c" .. IMAGO_HEX.GOLD_BRIGHT, "|cFF5C2E00")
            return t
        end
        p._processText = ProcessLoreText

        local function ApplyTheme()
            p:SetBackdrop(p._backdrop)
            if p._darkMode then
                p:SetBackdropColor(C_BG_CARD[1], C_BG_CARD[2], C_BG_CARD[3], 1)
                p:SetBackdropBorderColor(C_GOLD[1], C_GOLD[2], C_GOLD[3], 0.9)
                p.headlineFS:SetTextColor(C_GOLD[1], C_GOLD[2], C_GOLD[3])
                p.titleFS:SetTextColor(C_GOLD_DIM[1], C_GOLD_DIM[2], C_GOLD_DIM[3])
                p.textFS:SetTextColor(unpack(C_TEXT_PRI))
                p._div:SetColorTexture(IMAGO_COLORS.DIVIDER[1], IMAGO_COLORS.DIVIDER[2], IMAGO_COLORS.DIVIDER[3], 0.8)
                -- Dunkel-Button: aktiv (gold Rahmen), Pergament-Button: inaktiv
                p._darkBtn:SetBackdropBorderColor(C_GOLD[1], C_GOLD[2], C_GOLD[3], 1)
                p._parchBtn:SetBackdropBorderColor(0.40, 0.32, 0.18, 0.45)
            else
                p:SetBackdropColor(0.84, 0.78, 0.60, 1)
                p:SetBackdropBorderColor(0.50, 0.36, 0.14, 0.9)
                p.headlineFS:SetTextColor(0.28, 0.18, 0.04, 1)
                p.titleFS:SetTextColor(0.46, 0.32, 0.10, 1)
                p.textFS:SetTextColor(0.10, 0.06, 0.02, 1)
                p._div:SetColorTexture(0.50, 0.38, 0.18, 0.6)
                -- Pergament-Button: aktiv (dunkelbraun Rahmen), Dunkel-Button: inaktiv
                p._parchBtn:SetBackdropBorderColor(0.30, 0.16, 0.04, 1)
                p._darkBtn:SetBackdropBorderColor(C_BG_CARD[1]+0.15, C_BG_CARD[2]+0.15, C_BG_CARD[3]+0.15, 0.45)
            end
            if p._rawText then
                p.textFS:SetText(ProcessLoreText(p._rawText, p._darkMode))
            end
        end
        p._applyTheme = ApplyTheme

        p._darkBtn:SetScript("OnClick", function()
            p._darkMode = true
            p._applyTheme()
        end)
        p._parchBtn:SetScript("OnClick", function()
            p._darkMode = false
            p._applyTheme()
        end)

        p:Hide()
        IMAGO.Eras.lorePopup = p
    end

    local p   = IMAGO.Eras.lorePopup
    local PAD = 12
    p._rawText = text or ""
    p.titleFS:SetText(title or "")
    p.textFS:SetText(p._processText(p._rawText, p._darkMode))

    local sfW = p:GetWidth() - 32
    p.textFS:SetWidth(sfW - 8)
    p._sc:SetWidth(sfW)

    local textH = math.max(p.textFS:GetStringHeight(), 20)
    p._sc:SetHeight(textH + 16)
    p:SetHeight(math.min(52 + textH + 16 + PAD, 580))
    p._applyTheme()

    if p._sf then p._sf:SetVerticalScroll(0) end

    p:ClearAllPoints()
    p:SetPoint("CENTER", UIParent, "CENTER", 0, 40)
    p:Show()
    p:Raise()
end

-- ============================================================
-- IMAGE POPUP (Artwork)
-- ============================================================

function IMAGO.Eras.ShowImagePopup(texturePath, logo_w, logo_h)
    if not IMAGO.Eras.imagePopup then
        local overlay = CreateFrame("Frame", "IMAGOErasImagePopupOverlay", UIParent)
        overlay:SetFrameStrata("DIALOG")
        overlay:SetAllPoints(UIParent)
        overlay:EnableMouse(true)
        overlay:EnableKeyboard(true)
        overlay:SetScript("OnMouseDown", function(self)
            IMAGO.Eras.imagePopup:Hide()
            self:Hide()
        end)
        overlay:SetScript("OnKeyDown", function(self, key)
            if key == "ESCAPE" then
                IMAGO.Eras.imagePopup:Hide()
                self:Hide()
            end
        end)
        overlay:Hide()

        local p = CreateFrame("Frame", "IMAGOErasImagePopup", overlay, "BackdropTemplate")
        p:SetFrameStrata("DIALOG")
        local IMG_BACKDROP = {
            bgFile   = "Interface\\Buttons\\WHITE8X8",
            edgeFile = "Interface\\Buttons\\WHITE8X8",
            tile=true, tileSize=2, edgeSize=2,
            insets={left=2, right=2, top=2, bottom=2}
        }
        p._backdrop = IMG_BACKDROP
        p:SetBackdrop(IMG_BACKDROP)
        p:SetBackdropColor(C_BG_CARD[1], C_BG_CARD[2], C_BG_CARD[3], 1)
        p:SetBackdropBorderColor(C_GOLD[1], C_GOLD[2], C_GOLD[3], 0.9)
        p:EnableMouse(true)

        local cb = CreateFrame("Button", nil, p, "UIPanelCloseButton")
        cb:SetSize(24, 24)
        cb:SetPoint("TOPRIGHT", p, "TOPRIGHT", 2, 2)
        cb:SetScript("OnClick", function()
            IMAGO.Eras.imagePopup:Hide()
            overlay:Hide()
        end)

        p.logoTex = p:CreateTexture(nil, "ARTWORK")
        p.logoTex:SetPoint("CENTER", p, "CENTER", 0, 0)

        IMAGO.Eras.imagePopup = p
        IMAGO.Eras.imagePopupOverlay = overlay
    end

    local p       = IMAGO.Eras.imagePopup
    local overlay = IMAGO.Eras.imagePopupOverlay
    local MAX_W, MAX_H = 900, 560
    local PADDING = 24

    local ratio = logo_w / logo_h
    local display_w, display_h
    if ratio >= 1 then
        display_w = math.min(logo_w, MAX_W)
        display_h = display_w / ratio
    else
        display_h = math.min(logo_h, MAX_H)
        display_w = display_h * ratio
    end

    p:SetSize(display_w + PADDING * 2, display_h + PADDING * 2)
    p:SetBackdrop(p._backdrop)
    p:SetBackdropColor(C_BG_CARD[1], C_BG_CARD[2], C_BG_CARD[3], 1)
    p:SetBackdropBorderColor(C_GOLD[1], C_GOLD[2], C_GOLD[3], 0.9)
    p.logoTex:SetTexture(texturePath)
    p.logoTex:SetSize(display_w, display_h)
    p:ClearAllPoints()
    p:SetPoint("CENTER", UIParent, "CENTER", 0, 0)
    overlay:Show()
    p:Show()
    p:Raise()
end

-- ============================================================
-- HILFSFUNKTION: Artwork-Strip erstellen/updaten
-- ============================================================

local ART_W   = 22
local ART_GAP = 2

local function ApplyArtworkStrip(pool, key, content, card, cardH, logoPath, logo_w, logo_h)
    local artStrip = PoolBtn(pool, key .. "_artstrip", content)
    artStrip:ClearAllPoints()
    artStrip:SetPoint("TOPLEFT",    card, "TOPRIGHT",    ART_GAP, 0)
    artStrip:SetPoint("BOTTOMLEFT", card, "BOTTOMRIGHT", ART_GAP, 0)
    artStrip:SetWidth(ART_W)

    if not artStrip._artStyled then
        artStrip._artStyled = true
        local bg = artStrip:CreateTexture(nil, "BACKGROUND")
        bg:SetAllPoints()
        bg:SetColorTexture(0.05, 0.04, 0.02, 1)
        local hl = artStrip:CreateTexture(nil, "HIGHLIGHT")
        hl:SetAllPoints()
        hl:SetColorTexture(C_GOLD[1], C_GOLD[2], C_GOLD[3], 0.18)
        local bdr = CreateFrame("Frame", nil, artStrip, "BackdropTemplate")
        bdr:SetAllPoints()
        bdr:SetBackdrop({ edgeFile="Interface\\Buttons\\WHITE8X8", edgeSize=1 })
        bdr:SetBackdropBorderColor(C_GOLD[1], C_GOLD[2], C_GOLD[3], 0.65)
        artStrip._lbl = artStrip:CreateFontString(nil, "OVERLAY")
        artStrip._lbl:SetFont(FONT_BODY, 9, "")
        artStrip._lbl:SetJustifyH("CENTER")
        artStrip._lbl:SetPoint("CENTER", artStrip, "CENTER", 0, 0)
        artStrip._lbl:SetTextColor(C_GOLD[1], C_GOLD[2], C_GOLD[3])
    end

    artStrip._lbl:SetText("A\nR\nT\nW\nO\nR\nK")
    artStrip._lbl:SetSpacing(2)

    if logoPath and logoPath ~= "" then
        local thePath = logoPath
        local theW    = logo_w or 400
        local theH    = logo_h or 300
        artStrip:SetScript("OnClick", function()
            IMAGO.Eras.ShowImagePopup(thePath, theW, theH)
        end)
    else
        artStrip:SetScript("OnClick", nil)
    end
    artStrip:SetAlpha(1)
    artStrip:Show()
end

-- ============================================================
-- ERAS FORTSCHRITT
-- ============================================================

function IMAGO.Eras.GetProgress()
    local total, seen = 0, 0
    for slug, _ in pairs(IMAGOdb.eras or {}) do
        total = total + 1
        if IMAGOSaved.seenEras and IMAGOSaved.seenEras[slug] then
            seen = seen + 1
        end
    end
    local pct = total > 0 and (seen / total * 100) or 0
    return seen, total, pct
end

function IMAGO.Eras.IsEraUnlocked(slug)
    if IMAGOSaved and IMAGOSaved.erasEncyclopediaMode then return true end
    local data = IMAGOdb.eras and IMAGOdb.eras[slug]
    if not data then return false end
    if not data.unlock_npc or data.unlock_npc == "" then return true end
    return IMAGOSaved.seenEras and IMAGOSaved.seenEras[slug] or false
end

function IMAGO.Eras.RefreshSidebar()
    local E = IMAGO.Eras.frame
    if not E then return end
    for _, row in ipairs(E.sidebarRows) do
        if row.Hide then row:Hide() end
    end
    E.sidebarRows = {}
    BuildSidebar()
    UpdateSidebarSelection(IMAGO.Eras.selectedEra)
end

-- ============================================================
-- ERAS OVERVIEW PAGE
-- ============================================================

local function RenderErasOverview()
    local E = IMAGO.Eras.frame
    if not E or not E.overviewPage then return end
    local sp = E.overviewPage
    if not sp.rankLabel then return end  -- noch nicht initialisiert

    local seen, total, pct = IMAGO.Eras.GetProgress()

    local rankKey = "ERAS_RANK_SEEKER"
    for _, r in ipairs(IMAGO.Eras.ranks) do
        if pct >= r.perc then rankKey = r.key end
    end
    local rankTitle = IMAGO.L[rankKey] or rankKey

    sp.rankLabel:SetText(IMAGO.L["ERAS_LORE_STATUS"] or "LORE STATUS")
    sp.rankName:SetText(rankTitle)
    sp.completedLabel:SetText(IMAGO.L["ERAS_REACHED_RANKS"] or "REACHED MILESTONES:")
    sp.nextLabel:SetText(IMAGO.L["ERAS_NEXT_RANKS"] or "UPCOMING DISCOVERIES:")

    local completedStr, nextStr = "", ""
    local atWord = IMAGO.L["WORD_AT"] or "at"
    for _, r in ipairs(IMAGO.Eras.ranks) do
        local rTitle = IMAGO.L[r.key] or r.key
        if r.perc <= pct then
            completedStr = completedStr .. string.format("|c%s%s (%s %d%%)|r\n", IMAGO_HEX.GOLD, rTitle, atWord, r.perc)
        else
            nextStr = nextStr .. string.format("|c%s%s (%s %d%%)|r\n", IMAGO_HEX.TEXT_MUTED, rTitle, atWord, r.perc)
        end
    end
    sp.completedMilestones:SetText(completedStr == "" and (IMAGO.L["STARTPAGE_NO_MILESTONES"] or "None yet.") or completedStr)
    sp.milestones:SetText(nextStr == "" and (IMAGO.L["STARTPAGE_MAX_REACHED"] or "|c" .. IMAGO_HEX.SUCCESS .. "MAX REACHED!|r") or nextStr)

    local progressText = string.format(
        IMAGO.L["ERAS_PROGRESS"] or "%d / %d Eras Documented (%d%%)",
        seen, total, math.floor(pct)
    )
    IMAGO.UpdateProgressFooter(sp.footer, seen, total, rankTitle, progressText)
end

function IMAGO.Eras.ShowErasOverview()
    local E = IMAGO.Eras.frame
    if not E then return end
    if E.banner          then E.banner:Hide()          end
    if E.tabBar          then E.tabBar:Hide()          end
    if E.contentArea     then E.contentArea:Hide()     end
    if E.lockedPage      then E.lockedPage:Hide()      end
    if E.wipPage         then E.wipPage:Hide()         end
    if E.erasModeBtn     then E.erasModeBtn:Show()     end
    IMAGO.Eras.selectedEra = nil
    if E.overviewPage then
        E.overviewPage:Show()
        RenderErasOverview()
    end
    UpdateSidebarSelection(nil)
end

-- ============================================================
-- ERA DISCOVERY DIALOG
-- ============================================================

function IMAGO.Eras.ShowEraDiscoveryDialog(eraSlug, npcData)
    local eraData = IMAGOdb.eras and IMAGOdb.eras[eraSlug]
    if not eraData then return end

    if not IMAGO.Eras.discoveryDialog then
        local d = CreateFrame("Frame", "IMAGOErasDiscoveryDialog", UIParent, "BackdropTemplate")
        d:SetSize(390, 210)
        d:SetFrameStrata("DIALOG")
        d:SetBackdrop({
            bgFile   = "Interface\\ChatFrame\\ChatFrameBackground",
            edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border",
            edgeSize = 14,
            insets   = {left=4, right=4, top=4, bottom=4},
        })
        d:SetBackdropColor(0.05, 0.04, 0.02, 0.97)
        d:SetBackdropBorderColor(C_GOLD[1], C_GOLD[2], C_GOLD[3], 0.9)
        d:SetPoint("CENTER", UIParent, "CENTER", 0, 60)
        d:EnableMouse(true)
        d:SetMovable(true)
        d:RegisterForDrag("LeftButton")
        d:SetScript("OnDragStart", function(self) self:StartMoving() end)
        d:SetScript("OnDragStop",  function(self) self:StopMovingOrSizing() end)

        d.titleFS = d:CreateFontString(nil, "OVERLAY")
        d.titleFS:SetFont(FONT_TITLE, 16, "")
        d.titleFS:SetPoint("TOP", d, "TOP", 0, -18)
        d.titleFS:SetTextColor(C_GOLD[1], C_GOLD[2], C_GOLD[3])
        d.titleFS:SetJustifyH("CENTER")
        d.titleFS:SetWidth(350)

        local div = d:CreateTexture(nil, "ARTWORK")
        div:SetHeight(1)
        div:SetPoint("TOPLEFT",  d, "TOPLEFT",  14, -40)
        div:SetPoint("TOPRIGHT", d, "TOPRIGHT", -14, -40)
        div:SetColorTexture(C_GOLD[1], C_GOLD[2], C_GOLD[3], 0.35)

        d.eraLogo = d:CreateTexture(nil, "ARTWORK")
        d.eraLogo:SetSize(68, 68)
        d.eraLogo:SetPoint("TOPLEFT", d, "TOPLEFT", 18, -50)

        d.bodyFS = d:CreateFontString(nil, "OVERLAY")
        d.bodyFS:SetFont(FONT_BODY, 13, "")
        d.bodyFS:SetPoint("TOPLEFT",  d, "TOPLEFT",  96, -52)
        d.bodyFS:SetPoint("TOPRIGHT", d, "TOPRIGHT", -14, -52)
        d.bodyFS:SetTextColor(unpack(C_TEXT_PRI))
        d.bodyFS:SetJustifyH("LEFT")
        d.bodyFS:SetWordWrap(true)
        d.bodyFS:SetSpacing(3)

        -- Accept Button
        d.acceptBtn = CreateFrame("Button", nil, d, "BackdropTemplate")
        d.acceptBtn:SetSize(170, 30)
        d.acceptBtn:SetPoint("BOTTOMLEFT", d, "BOTTOMLEFT", 18, 14)
        d.acceptBtn:SetBackdrop({ edgeFile="Interface\\Buttons\\WHITE8X8", edgeSize=1 })
        d.acceptBtn:SetBackdropBorderColor(C_GOLD[1], C_GOLD[2], C_GOLD[3], 0.8)
        do
            local abg = d.acceptBtn:CreateTexture(nil, "BACKGROUND")
            abg:SetAllPoints()
            abg:SetColorTexture(C_GOLD[1]*0.18, C_GOLD[2]*0.18, C_GOLD[3]*0.08, 0.95)
            local ahl = d.acceptBtn:CreateTexture(nil, "HIGHLIGHT")
            ahl:SetAllPoints()
            ahl:SetColorTexture(C_GOLD[1], C_GOLD[2], C_GOLD[3], 0.22)
        end
        d.acceptBtn.label = d.acceptBtn:CreateFontString(nil, "OVERLAY")
        d.acceptBtn.label:SetFont(FONT_BODY, 12, "")
        d.acceptBtn.label:SetPoint("CENTER")
        d.acceptBtn.label:SetTextColor(C_GOLD[1], C_GOLD[2], C_GOLD[3])

        -- Decline Button
        d.declineBtn = CreateFrame("Button", nil, d, "BackdropTemplate")
        d.declineBtn:SetSize(150, 30)
        d.declineBtn:SetPoint("BOTTOMRIGHT", d, "BOTTOMRIGHT", -18, 14)
        d.declineBtn:SetBackdrop({ edgeFile="Interface\\Buttons\\WHITE8X8", edgeSize=1 })
        d.declineBtn:SetBackdropBorderColor(0.38, 0.38, 0.38, 0.6)
        do
            local dbg = d.declineBtn:CreateTexture(nil, "BACKGROUND")
            dbg:SetAllPoints()
            dbg:SetColorTexture(0.10, 0.10, 0.10, 0.95)
            local dhl = d.declineBtn:CreateTexture(nil, "HIGHLIGHT")
            dhl:SetAllPoints()
            dhl:SetColorTexture(0.3, 0.3, 0.3, 0.28)
        end
        d.declineBtn.label = d.declineBtn:CreateFontString(nil, "OVERLAY")
        d.declineBtn.label:SetFont(FONT_BODY, 12, "")
        d.declineBtn.label:SetPoint("CENTER")
        d.declineBtn.label:SetTextColor(0.68, 0.68, 0.68)

        tinsert(UISpecialFrames, "IMAGOErasDiscoveryDialog")
        IMAGO.Eras.discoveryDialog = d
    end

    local d = IMAGO.Eras.discoveryDialog

    -- Inhalte befüllen
    d.titleFS:SetText(npcData and npcData.name or "")
    if eraData.logoPath and eraData.logoPath ~= "" then
        d.eraLogo:SetTexture(eraData.logoPath)
        d.eraLogo:SetAlpha(1)
    else
        d.eraLogo:SetTexture(nil)
        d.eraLogo:SetAlpha(0)
    end
    d.bodyFS:SetText(IMAGO.L["ERAS_DISC_BODY"] or "I have an interesting story for you. Would you like to hear it?")
    d.acceptBtn.label:SetText(IMAGO.L["ERAS_DISC_ACCEPT"]  or "Tell me more")
    d.declineBtn.label:SetText(IMAGO.L["ERAS_DISC_DECLINE"] or "Maybe later")

    local theSlug = eraSlug
    d.acceptBtn:SetScript("OnClick", function()
        IMAGOSaved.seenEras = IMAGOSaved.seenEras or {}
        IMAGOSaved.seenEras[theSlug] = true
        d:Hide()
        IMAGO.Eras.RefreshSidebar()
        if IMAGO.Chronicle and IMAGO.Chronicle.frame then
            IMAGO.Chronicle.frame:Show()
            IMAGO.Chronicle.SelectMainTab(ERAS_TAB_INDEX)
        end
        IMAGO.Eras.OpenToEra(theSlug)
    end)
    d.declineBtn:SetScript("OnClick", function()
        IMAGOSaved.seenEras = IMAGOSaved.seenEras or {}
        IMAGOSaved.seenEras[theSlug] = true
        d:Hide()
        IMAGO.Eras.RefreshSidebar()
    end)

    d:ClearAllPoints()
    d:SetPoint("CENTER", UIParent, "CENTER", 0, 60)
    d:Show()
    d:Raise()
end

-- ============================================================
-- TAB 2: STORY
-- ============================================================

function IMAGO.Eras.RenderStory(data)
    local E       = IMAGO.Eras.frame
    local content = E.scrollContents["story"]
    local pool    = E.pools.story
    local W       = GetContentW("story")
    local PAD     = 14
    local RPAD    = PAD
    local INNER   = W - PAD - RPAD
    local y       = PAD

    content:SetWidth(W + 16)

    local camps = data.campaigns or {}
    if #camps == 0 then
        local fs = PoolFS(pool, "nodata", content)
        fs:SetFont(FONT_BODY, 12, "")
        fs:ClearAllPoints()
        fs:SetPoint("TOPLEFT", content, "TOPLEFT", PAD, -y)
        fs:SetWidth(INNER)
        fs:SetText(IMAGO.L["ERAS_NO_DATA"] or "Keine Aufzeichnungen verfügbar.")
        fs:SetTextColor(unpack(C_TEXT_MUTED))
        fs:SetJustifyH("LEFT")
        fs:SetWordWrap(true)
        fs:Show()
        content:SetHeight(y + 60)
        IMAGO.UpdateScrollBarVisibility(E.scrollFrames["story"])
        return
    end

    local HEADER_H  = 38
    local BADGE_H    = 18
    local BADGE_YOFF = 10
    local LORE_W     = 28   -- Platz für Lore-Button rechts

    for i, cam in ipairs(camps) do
        local key  = "sc_" .. i
        local card = GetCard(pool, key, content)
        card:SetBackdropColor(C_BG_CARD[1], C_BG_CARD[2], C_BG_CARD[3], 1)
        card:SetBackdropBorderColor(C_BORDER[1], C_BORDER[2], C_BORDER[3], C_BORDER[4])
        card:SetWidth(INNER - ART_W - ART_GAP)
        card:ClearAllPoints()
        card:SetPoint("TOPLEFT", content, "TOPLEFT", PAD, -y)
        -- NPC-Hyperlink-Handler (einmalig pro card-Objekt)
        if not card._npcSetup then
            card._npcSetup = true
            card:EnableMouse(true)
            card:SetScript("OnHyperlinkClick", function(self, link, text, button)
                local slug = link:match("^imago_npc:(.+)$")
                if slug then
                    IMAGO.Eras.NavigateToNPC(slug)
                end
            end)
        end

        -- Zone-Tag Pill-Badge (dynamische Breite)
        local zBG = GetCard(pool, key .. "_zbg", card)
        zBG:SetBackdropColor(C_GOLD[1]*0.18, C_GOLD[2]*0.18, C_GOLD[3]*0.10, 1)
        zBG:SetBackdropBorderColor(C_GOLD[1], C_GOLD[2], C_GOLD[3], 0.8)
        zBG:ClearAllPoints()
        zBG:SetPoint("TOPLEFT", card, "TOPLEFT", 10, -BADGE_YOFF)

        local zFS = PoolFS(pool, key .. "_z", zBG)
        zFS:SetFont(FONT_BODY, 9, "")
        zFS:SetWordWrap(false)
        zFS:SetWidth(500)  -- unkonstrained für Messung
        zFS:SetText(string.upper(cam.zoneName or ""))
        zFS:SetTextColor(C_GOLD[1], C_GOLD[2], C_GOLD[3])
        zFS:SetJustifyH("CENTER")
        local zBadgeW = math.max(46, math.min(math.ceil(zFS:GetStringWidth()) + 18, math.floor(INNER * 0.38)))
        zBG:SetSize(zBadgeW, BADGE_H)
        zFS:SetWidth(zBadgeW - 8)
        zFS:ClearAllPoints()
        zFS:SetPoint("CENTER", zBG, "CENTER", 0, 0)
        zBG:Show()
        zFS:Show()

        -- Flavor-Titel: volle Card-Breite, absolut zentriert
        local fFS = PoolFS(pool, key .. "_f", card)
        fFS:SetFont(FONT_BODY, 13, "")
        fFS:ClearAllPoints()
        fFS:SetPoint("TOPLEFT",     card, "TOPLEFT",  0,  0)
        fFS:SetPoint("BOTTOMRIGHT", card, "TOPRIGHT", 0, -HEADER_H)
        fFS:SetText(string.upper(cam.heading or cam.flavorTeaser or ""))
        fFS:SetTextColor(C_GOLD[1], C_GOLD[2], C_GOLD[3])
        fFS:SetJustifyH("CENTER")
        fFS:SetJustifyV("MIDDLE")
        fFS:SetWordWrap(false)
        fFS:Show()

        -- Header-Trennlinie
        local hdiv = PoolTex(pool, key .. "_hdiv", card)
        hdiv:SetHeight(1)
        hdiv:ClearAllPoints()
        hdiv:SetPoint("TOPLEFT",  card, "TOPLEFT",  0, -HEADER_H)
        hdiv:SetPoint("TOPRIGHT", card, "TOPRIGHT", 0, -HEADER_H)
        hdiv:SetColorTexture(IMAGO_COLORS.DIVIDER[1], IMAGO_COLORS.DIVIDER[2], IMAGO_COLORS.DIVIDER[3], 0.8)
        hdiv:Show()

        -- Plot-Text
        local bFS = PoolFS(pool, key .. "_b", card)
        bFS:SetFont(FONT_BODY, 14, "")
        bFS:ClearAllPoints()
        bFS:SetPoint("TOPLEFT", card, "TOPLEFT", 12, -(HEADER_H + 1 + 14))
        bFS:SetWidth(INNER - ART_W - ART_GAP - 24)
        bFS:SetText(BuildRichText(cam.text or ""))
        bFS:SetTextColor(unpack(C_TEXT_PRI))
        bFS:SetJustifyH("LEFT")
        bFS:SetSpacing(3)
        bFS:SetWordWrap(true)
        bFS:Show()

        -- Lore-Button (oben rechts, nur wenn loreBits vorhanden)
        local loreBtn = PoolBtn(pool, key .. "_lore", card)
        loreBtn:SetSize(20, 20)
        loreBtn:ClearAllPoints()
        loreBtn:SetPoint("TOPRIGHT", card, "TOPRIGHT", -8, -9)
        if not loreBtn._styled then
            loreBtn._styled = true
            local loreBtnBg = loreBtn:CreateTexture(nil, "BACKGROUND")
            loreBtnBg:SetAllPoints()
            loreBtnBg:SetColorTexture(0.08, 0.06, 0.04, 0.95)
            local loreBtnHL = loreBtn:CreateTexture(nil, "HIGHLIGHT")
            loreBtnHL:SetAllPoints()
            loreBtnHL:SetColorTexture(C_GOLD[1], C_GOLD[2], C_GOLD[3], 0.20)
            loreBtn._icon = loreBtn:CreateFontString(nil, "OVERLAY")
            loreBtn._icon:SetFont(FONT_BODY, 11, "")
            loreBtn._icon:SetPoint("CENTER", loreBtn, "CENTER", 0, 0)
            loreBtn._icon:SetText("i")
            loreBtn._icon:SetTextColor(C_GOLD[1], C_GOLD[2], C_GOLD[3])
            local loreBtnBdr = CreateFrame("Frame", nil, loreBtn, "BackdropTemplate")
            loreBtnBdr:SetAllPoints()
            loreBtnBdr:SetBackdrop({ edgeFile="Interface\\Buttons\\WHITE8X8", edgeSize=1 })
            loreBtnBdr:SetBackdropBorderColor(C_GOLD[1], C_GOLD[2], C_GOLD[3], 0.5)
        end
        if cam.loreBits and cam.loreBits ~= "" then
            local loreBits = cam.loreBits
            local heading  = cam.heading or "Lore-Notizen"
            loreBtn:SetScript("OnClick", function()
                IMAGO.Eras.ShowLorePopup(loreBits, heading)
            end)
            loreBtn:Show()
        else
            loreBtn:Hide()
        end

        -- NPC-Chip-Buttons (klickbar, da OnHyperlinkClick in dieser WoW-Version unzuverlässig)
        local NPC_BTN_H = 18
        local npcLinks  = cam.npcLinks or {}
        local npcRowH   = 0
        local bodyH     = math.max(bFS:GetStringHeight(), 14)
        if #npcLinks > 0 then
            npcRowH = 1 + 5 + NPC_BTN_H + 8   -- sep+gap+btn+bottom
            local sepY = HEADER_H + 1 + 14 + bodyH + 10
            local npcSep = PoolTex(pool, key .. "_npc_sep", card)
            npcSep:SetHeight(1)
            npcSep:ClearAllPoints()
            npcSep:SetPoint("TOPLEFT",  card, "TOPLEFT",  12, -sepY)
            npcSep:SetPoint("TOPRIGHT", card, "TOPRIGHT", -12, -sepY)
            npcSep:SetColorTexture(C_BORDER[1], C_BORDER[2], C_BORDER[3], 0.4)
            npcSep:Show()

            local btnY = sepY + 1 + 5
            local btnX = 12
            for j, slug in ipairs(npcLinks) do
                local npcKey = key .. "_npc_" .. j
                local nb = PoolBtn(pool, npcKey, card)
                if not nb._npcStyled then
                    nb._npcStyled = true
                    local nbBg = nb:CreateTexture(nil, "BACKGROUND")
                    nbBg:SetAllPoints()
                    nbBg:SetColorTexture(0.10, 0.08, 0.05, 0.90)
                    local nbHL = nb:CreateTexture(nil, "HIGHLIGHT")
                    nbHL:SetAllPoints()
                    nbHL:SetColorTexture(C_GOLD[1], C_GOLD[2], C_GOLD[3], 0.15)
                    nb._lbl = nb:CreateFontString(nil, "OVERLAY")
                    nb._lbl:SetFont(FONT_BODY, 10, "")
                    nb._lbl:SetJustifyH("CENTER")
                    nb._lbl:SetTextColor(C_GOLD[1], C_GOLD[2], C_GOLD[3])
                end
                local npcName = GetNPCDisplayName(slug)
                nb._lbl:SetText(npcName)
                nb._lbl:SetWidth(500)
                local btnW = math.max(50, math.ceil(nb._lbl:GetStringWidth()) + 14)
                nb._lbl:SetWidth(btnW - 14)
                nb._lbl:SetPoint("CENTER", nb, "CENTER", 0, 0)
                nb:SetSize(btnW, NPC_BTN_H)
                nb:ClearAllPoints()
                nb:SetPoint("TOPLEFT", card, "TOPLEFT", btnX, -btnY)
                local theSlug = slug
                nb:SetScript("OnClick", function()
                    IMAGO.Eras.NavigateToNPC(theSlug)
                end)
                nb:Show()
                btnX = btnX + btnW + 5
            end
        end

        local cardH = HEADER_H + 1 + 14 + bodyH + (npcRowH > 0 and (10 + npcRowH) or 18)
        card:SetHeight(cardH)
        ApplyArtworkStrip(pool, key, content, card, cardH, cam.logoPath, cam.logo_w, cam.logo_h)
        card:Show()
        y = y + cardH + 18
    end

    content:SetHeight(math.max(1, y + PAD))
    IMAGO.UpdateScrollBarVisibility(E.scrollFrames["story"])
end

-- ============================================================
-- TAB 3: PATCHES
-- ============================================================

function IMAGO.Eras.RenderPatches(data)
    local E       = IMAGO.Eras.frame
    local content = E.scrollContents["patches"]
    local pool    = E.pools.patches
    local W       = GetContentW("patches")
    local PAD     = 14
    local RPAD    = PAD
    local INNER   = W - PAD - RPAD
    local y       = PAD

    content:SetWidth(W + 16)

    local patches = data.patches or {}
    if #patches == 0 then
        local fs = PoolFS(pool, "nodata", content)
        fs:SetFont(FONT_BODY, 12, "")
        fs:ClearAllPoints()
        fs:SetPoint("TOPLEFT", content, "TOPLEFT", PAD, -y)
        fs:SetWidth(INNER)
        fs:SetText(IMAGO.L["ERAS_NO_DATA"] or "Keine Aufzeichnungen verfügbar.")
        fs:SetTextColor(unpack(C_TEXT_MUTED))
        fs:SetJustifyH("LEFT")
        fs:SetWordWrap(true)
        fs:Show()
        content:SetHeight(y + 60)
        IMAGO.UpdateScrollBarVisibility(E.scrollFrames["patches"])
        return
    end

    local HEADER_H   = 38
    local BADGE_H    = 18
    local BADGE_YOFF = 10

    for i, patch in ipairs(patches) do
        local key  = "pc_" .. i
        local card = GetCard(pool, key, content)
        card:SetBackdropColor(C_BG_CARD[1], C_BG_CARD[2], C_BG_CARD[3], 1)
        card:SetBackdropBorderColor(C_BORDER[1], C_BORDER[2], C_BORDER[3], C_BORDER[4])
        card:SetWidth(INNER - ART_W - ART_GAP)
        card:ClearAllPoints()
        card:SetPoint("TOPLEFT", content, "TOPLEFT", PAD, -y)

        -- Version-Badge (dynamische Breite, kleiner als Zone-Badge)
        local vBG = GetCard(pool, key .. "_vbg", card)
        vBG:SetBackdropColor(C_GOLD[1]*0.18, C_GOLD[2]*0.18, C_GOLD[3]*0.10, 1)
        vBG:SetBackdropBorderColor(C_GOLD[1], C_GOLD[2], C_GOLD[3], 0.8)
        local vFS = PoolFS(pool, key .. "_v", vBG)
        vFS:SetFont(FONT_BODY, 9, "")
        vFS:SetWidth(500)
        vFS:SetText(patch.version or "")
        local verW = math.max(32, math.ceil(vFS:GetStringWidth()) + 12)
        vBG:SetSize(verW, BADGE_H)
        vBG:ClearAllPoints()
        vBG:SetPoint("TOPLEFT", card, "TOPLEFT", 10, -BADGE_YOFF)
        vFS:SetWidth(verW - 6)
        vFS:ClearAllPoints()
        vFS:SetPoint("CENTER", vBG, "CENTER", 0, 0)
        vFS:SetTextColor(C_GOLD[1], C_GOLD[2], C_GOLD[3])
        vFS:SetJustifyH("CENTER")
        vBG:Show()
        vFS:Show()

        -- Zone-Badge (rechts vom Version-Badge, hover bei mehreren Zonen)
        local newZones = patch.newZones or {}
        local zBG = GetCard(pool, key .. "_zbg", card)
        zBG:SetBackdropColor(C_GOLD[1]*0.18, C_GOLD[2]*0.18, C_GOLD[3]*0.10, 1)
        zBG:SetBackdropBorderColor(C_GOLD[1], C_GOLD[2], C_GOLD[3], 0.8)
        local zFS = PoolFS(pool, key .. "_z", zBG)
        zFS:SetFont(FONT_BODY, 9, "")
        zFS:SetWordWrap(false)
        zFS:SetWidth(500)
        local zLabel = ""
        if #newZones == 1 then
            zLabel = string.upper(newZones[1])
        elseif #newZones > 1 then
            zLabel = #newZones .. " " .. string.upper(IMAGO.L["ERAS_ZONES"] or "ZONES")
        end
        zFS:SetText(zLabel)
        zFS:SetTextColor(C_GOLD[1], C_GOLD[2], C_GOLD[3])
        zFS:SetJustifyH("CENTER")
        local zBadgeW = math.max(46, math.min(math.ceil(zFS:GetStringWidth()) + 18, math.floor(INNER * 0.35)))
        zBG:SetSize(zBadgeW, BADGE_H)
        zBG:ClearAllPoints()
        zBG:SetPoint("TOPLEFT", card, "TOPLEFT", 10 + verW + 4, -BADGE_YOFF)
        zFS:SetWidth(zBadgeW - 8)
        zFS:ClearAllPoints()
        zFS:SetPoint("CENTER", zBG, "CENTER", 0, 0)
        zBG:Show()
        zFS:Show()

        if #newZones > 1 then
            zBG:EnableMouse(true)
            local theZones = newZones
            zBG:SetScript("OnEnter", function(self)
                GameTooltip:SetOwner(self, "ANCHOR_BOTTOMLEFT")
                GameTooltip:ClearLines()
                GameTooltip:AddLine("|c" .. IMAGO_HEX.GOLD_BRIGHT .. (IMAGO.L["ERAS_NEW_ZONES"] or "New Zones") .. "|r", 1, 1, 1)
                for _, zn in ipairs(theZones) do
                    GameTooltip:AddLine("  \194\183 " .. zn, C_TEXT_PRI[1], C_TEXT_PRI[2], C_TEXT_PRI[3])
                end
                GameTooltip:Show()
            end)
            zBG:SetScript("OnLeave", function() GameTooltip:Hide() end)
        else
            zBG:EnableMouse(false)
            zBG:SetScript("OnEnter", nil)
            zBG:SetScript("OnLeave", nil)
        end

        -- Patch-Titel: volle Card-Breite, absolut zentriert (wie Story)
        local tFS = PoolFS(pool, key .. "_t", card)
        tFS:SetFont(FONT_BODY, 13, "")
        tFS:ClearAllPoints()
        tFS:SetPoint("TOPLEFT",     card, "TOPLEFT",  0,  0)
        tFS:SetPoint("BOTTOMRIGHT", card, "TOPRIGHT", 0, -HEADER_H)
        tFS:SetText(string.upper(patch.title or ""))
        tFS:SetTextColor(C_GOLD[1], C_GOLD[2], C_GOLD[3])
        tFS:SetJustifyH("CENTER")
        tFS:SetJustifyV("MIDDLE")
        tFS:SetWordWrap(false)
        tFS:Show()

        -- Header-Trennlinie
        local hdiv = PoolTex(pool, key .. "_hdiv", card)
        hdiv:SetHeight(1)
        hdiv:ClearAllPoints()
        hdiv:SetPoint("TOPLEFT",  card, "TOPLEFT",  0, -HEADER_H)
        hdiv:SetPoint("TOPRIGHT", card, "TOPRIGHT", 0, -HEADER_H)
        hdiv:SetColorTexture(IMAGO_COLORS.DIVIDER[1], IMAGO_COLORS.DIVIDER[2], IMAGO_COLORS.DIVIDER[3], 0.8)
        hdiv:Show()

        -- i-Lore-Button (oben rechts, identisch mit Story)
        local loreBtn = PoolBtn(pool, key .. "_lore", card)
        loreBtn:SetSize(20, 20)
        loreBtn:ClearAllPoints()
        loreBtn:SetPoint("TOPRIGHT", card, "TOPRIGHT", -8, -9)
        if not loreBtn._styled then
            loreBtn._styled = true
            local loreBtnBg = loreBtn:CreateTexture(nil, "BACKGROUND")
            loreBtnBg:SetAllPoints()
            loreBtnBg:SetColorTexture(0.08, 0.06, 0.04, 0.95)
            local loreBtnHL = loreBtn:CreateTexture(nil, "HIGHLIGHT")
            loreBtnHL:SetAllPoints()
            loreBtnHL:SetColorTexture(C_GOLD[1], C_GOLD[2], C_GOLD[3], 0.20)
            local loreBtnFS = loreBtn:CreateFontString(nil, "OVERLAY")
            loreBtnFS:SetFont(FONT_BODY, 11, "")
            loreBtnFS:SetPoint("CENTER", loreBtn, "CENTER", 0, 0)
            loreBtnFS:SetText("i")
            loreBtnFS:SetTextColor(C_GOLD[1], C_GOLD[2], C_GOLD[3])
            local loreBtnBdr = CreateFrame("Frame", nil, loreBtn, "BackdropTemplate")
            loreBtnBdr:SetAllPoints()
            loreBtnBdr:SetBackdrop({ edgeFile="Interface\\Buttons\\WHITE8X8", edgeSize=1 })
            loreBtnBdr:SetBackdropBorderColor(C_GOLD[1], C_GOLD[2], C_GOLD[3], 0.5)
        end
        if patch.loreBits and patch.loreBits ~= "" then
            local loreBits = patch.loreBits
            local heading  = patch.title or "Patch-Notizen"
            loreBtn:SetScript("OnClick", function()
                IMAGO.Eras.ShowLorePopup(loreBits, heading)
            end)
            loreBtn:Show()
        else
            loreBtn:Hide()
        end

        -- Plot-Text
        local bFS = PoolFS(pool, key .. "_b", card)
        bFS:SetFont(FONT_BODY, 14, "")
        bFS:ClearAllPoints()
        bFS:SetPoint("TOPLEFT", card, "TOPLEFT", 12, -(HEADER_H + 1 + 14))
        bFS:SetWidth(INNER - ART_W - ART_GAP - 24)
        bFS:SetText(BuildRichText(patch.text or ""))
        bFS:SetTextColor(unpack(C_TEXT_PRI))
        bFS:SetJustifyH("LEFT")
        bFS:SetSpacing(3)
        bFS:SetWordWrap(true)
        bFS:Show()

        -- NPC-Hyperlink-Handler (einmalig pro card-Objekt)
        if not card._npcSetup then
            card._npcSetup = true
            card:EnableMouse(true)
            card:SetScript("OnHyperlinkClick", function(self, link, text, button)
                local slug = link:match("^imago_npc:(.+)$")
                if slug then
                    IMAGO.Eras.NavigateToNPC(slug)
                end
            end)
        end

        -- NPC-Chip-Buttons unterhalb Trennlinie (identisch mit Story-Tab)
        local NPC_BTN_H = 18
        local npcLinks  = patch.npcLinks or {}
        local npcRowH   = 0
        local bodyH     = math.max(bFS:GetStringHeight(), 14)
        if #npcLinks > 0 then
            npcRowH = 1 + 5 + NPC_BTN_H + 8
            local sepY = HEADER_H + 1 + 14 + bodyH + 10
            local npcSep = PoolTex(pool, key .. "_npc_sep", card)
            npcSep:SetHeight(1)
            npcSep:ClearAllPoints()
            npcSep:SetPoint("TOPLEFT",  card, "TOPLEFT",  12, -sepY)
            npcSep:SetPoint("TOPRIGHT", card, "TOPRIGHT", -12, -sepY)
            npcSep:SetColorTexture(C_BORDER[1], C_BORDER[2], C_BORDER[3], 0.4)
            npcSep:Show()

            local btnY = sepY + 1 + 5
            local btnX = 12
            for j, slug in ipairs(npcLinks) do
                local npcKey = key .. "_npc_" .. j
                local nb = PoolBtn(pool, npcKey, card)
                if not nb._npcStyled then
                    nb._npcStyled = true
                    local nbBg = nb:CreateTexture(nil, "BACKGROUND")
                    nbBg:SetAllPoints()
                    nbBg:SetColorTexture(0.10, 0.08, 0.05, 0.90)
                    local nbHL = nb:CreateTexture(nil, "HIGHLIGHT")
                    nbHL:SetAllPoints()
                    nbHL:SetColorTexture(C_GOLD[1], C_GOLD[2], C_GOLD[3], 0.15)
                    nb._lbl = nb:CreateFontString(nil, "OVERLAY")
                    nb._lbl:SetFont(FONT_BODY, 10, "")
                    nb._lbl:SetJustifyH("CENTER")
                    nb._lbl:SetTextColor(C_GOLD[1], C_GOLD[2], C_GOLD[3])
                end
                local npcName = GetNPCDisplayName(slug)
                nb._lbl:SetText(npcName)
                nb._lbl:SetWidth(500)
                local btnW = math.max(50, math.ceil(nb._lbl:GetStringWidth()) + 14)
                nb._lbl:SetWidth(btnW - 14)
                nb._lbl:SetPoint("CENTER", nb, "CENTER", 0, 0)
                nb:SetSize(btnW, NPC_BTN_H)
                nb:ClearAllPoints()
                nb:SetPoint("TOPLEFT", card, "TOPLEFT", btnX, -btnY)
                local theSlug = slug
                nb:SetScript("OnClick", function()
                    IMAGO.Eras.NavigateToNPC(theSlug)
                end)
                nb:Show()
                btnX = btnX + btnW + 5
            end
        end

        local cardH = HEADER_H + 1 + 14 + bodyH + (npcRowH > 0 and (10 + npcRowH) or 18)
        card:SetHeight(cardH)
        ApplyArtworkStrip(pool, key, content, card, cardH, patch.logoPath, patch.logo_w, patch.logo_h)
        card:Show()
        y = y + cardH + 18
    end

    content:SetHeight(math.max(1, y + PAD))
    IMAGO.UpdateScrollBarVisibility(E.scrollFrames["patches"])
end

-- ============================================================
-- TAB 4: CHARACTERS
-- ============================================================

function IMAGO.Eras.RenderCharacters(data)
    local E       = IMAGO.Eras.frame
    local content = E.scrollContents["characters"]
    local pool    = E.pools.characters
    local W       = GetContentW("characters")
    local PAD     = 14
    local INNER   = W - PAD * 2
    local GAP     = 8
    local y       = PAD

    content:SetWidth(W + 16)

    local figures = data.keyFigures or {}
    if #figures == 0 then
        local fs = PoolFS(pool, "nodata", content)
        fs:SetFont(FONT_BODY, 12, "")
        fs:ClearAllPoints()
        fs:SetPoint("TOPLEFT", content, "TOPLEFT", PAD, -y)
        fs:SetWidth(INNER)
        fs:SetText(IMAGO.L["ERAS_NO_DATA"] or "Keine Aufzeichnungen verfügbar.")
        fs:SetTextColor(unpack(C_TEXT_MUTED))
        fs:SetJustifyH("LEFT")
        fs:SetWordWrap(true)
        fs:Show()
        content:SetHeight(y + 60)
        IMAGO.UpdateScrollBarVisibility(E.scrollFrames["characters"])
        return
    end

    local ARC_ROW_H  = 22
    local NAME_ROW_H = 36
    local CARD_W     = math.floor((INNER - GAP) / 2)
    local ROW_GAP    = 12

    for i = 1, #figures, 2 do
        local rowMaxH = 0
        local rowKeys = {}

        for col = 0, 1 do
            local idx = i + col
            if idx > #figures then break end

            local fig     = figures[idx]
            local key     = "ch_" .. idx
            local npcName = GetNPCDisplayName(fig.slug)
            local xOff    = PAD + col * (CARD_W + GAP)

            -- Äußere Card (C_BG_CARD, dünner Gold-Rahmen)
            local card = GetCard(pool, key, content)
            card:SetBackdropColor(C_BG_CARD[1], C_BG_CARD[2], C_BG_CARD[3], 1)
            card:SetBackdropBorderColor(C_BORDER[1], C_BORDER[2], C_BORDER[3], C_BORDER[4])
            card:SetWidth(CARD_W)
            card:ClearAllPoints()
            card:SetPoint("TOPLEFT", content, "TOPLEFT", xOff, -y)

            -- ZEILE 1: Arc-Label Kopfzeile (lila getönt, volle Breite)
            local arcRow = GetCard(pool, key .. "_arcrow", card)
            arcRow:SetBackdropColor(C_PURPLE_BG[1], C_PURPLE_BG[2], C_PURPLE_BG[3], C_PURPLE_BG[4])
            arcRow:SetBackdropBorderColor(0, 0, 0, 0)
            arcRow:SetHeight(ARC_ROW_H)
            arcRow:SetPoint("TOPLEFT",  card, "TOPLEFT",  0, 0)
            arcRow:SetPoint("TOPRIGHT", card, "TOPRIGHT", 0, 0)
            arcRow:Show()

            local arcFS = PoolFS(pool, key .. "_arc", arcRow)
            arcFS:SetFont(FONT_BODY, 10, "")
            arcFS:SetText(string.upper(fig.arcLabel or ""))
            arcFS:SetTextColor(C_PURPLE_TEXT[1], C_PURPLE_TEXT[2], C_PURPLE_TEXT[3])
            arcFS:SetJustifyH("CENTER")
            arcFS:SetWordWrap(false)
            arcFS:SetWidth(CARD_W - PAD * 2)
            arcFS:ClearAllPoints()
            arcFS:SetPoint("CENTER", arcRow, "CENTER", 0, 0)
            arcFS:Show()

            -- Untere Trennlinie der Arc-Zeile (lila)
            local arcDiv = PoolTex(pool, key .. "_arcdiv", card)
            arcDiv:SetHeight(1)
            arcDiv:ClearAllPoints()
            arcDiv:SetPoint("TOPLEFT",  card, "TOPLEFT",  0, -ARC_ROW_H)
            arcDiv:SetPoint("TOPRIGHT", card, "TOPRIGHT", 0, -ARC_ROW_H)
            arcDiv:SetColorTexture(0.416, 0.298, 0.678, 0.40)
            arcDiv:Show()

            -- ZEILE 2: Name-Zeile (dunkler Header-Hintergrund)
            local nameRow = GetCard(pool, key .. "_namerow", card)
            nameRow:SetBackdropColor(0.08, 0.06, 0.04, 1)
            nameRow:SetBackdropBorderColor(0, 0, 0, 0)
            nameRow:SetHeight(NAME_ROW_H)
            nameRow:ClearAllPoints()
            nameRow:SetPoint("TOPLEFT",  card, "TOPLEFT",  0, -ARC_ROW_H)
            nameRow:SetPoint("TOPRIGHT", card, "TOPRIGHT", 0, -ARC_ROW_H)
            nameRow:Show()

            local nmFS = PoolFS(pool, key .. "_nm", nameRow)
            nmFS:SetFont(FONT_BODY, 13, "")
            nmFS:SetText(npcName)
            nmFS:SetTextColor(C_GOLD[1], C_GOLD[2], C_GOLD[3])
            nmFS:SetJustifyH("LEFT")
            nmFS:SetWordWrap(false)
            nmFS:ClearAllPoints()
            nmFS:SetPoint("LEFT",  nameRow, "LEFT",  PAD, 0)
            nmFS:SetPoint("RIGHT", nameRow, "RIGHT", -30, 0)
            nmFS:Show()

            -- Untere Trennlinie der Name-Zeile
            local nameDiv = PoolTex(pool, key .. "_namediv", card)
            nameDiv:SetHeight(1)
            nameDiv:ClearAllPoints()
            nameDiv:SetPoint("TOPLEFT",  card, "TOPLEFT",  0, -(ARC_ROW_H + NAME_ROW_H))
            nameDiv:SetPoint("TOPRIGHT", card, "TOPRIGHT", 0, -(ARC_ROW_H + NAME_ROW_H))
            nameDiv:SetColorTexture(C_BORDER[1], C_BORDER[2], C_BORDER[3], C_BORDER[4])
            nameDiv:Show()

            -- › Fates-Button (rechts in der Name-Zeile)
            local fatesBtn = PoolBtn(pool, key .. "_fates", nameRow)
            fatesBtn:SetSize(20, 20)
            fatesBtn:ClearAllPoints()
            fatesBtn:SetPoint("RIGHT", nameRow, "RIGHT", -6, 0)
            if not fatesBtn._styled then
                fatesBtn._styled = true
                local fb_bg = fatesBtn:CreateTexture(nil, "BACKGROUND")
                fb_bg:SetAllPoints()
                fb_bg:SetColorTexture(0.08, 0.06, 0.04, 0.95)
                local fb_hl = fatesBtn:CreateTexture(nil, "HIGHLIGHT")
                fb_hl:SetAllPoints()
                fb_hl:SetColorTexture(C_GOLD[1], C_GOLD[2], C_GOLD[3], 0.20)
                local fb_lbl = fatesBtn:CreateFontString(nil, "OVERLAY")
                fb_lbl:SetFont(FONT_BODY, 11, "")
                fb_lbl:SetPoint("CENTER", fatesBtn, "CENTER", 0, 0)
                fb_lbl:SetText(">")
                fb_lbl:SetTextColor(C_GOLD[1], C_GOLD[2], C_GOLD[3])
                local fb_bdr = CreateFrame("Frame", nil, fatesBtn, "BackdropTemplate")
                fb_bdr:SetAllPoints()
                fb_bdr:SetBackdrop({ edgeFile="Interface\\Buttons\\WHITE8X8", edgeSize=1 })
                fb_bdr:SetBackdropBorderColor(C_GOLD[1], C_GOLD[2], C_GOLD[3], 0.5)
            end
            local fs_slug = fig.slug
            fatesBtn:SetScript("OnClick", function()
                IMAGO.Eras.NavigateToNPC(fs_slug)
            end)
            fatesBtn:Show()

            -- ZEILE 3: Blurb-Text (identisch mit Story Plot-Text)
            local bFS = PoolFS(pool, key .. "_blurb", card)
            bFS:SetFont(FONT_BODY, 14, "")
            bFS:ClearAllPoints()
            bFS:SetPoint("TOPLEFT", card, "TOPLEFT", PAD, -(ARC_ROW_H + NAME_ROW_H + 1 + 14))
            bFS:SetWidth(CARD_W - PAD * 2)
            bFS:SetText(fig.blurb or "")
            bFS:SetTextColor(unpack(C_TEXT_PRI))
            bFS:SetJustifyH("LEFT")
            bFS:SetSpacing(3)
            bFS:SetWordWrap(true)
            bFS:Show()

            local cardH = ARC_ROW_H + NAME_ROW_H + 1 + 14 + math.max(bFS:GetStringHeight(), 14) + 14
            if cardH > rowMaxH then rowMaxH = cardH end
            rowKeys[col] = key
            card:Show()
        end

        -- Einheitliche Kartenhöhe pro Zeile
        for _, rk in pairs(rowKeys) do
            local c = pool[rk]
            if c then c:SetHeight(rowMaxH) end
        end
        y = y + rowMaxH + ROW_GAP
    end

    content:SetHeight(math.max(1, y + PAD))
    IMAGO.UpdateScrollBarVisibility(E.scrollFrames["characters"])
end

-- ============================================================
-- NAVIGATION
-- ============================================================

function IMAGO.Eras.NavigateToNPC(slug)
    local E = IMAGO.Eras.frame
    if not E then return end

    local sf      = E.scrollFrames[IMAGO.Eras.activeSubTab]
    local scrollY = (sf and sf:IsShown()) and sf:GetVerticalScroll() or 0

    -- Zustand direkt in opts, da erasViewHistory von ClearHistory() geleert wird
    if IMAGO.Chronicle.OpenToNPCSlug then
        IMAGO.Chronicle.OpenToNPCSlug(slug, {
            skipDiscoveryCinematic = true,
            fromEras    = true,
            erasSlug    = IMAGO.Eras.selectedEra,
            erasSubTab  = IMAGO.Eras.activeSubTab,
            erasScrollY = scrollY,
        })
    end
end

function IMAGO.Eras.GoBack()
    if #erasViewHistory == 0 then return end
    local prev = table.remove(erasViewHistory)
    IMAGO.Chronicle.SelectMainTab(ERAS_TAB_INDEX)
    IMAGO.Eras.OpenToEra(prev.slug, prev.subTab, prev.scrollY)
    IMAGO.Eras.UpdateBackBtn()
end

function IMAGO.Eras.UpdateBackBtn()
    -- Back-Button-Logik (optional, kein eigener Frame in dieser Version)
end

function IMAGO.Eras.ClearHistory()
    erasViewHistory = {}
end

-- ============================================================
-- TAB-INDEX SETZEN (wird von Chronicle.lua aufgerufen)
-- ============================================================

function IMAGO.Eras.SetTabIndex(idx)
    ERAS_TAB_INDEX = idx
end
