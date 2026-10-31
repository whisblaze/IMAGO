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
    unlock_npc         = "lorthemar_theron_midnight",
    release_date       = "March 2, 2026",
    logoPath           = "Interface\\AddOns\\IMAGO\\Media\\Eras\\Logos\\midnight_logo.tga",
    logo_w             = 288,
    logo_h             = 230,
    bgPath             = "Interface\\AddOns\\IMAGO\\Media\\Eras\\Backgrounds\\midnight_bg.tga",
    tilePath           = "Interface\\AddOns\\IMAGO\\Media\\Eras\\midnight_tile.tga",
    mapPath            = "Interface\\AddOns\\IMAGO\\Media\\Eras\\Maps\\midnight_map.tga",
    mapPlaceholderPath = "Interface\\AddOns\\IMAGO\\Media\\placeholder_map.tga",
    name="", region="", antagonist="", conflict="", summary="",
    fastFacts={}, campaigns={}, patches={}, keyFigures={},
}

-- ------------------------------------------------------------
-- THE WAR WITHIN
-- ------------------------------------------------------------
IMAGOdb.eras["tww"] = {
    order              = 2,
    coming_soon        = false,
    unlock_npc         = "alleria_windrunner_tww",
    release_date       = "August 26, 2024",
    logoPath           = "Interface\\AddOns\\IMAGO\\Media\\Eras\\Logos\\the_war_within_logo.tga",
    logo_w             = 288,
    logo_h             = 226,
    bgPath             = "Interface\\AddOns\\IMAGO\\Media\\Eras\\Backgrounds\\the_war_within_bg.tga",
    tilePath           = "Interface\\AddOns\\IMAGO\\Media\\Eras\\tww_tile.tga",
    mapPath            = "Interface\\AddOns\\IMAGO\\Media\\Eras\\Maps\\tww_map.tga",
    mapPlaceholderPath = "Interface\\AddOns\\IMAGO\\Media\\placeholder_map.tga",
    name="", region="", antagonist="", conflict="", summary="",
    fastFacts={}, campaigns={}, patches={}, keyFigures={},
}

-- ------------------------------------------------------------
-- DRAGONFLIGHT
-- ------------------------------------------------------------
IMAGOdb.eras["df"] = {
    order              = 3,
    coming_soon        = true,
    release_date       = "November 28, 2022",
    logoPath           = "Interface\\AddOns\\IMAGO\\Media\\Eras\\Logos\\dragonflight_logo.tga",
    logo_w             = 384,
    logo_h             = 179,
    bgPath             = "Interface\\AddOns\\IMAGO\\Media\\Eras\\Backgrounds\\dragonflight_bg.tga",
    tilePath           = "Interface\\AddOns\\IMAGO\\Media\\Eras\\df_tile.tga",
    mapPath            = "Interface\\AddOns\\IMAGO\\Media\\Eras\\Maps\\df_map.tga",
    mapPlaceholderPath = "Interface\\AddOns\\IMAGO\\Media\\placeholder_map.tga",
    name="", region="", antagonist="", conflict="", summary="",
    fastFacts={}, campaigns={}, patches={}, keyFigures={},
}

-- ------------------------------------------------------------
-- SHADOWLANDS
-- ------------------------------------------------------------
IMAGOdb.eras["sl"] = {
    order              = 4,
    coming_soon        = true,
    release_date       = "November 23, 2020",
    logoPath           = "Interface\\AddOns\\IMAGO\\Media\\Eras\\Logos\\shadowlands_logo.tga",
    logo_w             = 384,
    logo_h             = 160,
    bgPath             = "Interface\\AddOns\\IMAGO\\Media\\Eras\\Backgrounds\\shadowlands_bg.tga",
    tilePath           = "Interface\\AddOns\\IMAGO\\Media\\Eras\\sl_tile.tga",
    mapPath            = "Interface\\AddOns\\IMAGO\\Media\\Eras\\Maps\\sl_map.tga",
    mapPlaceholderPath = "Interface\\AddOns\\IMAGO\\Media\\placeholder_map.tga",
    name="", region="", antagonist="", conflict="", summary="",
    fastFacts={}, campaigns={}, patches={}, keyFigures={},
}

-- ------------------------------------------------------------
-- BATTLE FOR AZEROTH
-- ------------------------------------------------------------
IMAGOdb.eras["bfa"] = {
    order              = 5,
    coming_soon        = true,
    release_date       = "August 13, 2018",
    logoPath           = "Interface\\AddOns\\IMAGO\\Media\\Eras\\Logos\\battle_for_azeroth_logo.tga",
    logo_w             = 384,
    logo_h             = 187,
    bgPath             = "Interface\\AddOns\\IMAGO\\Media\\Eras\\Backgrounds\\battle_for_azeroth.tga",
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
    logoPath           = "Interface\\AddOns\\IMAGO\\Media\\Eras\\Logos\\legion_logo.tga",
    logo_w             = 384,
    logo_h             = 175,
    bgPath             = "Interface\\AddOns\\IMAGO\\Media\\Eras\\Backgrounds\\legion_bg.tga",
    tilePath           = "Interface\\AddOns\\IMAGO\\Media\\Eras\\legion_tile.tga",
    mapPath            = "Interface\\AddOns\\IMAGO\\Media\\Eras\\Maps\\legion_map.tga",
    mapPlaceholderPath = "Interface\\AddOns\\IMAGO\\Media\\placeholder_map.tga",
    name="", region="", antagonist="", conflict="", summary="",
    fastFacts={}, campaigns={}, patches={}, keyFigures={},
}

-- ------------------------------------------------------------
-- WARLORDS OF DRAENOR
-- ------------------------------------------------------------
IMAGOdb.eras["wod"] = {
    order              = 7,
    coming_soon        = true,
    release_date       = "November 13, 2014",
    logoPath           = "Interface\\AddOns\\IMAGO\\Media\\Eras\\Logos\\warlords_of_draenor_logo.tga",
    logo_w             = 384,
    logo_h             = 172,
    bgPath             = "Interface\\AddOns\\IMAGO\\Media\\Eras\\Backgrounds\\warlords_of_draenor_bg.tga",
    tilePath           = "Interface\\AddOns\\IMAGO\\Media\\Eras\\wod_tile.tga",
    mapPath            = "Interface\\AddOns\\IMAGO\\Media\\Eras\\Maps\\wod_map.tga",
    mapPlaceholderPath = "Interface\\AddOns\\IMAGO\\Media\\placeholder_map.tga",
    name="", region="", antagonist="", conflict="", summary="",
    fastFacts={}, campaigns={}, patches={}, keyFigures={},
}

-- ------------------------------------------------------------
-- MISTS OF PANDARIA
-- ------------------------------------------------------------
IMAGOdb.eras["mop"] = {
    order              = 8,
    coming_soon        = true,
    release_date       = "September 25, 2012",
    logoPath           = "Interface\\AddOns\\IMAGO\\Media\\Eras\\Logos\\mists_of_pandaria_logo.tga",
    logo_w             = 384,
    logo_h             = 174,
    bgPath             = "Interface\\AddOns\\IMAGO\\Media\\Eras\\Backgrounds\\mists_of_pandaria_bg.tga",
    tilePath           = "Interface\\AddOns\\IMAGO\\Media\\Eras\\mop_tile.tga",
    mapPath            = "Interface\\AddOns\\IMAGO\\Media\\Eras\\Maps\\mop_map.tga",
    mapPlaceholderPath = "Interface\\AddOns\\IMAGO\\Media\\placeholder_map.tga",
    name="", region="", antagonist="", conflict="", summary="",
    fastFacts={}, campaigns={}, patches={}, keyFigures={},
}

-- ------------------------------------------------------------
-- CATACLYSM
-- ------------------------------------------------------------
IMAGOdb.eras["cata"] = {
    order              = 9,
    coming_soon        = true,
    release_date       = "December 7, 2010",
    logoPath           = "Interface\\AddOns\\IMAGO\\Media\\Eras\\Logos\\cataclysm_logo.tga",
    logo_w             = 384,
    logo_h             = 173,
    bgPath             = "Interface\\AddOns\\IMAGO\\Media\\Eras\\Backgrounds\\cataclysm_bg.tga",
    tilePath           = "Interface\\AddOns\\IMAGO\\Media\\Eras\\cata_tile.tga",
    mapPath            = "Interface\\AddOns\\IMAGO\\Media\\Eras\\Maps\\cata_map.tga",
    mapPlaceholderPath = "Interface\\AddOns\\IMAGO\\Media\\placeholder_map.tga",
    name="", region="", antagonist="", conflict="", summary="",
    fastFacts={}, campaigns={}, patches={}, keyFigures={},
}

-- ------------------------------------------------------------
-- WRATH OF THE LICH KING
-- ------------------------------------------------------------
IMAGOdb.eras["wotlk"] = {
    order              = 10,
    coming_soon        = true,
    release_date       = "November 13, 2008",
    logoPath           = "Interface\\AddOns\\IMAGO\\Media\\Eras\\Logos\\wrath_of_the_lich_king_logo.tga",
    logo_w             = 384,
    logo_h             = 190,
    bgPath             = "Interface\\AddOns\\IMAGO\\Media\\Eras\\Backgrounds\\wrath_of_the_lich_king_bg.tga",
    tilePath           = "Interface\\AddOns\\IMAGO\\Media\\Eras\\wotlk_tile.tga",
    mapPath            = "Interface\\AddOns\\IMAGO\\Media\\Eras\\Maps\\wotlk_map.tga",
    mapPlaceholderPath = "Interface\\AddOns\\IMAGO\\Media\\placeholder_map.tga",
    name="", region="", antagonist="", conflict="", summary="",
    fastFacts={}, campaigns={}, patches={}, keyFigures={},
}

-- ------------------------------------------------------------
-- THE BURNING CRUSADE
-- ------------------------------------------------------------
IMAGOdb.eras["tbc"] = {
    order              = 11,
    coming_soon        = true,
    release_date       = "January 16, 2007",
    logoPath           = "Interface\\AddOns\\IMAGO\\Media\\Eras\\Logos\\the_burning_crusade_logo.tga",
    logo_w             = 384,
    logo_h             = 171,
    bgPath             = "Interface\\AddOns\\IMAGO\\Media\\Eras\\Backgrounds\\the_burning_crusade_bg.tga",
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
    logoPath           = "Interface\\AddOns\\IMAGO\\Media\\Eras\\Logos\\world_of_warcraft_logo.tga",
    logo_w             = 384,
    logo_h             = 152,
    bgPath             = "Interface\\AddOns\\IMAGO\\Media\\Eras\\Backgrounds\\classic_bg.tga",
    tilePath           = "Interface\\AddOns\\IMAGO\\Media\\Eras\\classic_tile.tga",
    mapPath            = "Interface\\AddOns\\IMAGO\\Media\\Eras\\Maps\\classic_map.tga",
    mapPlaceholderPath = "Interface\\AddOns\\IMAGO\\Media\\placeholder_map.tga",
    name="", region="", antagonist="", conflict="", summary="",
    fastFacts={}, campaigns={}, patches={}, keyFigures={},
}
