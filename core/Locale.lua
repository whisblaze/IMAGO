-- ============================================================
-- IMAGO — core/Locale.lua
-- Sprachdatei (Deutsch / Englisch)
-- ============================================================

IMAGO.L = {}
local L = IMAGO.L
local locale = GetLocale()  -- "deDE" oder "enUS" / "enGB"

if locale == "deDE" then
    -- UI-Texte
    L["WINDOW_TITLE"]      = "Chronik der Unvergessenen"
    L["UNDISCOVERED"]      = "Unentdeckt"
    L["UNDISCOVERED_LORE"] = "Finde diese Person in der Welt, um ihr Schicksal zu entschlüsseln."
    L["ADDON_ENABLED"]     = "IMAGO aktiviert."
    L["ADDON_DISABLED"]    = "IMAGO deaktiviert."
    L["RESET_DONE"]        = "Alle gesehenen Einträge wurden zurückgesetzt."
    L["SETTINGS_TITLE"]    = "IMAGO - Einstellungen"
    L["SETTINGS_DESC"]     = "Die Welt hat eine Geschichte. IMAGO bewahrt sie."
    L["SETTINGS_SEC_GENERAL"] = "Allgemein"
    L["SETTINGS_SEC_DISCOVERY_CARD"] = "Discovery Card (NPC/Zonen-Popup)"
    L["SETTINGS_SEC_IDLE_FLASHCARDS"] = "Idle Flashcards (Snippets)"
    L["SETTINGS_SEC_MOTD"] = "Imago MotD (Chat)"
    L["SETTINGS_SEC_UI"] = "UI"
    L["OPT_ENABLE"]        = "IMAGO aktivieren"
    L["OPT_ENABLE_IDLE_FLASHCARDS"] = "Idle Flashcards aktivieren"
    L["OPT_ENABLE_MOTD"] = "Imago MotD aktivieren (\"Wusstest du schon?\" im Chat)"
    L["OPT_ONCE_ONLY_NPC"]  = "NPC-Texte nur beim ersten Entdecken anzeigen"
    L["OPT_ONCE_ONLY_ZONE"] = "Zonen-Texte nur beim ersten Entdecken anzeigen"
    L["OPT_RESET_BTN"]     = "Historie zurücksetzen"
    L["OPT_SCALE"]         = "Fenstergröße (Skalierung)"
    L["OPT_MAIN_LORE_NO_TIMER"] = "Discovery Card offen lassen (kein Timer)"
    L["OPT_SNIPPET_NO_TIMER"] = "Idle Flashcards offen lassen (kein Timer)"
    L["OPT_OPAQUE_UI"] = "100% intransparente Fenster und Popups"
    L["CONTEXT_LORE_BTN"]  = "IMAGO Lore"
    L["CONTEXT_LORE_NONE"] = "|cFF888888IMAGO:|r Keine Lore für diesen NPC gefunden."
    L["CONTEXT_LORE_COMBAT"] = "|cFF888888IMAGO:|r Lore-Anzeige im Kampf nicht verfügbar."
    L["CONTEXT_LORE_CHRONICLE_FAIL"] = "|cFF888888IMAGO:|r Chronik konnte den Eintrag nicht fokussieren."
    L["DISPLAY_PROGRESS_NPC"]  = "Fortschritt: %d%% (%d/%d NPCs)"
    L["DISPLAY_PROGRESS_ZONE"] = "Fortschritt: %d%% (%d/%d Zonen)"
    L["CMD_HELP_OPEN"]     = "/imago open   — Öffnet die Chronik"
    L["CMD_HELP_UNLOCK"]   = "/imago unlock — Layout-Modus"
    L["CMD_HELP_TEST"]     = "/imago test   — Testanzeige"
    L["CMD_HELP_RESET"]    = "/imago reset  — Gesehene Einträge zurücksetzen"
    L["CMD_HELP_OPEN_DESC"] = "Öffnet oder schließt die Chronik"
    L["CMD_HELP_SETTINGS_DESC"] = "Öffnet die Addon-Einstellungen"
    L["CMD_HELP_HELP_DESC"] = "Zeigt diese Hilfe an"

    -- Kategorien (Midnight Fraktionen)
    L["CAT_QUELTHALAS"]    = "Verteidiger von Quel'Thalas"
    L["CAT_LIGHT"]         = "Vorhut des Lichts"
    L["CAT_AMANI"]         = "Der Amani-Stamm"
    L["CAT_HARATI"]        = "Die Hara'ti"
    L["CAT_VOID"]          = "Die Leereninvasion"
    L["CAT_EBON_BLADE"]    = "Ritter der Schwarzen Klinge"
    L["CAT_NEUTRAL"]       = "Unabhängige & Rätselhafte"

    -- ============================================================
    -- TAB 2: ZONEN (DASHBOARD & DETAILS)
    -- ============================================================
    L["FOOTER_ZONES_PROGRESS"]      = "%d / %d Zonen entdeckt (%d%%)"
    L["STARTPAGE_ZONES_RANK"]       = "ERKUNDUNGS-STATUS"
    L["STARTPAGE_ZONES_NEXT"]       = "KOMMENDE ENTDECKUNGEN:"
    L["ZONE_UNKNOWN_NAME"]          = "Unbekannte Region"
    L["ZONE_UNEXPLORED_HEADER"]     = "GEBIET UNERKUNDET"
    L["ZONE_UNEXPLORED_DESC"]       = "Die Kartographie dieser Region ist noch unvollständig.\nReise dorthin, um ihre Geheimnisse zu offenbaren."
    L["ZONE_POI_HEADER"]            = "INTERESSANTE ORTE"
    L["ZONE_UNDISCOVERED"]          = "Unentdeckt"

    -- ============================================================
    -- TAB 3: INSTANZEN (COMING SOON)
    -- ============================================================
    L["COMING_SOON_INSTANCES_TITLE"]= "VERBORGENE INSTANZEN"
    L["COMING_SOON_INSTANCES_DESC"] = "Dungeons, Raids und Tiefen.\nDie Echos der mächtigsten Feinde warten auf ihre Entdeckung.\n\n|cFF9370DB[ IN ENTWICKLUNG ]|r"

    -- Scanner & Tooltip
    L["TOOLTIP_KNOWN"]     = "IMAGO: |cFFFFD700In Chronik verzeichnet|r"
    L["TOOLTIP_UNKNOWN"]   = "IMAGO: |cFF888888Schicksal verborgen (Anvisieren zum Entschlüsseln)|r"
    L["CHAT_DISCOVERY"]    = "|cFF9370DB[IMAGO]|r Deine Chronik erzittert... ein neues Echo wurde gebunden: |cFFFFD700%s|r"
    L["CHAT_KNOWN"]        = "|cFF888888[IMAGO]|r Archiv-Eintrag abgerufen: |cFFCCCCCC%s|r"

    -- Validierung
    L["VAL_START"]         = "|cFFFFD700[IMAGO]|r Starte Datenbank-Validierung..."
    L["VAL_ERR_ID"]        = "|cFFFF0000Fehler:|r %s hat weder displayID noch ids-Array!"
    L["VAL_WARN_LORE"]     = "|cFFFF8C00Warnung:|r %s hat keine Lore in der aktuellen Sprache!"
    L["VAL_DONE"]          = "Validierung beendet. %d NPCs geprüft. %d kritische Fehler, %d Warnungen."

    L["CINEMATIC_CONTINUE"] = "< Klicken, um das Schicksal zu entschlüsseln >"
    L["FILTER_ALL"] = "Alle Echos"
    L["FILTER_HIST"] = "Zuletzt entdeckt"
    L["FILTER_FAV"] = "Favoriten"
    L["HINT_IDENTITY_HIDDEN"] = "IDENTITÄT VERBORGEN"
    L["DASHBOARD_FATES_UNCOVERED"] = "Schicksale entschlüsselt"
    L["DASHBOARD_TITLE"] = "CHRONIK ÜBERSICHT"
    L["LOGIN_DID_YOU_KNOW"] = "Wusstest du schon?"
    L["FUN_FACT"] = "Fun Fact"
    L["DID_YOU_KNOW"] = "Wusstest du schon?"
    L["HISTORICAL_FACT"] = "Historischer Fakt"
    L["NEXT"] = "Weiter"
    L["LOGIN_EMPTY_CHRONICLE"] = "Deine Chronik ist noch leer..."
    L["LOGIN_ALL_UNCOVERED"] = "Alle Geheimnisse gelüftet!"
    L["FOOTER_PROGRESS"] = "%d / %d Schicksale entschlüsselt (%d%%)"
    L["TAB_FATES"] = "Schicksale"
    L["TAB_ZONES"] = "Zonen"
    L["TAB_INSTANCES"] = "Instanzen"
    L["STARTPAGE_RANK"] = "Dein Stand in der Chronik:"
    L["STARTPAGE_COMPLETED"] = "ERREICHTE MEILENSTEINE:"
    L["STARTPAGE_NEXT"] = "KOMMENDE ENTDECKUNGEN:"
    L["WORD_AT"] = "bei"
    L["STARTPAGE_NO_MILESTONES"] = "|cFF888888Noch keine Meilensteine erreicht.|r"
    L["STARTPAGE_MAX_REACHED"] = "|cFF00FF00MAXIMALRANG ERREICHT!|r"
    L["TAG_NEW"] = "[ NEU ]"
    L["HINT_SCOUTS"] = "Späher der Fraktionen berichten von jüngsten Sichtungen in folgenden Gebieten:\n\n|cFFFFD700%s|r"
    L["HINT_UNKNOWN_LOC"] = "Der Aufenthaltsort ist in den Archiven aktuell nicht verzeichnet. Suche in der Welt nach Hinweisen."
    L["TAB_DETAIL_LORE"] = "Lore"
    L["TAB_DETAIL_TIMELINE"] = "Timeline"
    L["CMD_UNLOCKALL_SUCCESS"] = "Erfolg: Alle %d Echos der Vergangenheit wurden in der Chronik freigeschaltet!"

    -- Minimap Tooltip
    L["MINIMAP_TOOLTIP_TITLE"]       = "IMAGO"
    L["MINIMAP_TOOLTIP_LEFTCLICK"]   = "Linksklick: Chronik öffnen"
    L["MINIMAP_TOOLTIP_RIGHTCLICK"]  = "Rechtsklick: Idle Flashcards"

    -- Combat & Break Contact Settings
    L["OPT_CLOSE_ON_COMBAT"]         = "Discovery Card bei Kampfbeginn schließen"
    L["OPT_ENABLE_BREAK_CONTACT"]    = "Discovery Card bei Entfernung vom NPC schließen"
    L["OPT_BREAK_CONTACT_DISTANCE"]  = "Distanz-Schwellenwert (m)"

    -- Credits
    L["TAB_CREDITS"] = "Credits"
    L["CREDITS_TITLE"] = "MITWIRKENDE"
    L["CREDITS_DESC"] = "Ein großes Dankeschön an die IMAGO Discord Community, die dieses Addon mit ihrem Wissen und ihrer Leidenschaft bereichert hat."
    L["CREDITS_TOP_HINT"] = "|cFFFFD700Hervorgehobene Namen|r markieren Mitglieder mit besonders vielen Beiträgen zur Datenbank."
    L["CREDITS_ROLE_SCRIBE"] = "Lore Scribes"
    L["CREDITS_ROLE_ARCHIVIST"] = "Archivists"
    L["CREDITS_ROLE_MINER"] = "Data Miners"
    L["CREDITS_ROLE_TRANSLATOR"] = "Translators"
    L["CREDITS_ROLE_TESTER"] = "Testers"

    -- Midnight Spoiler Protection
    L["SPOILER_MIDNIGHT_TITLE"] = "Midnight-Ereignis"
    L["SPOILER_MIDNIGHT_HINT"] = "Klicken zum Anzeigen"
    L["SPOILER_TOOLTIP_TITLE"] = "SPOILER"
    L["SPOILER_TOOLTIP_DESC"] = "Midnight Expansion"

else
    -- English (default für enUS, enGB, und alle anderen)
    L["WINDOW_TITLE"]      = "Chronicle of the Unforgotten"
    L["UNDISCOVERED"]      = "Undiscovered"
    L["UNDISCOVERED_LORE"] = "Find this person in the world to uncover their fate."
    L["ADDON_ENABLED"]     = "IMAGO enabled."
    L["ADDON_DISABLED"]    = "IMAGO disabled."
    L["RESET_DONE"]        = "All discovered entries have been reset."
    L["SETTINGS_TITLE"]    = "IMAGO - Settings"
    L["SETTINGS_DESC"]     = "The world has a story. IMAGO preserves it."
    L["SETTINGS_SEC_GENERAL"] = "General"
    L["SETTINGS_SEC_DISCOVERY_CARD"] = "Discovery Card (NPC/Zone popup)"
    L["SETTINGS_SEC_IDLE_FLASHCARDS"] = "Idle Flashcards (snippets)"
    L["SETTINGS_SEC_MOTD"] = "Imago MotD (chat)"
    L["SETTINGS_SEC_UI"] = "UI"
    L["OPT_ENABLE"]        = "Enable IMAGO"
    L["OPT_ENABLE_IDLE_FLASHCARDS"] = "Enable Idle Flashcards"
    L["OPT_ENABLE_MOTD"] = "Enable Imago MotD (\"Did you know?\" in chat)"
    L["OPT_ONCE_ONLY_NPC"]  = "Only show NPC lore on first discovery"
    L["OPT_ONCE_ONLY_ZONE"] = "Only show Zone lore on first discovery"
    L["OPT_RESET_BTN"]     = "Reset history"
    L["OPT_SCALE"]         = "Window scale"
    L["OPT_MAIN_LORE_NO_TIMER"] = "Keep Discovery Card open (no timer)"
    L["OPT_SNIPPET_NO_TIMER"] = "Keep Idle Flashcards open (no timer)"
    L["OPT_OPAQUE_UI"] = "100% opaque windows and popups"
    L["CONTEXT_LORE_BTN"]  = "IMAGO Lore"
    L["CONTEXT_LORE_NONE"] = "|cFF888888IMAGO:|r No lore found for this NPC."
    L["CONTEXT_LORE_COMBAT"] = "|cFF888888IMAGO:|r Lore view is unavailable in combat."
    L["CONTEXT_LORE_CHRONICLE_FAIL"] = "|cFF888888IMAGO:|r The Chronicle could not focus this entry."
    L["DISPLAY_PROGRESS_NPC"]  = "Progress: %d%% (%d/%d NPCs)"
    L["DISPLAY_PROGRESS_ZONE"] = "Progress: %d%% (%d/%d zones)"
    L["CMD_HELP_OPEN"]     = "/imago open   — Open the Chronicle"
    L["CMD_HELP_UNLOCK"]   = "/imago unlock — Layout mode"
    L["CMD_HELP_TEST"]     = "/imago test   — Test display"
    L["CMD_HELP_RESET"]    = "/imago reset  — Reset discovered entries"
    L["CMD_HELP_OPEN_DESC"] = "Opens or closes the Chronicle"
    L["CMD_HELP_SETTINGS_DESC"] = "Opens the addon settings"
    L["CMD_HELP_HELP_DESC"] = "Shows this help message"

    -- Categories (Midnight Factions)
    L["CAT_QUELTHALAS"]    = "Defenders of Quel'Thalas"
    L["CAT_LIGHT"]         = "Vanguard of Light"
    L["CAT_AMANI"]         = "The Amani Tribe"
    L["CAT_HARATI"]        = "The Hara'ti"
    L["CAT_VOID"]          = "The Void Invasion"
    L["CAT_EBON_BLADE"]    = "Knights of the Ebon Blade"
    L["CAT_NEUTRAL"]       = "Independent & Enigmatic"

    -- ============================================================
    -- TAB 2: ZONES (DASHBOARD & DETAILS)
    -- ============================================================
    L["FOOTER_ZONES_PROGRESS"]      = "%d / %d Zones discovered (%d%%)"
    L["STARTPAGE_ZONES_RANK"]       = "EXPLORATION STATUS"
    L["STARTPAGE_ZONES_NEXT"]       = "UPCOMING DISCOVERIES:"
    L["ZONE_UNKNOWN_NAME"]          = "Unknown Region"
    L["ZONE_UNEXPLORED_HEADER"]     = "AREA UNEXPLORED"
    L["ZONE_UNEXPLORED_DESC"]       = "The cartography of this region is still incomplete.\nTravel there to reveal its secrets."
    L["ZONE_POI_HEADER"]            = "POINTS OF INTEREST"
    L["ZONE_UNDISCOVERED"]          = "Undiscovered"

    -- ============================================================
    -- TAB 3: INSTANCES (COMING SOON)
    -- ============================================================
    L["COMING_SOON_INSTANCES_TITLE"]= "HIDDEN INSTANCES"
    L["COMING_SOON_INSTANCES_DESC"] = "Dungeons, raids, and delves.\nThe echoes of the most powerful enemies await their discovery.\n\n|cFF9370DB[ IN DEVELOPMENT ]|r"

    -- Scanner & Tooltip
    L["TOOLTIP_KNOWN"]     = "IMAGO: |cFFFFD700Recorded in Chronicle|r"
    L["TOOLTIP_UNKNOWN"]   = "IMAGO: |cFF888888Fate hidden (Target to uncover)|r"
    L["CHAT_DISCOVERY"]    = "|cFF9370DB[IMAGO]|r Your chronicle trembles... a new echo is bound: |cFFFFD700%s|r"
    L["CHAT_KNOWN"]        = "|cFF888888[IMAGO]|r Archive entry accessed: |cFFCCCCCC%s|r"
    
    -- Validation
    L["VAL_START"]         = "|cFFFFD700[IMAGO]|r Starting database validation..."
    L["VAL_ERR_ID"]        = "|cFFFF0000Error:|r %s has neither displayID nor ids array!"
    L["VAL_WARN_LORE"]     = "|cFFFF8C00Warning:|r %s has no lore in the current language!"
    L["VAL_DONE"]          = "Validation complete. %d NPCs checked. %d critical errors, %d warnings."

    L["CINEMATIC_CONTINUE"] = "< Click to uncover their fate >"
    L["FILTER_ALL"] = "All Echoes"
    L["FILTER_HIST"] = "Recently Discovered"
    L["FILTER_FAV"] = "Favorites"
    L["HINT_IDENTITY_HIDDEN"] = "IDENTITY HIDDEN"
    L["DASHBOARD_FATES_UNCOVERED"] = "Fates Uncovered"
    L["DASHBOARD_TITLE"] = "CHRONICLE OVERVIEW"
    L["LOGIN_DID_YOU_KNOW"] = "Did you know?"
    L["FUN_FACT"] = "Fun Fact"
    L["DID_YOU_KNOW"] = "Did you know?"
    L["HISTORICAL_FACT"] = "Historical Fact"
    L["NEXT"] = "Next"
    L["LOGIN_EMPTY_CHRONICLE"] = "Your chronicle is still empty..."
    L["LOGIN_ALL_UNCOVERED"] = "All secrets have been revealed!"
    L["FOOTER_PROGRESS"] = "%d / %d Fates uncovered (%d%%)"
    L["TAB_FATES"] = "Fates"
    L["TAB_ZONES"] = "Zones"
    L["TAB_INSTANCES"] = "Instances"
    L["STARTPAGE_RANK"] = "Your Standing in the Chronicle:"
    L["STARTPAGE_COMPLETED"] = "REACHED MILESTONES:"
    L["STARTPAGE_NEXT"] = "HIDDEN MILESTONES:"
    L["WORD_AT"] = "at"
    L["STARTPAGE_NO_MILESTONES"] = "|cFF888888No milestones reached yet.|r"
    L["STARTPAGE_MAX_REACHED"] = "|cFF00FF00Maximum reached!|r"
    L["TAG_NEW"] = "[ NEW ]"
    L["HINT_SCOUTS"] = "Faction scouts report recent sightings in the following areas:\n\n|cFFFFD700%s|r"
    L["HINT_UNKNOWN_LOC"] = "The location is currently not recorded in the archives. Search the world for clues."
    L["TAB_DETAIL_LORE"] = "Lore"
    L["TAB_DETAIL_TIMELINE"] = "Timeline"
    L["CMD_UNLOCKALL_SUCCESS"] = "Success: All %d echoes of the past have been unlocked in the chronicle!"

    -- Minimap Tooltip
    L["MINIMAP_TOOLTIP_TITLE"]       = "IMAGO"
    L["MINIMAP_TOOLTIP_LEFTCLICK"]   = "Left Click: Open Chronicle"
    L["MINIMAP_TOOLTIP_RIGHTCLICK"]  = "Right Click: Idle Flashcards"

    -- Combat & Break Contact Settings
    L["OPT_CLOSE_ON_COMBAT"]         = "Close Discovery Card when entering combat"
    L["OPT_ENABLE_BREAK_CONTACT"]    = "Close Discovery Card when moving away from NPC"
    L["OPT_BREAK_CONTACT_DISTANCE"]  = "Distance threshold (yards)"

    -- Credits
    L["TAB_CREDITS"] = "Credits"
    L["CREDITS_TITLE"] = "CONTRIBUTORS"
    L["CREDITS_DESC"] = "A huge thank you to the IMAGO Discord community for enriching this addon with their knowledge and passion."
    L["CREDITS_TOP_HINT"] = "|cFFFFD700Highlighted names|r mark members with an exceptionally high number of contributions to the database."
    L["CREDITS_ROLE_SCRIBE"] = "Lore Scribes"
    L["CREDITS_ROLE_ARCHIVIST"] = "Archivists"
    L["CREDITS_ROLE_MINER"] = "Data Miners"
    L["CREDITS_ROLE_TRANSLATOR"] = "Translators"
    L["CREDITS_ROLE_TESTER"] = "Testers"

    -- Midnight Spoiler Protection
    L["SPOILER_MIDNIGHT_TITLE"] = "Midnight Event"
    L["SPOILER_MIDNIGHT_HINT"] = "Click to reveal"
    L["SPOILER_TOOLTIP_TITLE"] = "SPOILER"
    L["SPOILER_TOOLTIP_DESC"] = "Midnight Expansion"

end
