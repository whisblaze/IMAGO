-- ============================================================
-- IMAGO — data/eras_static.lua  (static data, no locale strings)
-- Expansion order: 1 = most recent, ascending toward Classic
-- ============================================================

IMAGOdb = IMAGOdb or {}
IMAGOdb.eras = IMAGOdb.eras or {}

-- ------------------------------------------------------------
-- MIDNIGHT  (current server expansion)
-- ------------------------------------------------------------
IMAGOdb.eras["midnight"] = {
    order              = 1,
    coming_soon        = false,
    unlock_npc = "lorthemar_theron_midnight",
    release_date       = "March 2, 2026",
    logoPath           = "Interface\\AddOns\\IMAGO\\Media\\Eras\\midnight_logo.tga",
    bgPath             = "Interface\\AddOns\\IMAGO\\Media\\Eras\\midnight_bg.tga",
    tilePath           = "Interface\\AddOns\\IMAGO\\Media\\Eras\\midnight_tile.tga",
    mapPath            = "Interface\\AddOns\\IMAGO\\Media\\Eras\\Maps\\midnight_map.tga",
    mapPlaceholderPath = "Interface\\AddOns\\IMAGO\\Media\\placeholder_map.tga",
    name="", region="", antagonist="", conflict="", summary="",
    fastFacts={}, campaigns={}, patches={}, keyFigures={},
}

-- ------------------------------------------------------------
-- THE WAR WITHIN
-- ------------------------------------------------------------
IMAGOdb.eras["the_war_within"] = {
    order              = 2,
    coming_soon        = true,
    release_date       = "August 26, 2024",
    logoPath           = "Interface\\AddOns\\IMAGO\\Media\\Eras\\tww_logo.tga",
    bgPath             = "Interface\\AddOns\\IMAGO\\Media\\Eras\\tww_bg.tga",
    tilePath           = "Interface\\AddOns\\IMAGO\\Media\\Eras\\tww_tile.tga",
    mapPath            = "Interface\\AddOns\\IMAGO\\Media\\Eras\\Maps\\tww_map.tga",
    mapPlaceholderPath = "Interface\\AddOns\\IMAGO\\Media\\placeholder_map.tga",
    name="", region="", antagonist="", conflict="", summary="",
    fastFacts={}, campaigns={}, patches={}, keyFigures={},
}

-- ------------------------------------------------------------
-- DRAGONFLIGHT
-- ------------------------------------------------------------
IMAGOdb.eras["dragonflight"] = {
    order              = 3,
    coming_soon        = true,
    release_date       = "November 28, 2022",
    logoPath           = "Interface\\AddOns\\IMAGO\\Media\\Eras\\df_logo.tga",
    bgPath             = "Interface\\AddOns\\IMAGO\\Media\\Eras\\df_bg.tga",
    tilePath           = "Interface\\AddOns\\IMAGO\\Media\\Eras\\df_tile.tga",
    mapPath            = "Interface\\AddOns\\IMAGO\\Media\\Eras\\Maps\\df_map.tga",
    mapPlaceholderPath = "Interface\\AddOns\\IMAGO\\Media\\placeholder_map.tga",
    name="", region="", antagonist="", conflict="", summary="",
    fastFacts={}, campaigns={}, patches={}, keyFigures={},
}

-- ------------------------------------------------------------
-- SHADOWLANDS
-- ------------------------------------------------------------
IMAGOdb.eras["shadowlands"] = {
    order              = 4,
    coming_soon        = true,
    release_date       = "November 23, 2020",
    logoPath           = "Interface\\AddOns\\IMAGO\\Media\\Eras\\sl_logo.tga",
    bgPath             = "Interface\\AddOns\\IMAGO\\Media\\Eras\\sl_bg.tga",
    tilePath           = "Interface\\AddOns\\IMAGO\\Media\\Eras\\sl_tile.tga",
    mapPath            = "Interface\\AddOns\\IMAGO\\Media\\Eras\\Maps\\sl_map.tga",
    mapPlaceholderPath = "Interface\\AddOns\\IMAGO\\Media\\placeholder_map.tga",
    name="", region="", antagonist="", conflict="", summary="",
    fastFacts={}, campaigns={}, patches={}, keyFigures={},
}

-- ------------------------------------------------------------
-- BATTLE FOR AZEROTH
-- ------------------------------------------------------------
IMAGOdb.eras["battle_for_azeroth"] = {
    order              = 5,
    coming_soon        = true,
    release_date       = "August 13, 2018",
    logoPath           = "Interface\\AddOns\\IMAGO\\Media\\Eras\\bfa_logo.tga",
    bgPath             = "Interface\\AddOns\\IMAGO\\Media\\Eras\\bfa_bg.tga",
    tilePath           = "Interface\\AddOns\\IMAGO\\Media\\Eras\\bfa_tile.tga",
    mapPath            = "Interface\\AddOns\\IMAGO\\Media\\Eras\\Maps\\bfa_map.tga",
    mapPlaceholderPath = "Interface\\AddOns\\IMAGO\\Media\\placeholder_map.tga",
    name="", region="", antagonist="", conflict="", summary="",
    fastFacts={}, campaigns={}, patches={}, keyFigures={},
}

-- ------------------------------------------------------------
-- LEGION
-- ------------------------------------------------------------
IMAGOdb.eras["legion"] = {
    order              = 6,
    coming_soon        = true,
    release_date       = "August 30, 2016",
    logoPath           = "Interface\\AddOns\\IMAGO\\Media\\Eras\\legion_logo.tga",
    bgPath             = "Interface\\AddOns\\IMAGO\\Media\\Eras\\legion_bg.tga",
    tilePath           = "Interface\\AddOns\\IMAGO\\Media\\Eras\\legion_tile.tga",
    mapPath            = "Interface\\AddOns\\IMAGO\\Media\\Eras\\Maps\\legion_map.tga",
    mapPlaceholderPath = "Interface\\AddOns\\IMAGO\\Media\\placeholder_map.tga",
    name="", region="", antagonist="", conflict="", summary="",
    fastFacts={}, campaigns={}, patches={}, keyFigures={},
}

-- ------------------------------------------------------------
-- WARLORDS OF DRAENOR
-- ------------------------------------------------------------
IMAGOdb.eras["warlords_of_draenor"] = {
    order              = 7,
    coming_soon        = true,
    release_date       = "November 13, 2014",
    logoPath           = "Interface\\AddOns\\IMAGO\\Media\\Eras\\wod_logo.tga",
    bgPath             = "Interface\\AddOns\\IMAGO\\Media\\Eras\\wod_bg.tga",
    tilePath           = "Interface\\AddOns\\IMAGO\\Media\\Eras\\wod_tile.tga",
    mapPath            = "Interface\\AddOns\\IMAGO\\Media\\Eras\\Maps\\wod_map.tga",
    mapPlaceholderPath = "Interface\\AddOns\\IMAGO\\Media\\placeholder_map.tga",
    name="", region="", antagonist="", conflict="", summary="",
    fastFacts={}, campaigns={}, patches={}, keyFigures={},
}

-- ------------------------------------------------------------
-- MISTS OF PANDARIA
-- ------------------------------------------------------------
IMAGOdb.eras["mists_of_pandaria"] = {
    order              = 8,
    coming_soon        = true,
    release_date       = "September 25, 2012",
    logoPath           = "Interface\\AddOns\\IMAGO\\Media\\Eras\\mop_logo.tga",
    bgPath             = "Interface\\AddOns\\IMAGO\\Media\\Eras\\mop_bg.tga",
    tilePath           = "Interface\\AddOns\\IMAGO\\Media\\Eras\\mop_tile.tga",
    mapPath            = "Interface\\AddOns\\IMAGO\\Media\\Eras\\Maps\\mop_map.tga",
    mapPlaceholderPath = "Interface\\AddOns\\IMAGO\\Media\\placeholder_map.tga",
    name="", region="", antagonist="", conflict="", summary="",
    fastFacts={}, campaigns={}, patches={}, keyFigures={},
}

-- ------------------------------------------------------------
-- CATACLYSM
-- ------------------------------------------------------------
IMAGOdb.eras["cataclysm"] = {
    order              = 9,
    coming_soon        = true,
    release_date       = "December 7, 2010",
    logoPath           = "Interface\\AddOns\\IMAGO\\Media\\Eras\\cata_logo.tga",
    bgPath             = "Interface\\AddOns\\IMAGO\\Media\\Eras\\cata_bg.tga",
    tilePath           = "Interface\\AddOns\\IMAGO\\Media\\Eras\\cata_tile.tga",
    mapPath            = "Interface\\AddOns\\IMAGO\\Media\\Eras\\Maps\\cata_map.tga",
    mapPlaceholderPath = "Interface\\AddOns\\IMAGO\\Media\\placeholder_map.tga",
    name="", region="", antagonist="", conflict="", summary="",
    fastFacts={}, campaigns={}, patches={}, keyFigures={},
}

-- ------------------------------------------------------------
-- WRATH OF THE LICH KING
-- ------------------------------------------------------------
IMAGOdb.eras["wrath_of_the_lich_king"] = {
    order              = 10,
    coming_soon        = true,
    release_date       = "November 13, 2008",
    logoPath           = "Interface\\AddOns\\IMAGO\\Media\\Eras\\wotlk_logo.tga",
    bgPath             = "Interface\\AddOns\\IMAGO\\Media\\Eras\\wotlk_bg.tga",
    tilePath           = "Interface\\AddOns\\IMAGO\\Media\\Eras\\wotlk_tile.tga",
    mapPath            = "Interface\\AddOns\\IMAGO\\Media\\Eras\\Maps\\wotlk_map.tga",
    mapPlaceholderPath = "Interface\\AddOns\\IMAGO\\Media\\placeholder_map.tga",
    name="", region="", antagonist="", conflict="", summary="",
    fastFacts={}, campaigns={}, patches={}, keyFigures={},
}

-- ------------------------------------------------------------
-- THE BURNING CRUSADE
-- ------------------------------------------------------------
IMAGOdb.eras["the_burning_crusade"] = {
    order              = 11,
    coming_soon        = true,
    release_date       = "January 16, 2007",
    logoPath           = "Interface\\AddOns\\IMAGO\\Media\\Eras\\tbc_logo.tga",
    bgPath             = "Interface\\AddOns\\IMAGO\\Media\\Eras\\tbc_bg.tga",
    tilePath           = "Interface\\AddOns\\IMAGO\\Media\\Eras\\tbc_tile.tga",
    mapPath            = "Interface\\AddOns\\IMAGO\\Media\\Eras\\Maps\\tbc_map.tga",
    mapPlaceholderPath = "Interface\\AddOns\\IMAGO\\Media\\placeholder_map.tga",
    name="", region="", antagonist="", conflict="", summary="",
    fastFacts={}, campaigns={}, patches={}, keyFigures={},
}

-- ------------------------------------------------------------
-- CLASSIC / VANILLA
-- ------------------------------------------------------------
IMAGOdb.eras["classic"] = {
    order              = 12,
    coming_soon        = true,
    release_date       = "November 23, 2004",
    logoPath           = "Interface\\AddOns\\IMAGO\\Media\\Eras\\classic_logo.tga",
    bgPath             = "Interface\\AddOns\\IMAGO\\Media\\Eras\\classic_bg.tga",
    tilePath           = "Interface\\AddOns\\IMAGO\\Media\\Eras\\classic_tile.tga",
    mapPath            = "Interface\\AddOns\\IMAGO\\Media\\Eras\\Maps\\classic_map.tga",
    mapPlaceholderPath = "Interface\\AddOns\\IMAGO\\Media\\placeholder_map.tga",
    name="", region="", antagonist="", conflict="", summary="",
    fastFacts={}, campaigns={}, patches={}, keyFigures={},
}
