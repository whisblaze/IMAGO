-- ============================================================
-- IMAGO — core/Locale_deDE.lua
-- Deutsche Lokalisierung
-- ============================================================

IMAGO = IMAGO or {}
IMAGO.LocaleData = IMAGO.LocaleData or {}

local L = {}
IMAGO.LocaleData.deDE = L

-- UI-Texte
L["WINDOW_TITLE"]                   = "Chronik der Unvergessenen"
L["UNDISCOVERED"]                   = "Unentdeckt"
L["UNDISCOVERED_LORE"]              = "Finde diese Person in der Welt, um ihr Schicksal zu entschlüsseln."
L["ADDON_ENABLED"]                  = "IMAGO aktiviert."
L["ADDON_DISABLED"]                 = "IMAGO deaktiviert."
L["RESET_DONE"]                     = "Alle gesehenen Einträge wurden zurückgesetzt."
L["SETTINGS_TITLE"]                 = "IMAGO - Einstellungen"
L["SETTINGS_DESC"]                  = "Die Welt hat eine Geschichte. IMAGO bewahrt sie."
L["SETTINGS_SEC_GENERAL"]           = "Allgemein"
L["SETTINGS_SEC_DISCOVERY_CARD"]    = "Discovery Card (NPC/Zonen-Popup)"
L["SETTINGS_SEC_IDLE_FLASHCARDS"]   = "Idle Flashcards (Snippets)"
L["SETTINGS_SEC_MOTD"]              = "Imago MotD (Chat)"
L["SETTINGS_SEC_UI"]                = "UI"
L["SETTINGS_SEC_LANGUAGE"]          = "Sprache"
L["OPT_LANGUAGE"]                   = "Addon-Sprache"
L["OPT_LANGUAGE_NOTE"]              = "\195\132nderung wird erst nach /reload wirksam."
L["OPT_ENABLE"]                     = "IMAGO aktivieren"
L["OPT_ENABLE_IDLE_FLASHCARDS"]     = "Idle Flashcards aktivieren"
L["OPT_ENABLE_MOTD"]                = "Imago MotD aktivieren (\"Wusstest du schon?\" im Chat)"
L["OPT_ONCE_ONLY_NPC"]              = "NPC-Texte nur beim ersten Entdecken anzeigen"
L["OPT_ONCE_ONLY_ZONE"]             = "Zonen-Texte nur beim ersten Entdecken anzeigen"
L["OPT_RESET_BTN"]                  = "Historie zurücksetzen"
L["OPT_SCALE"]                      = "Fenstergröße (Skalierung)"
L["OPT_MAIN_LORE_NO_TIMER"]         = "Discovery Card offen lassen (kein Timer)"
L["OPT_SNIPPET_NO_TIMER"]           = "Idle Flashcards offen lassen (kein Timer)"
L["OPT_OPAQUE_UI"]                  = "100% intransparente Fenster und Popups"
L["OPT_SHOW_MINIMAP"]               = "Minimap-Symbol anzeigen"
L["CONTEXT_LORE_BTN"]               = "IMAGO Lore"
L["CONTEXT_LORE_NONE"]              = "|cFF888888IMAGO:|r Keine Lore für diesen NPC gefunden."
L["CONTEXT_LORE_COMBAT"]            = "|cFF888888IMAGO:|r Lore-Anzeige im Kampf nicht verfügbar."
L["CONTEXT_LORE_CHRONICLE_FAIL"]    = "|cFF888888IMAGO:|r Chronik konnte den Eintrag nicht fokussieren."
L["DISPLAY_PROGRESS_NPC"]           = "Fortschritt: %d%% (%d/%d NPCs)"
L["DISPLAY_PROGRESS_ZONE"]          = "Fortschritt: %d%% (%d/%d Zonen)"
L["CMD_HELP_OPEN"]                  = "/imago open   — Öffnet die Chronik"
L["CMD_HELP_UNLOCK"]                = "/imago unlock — Layout-Modus"
L["CMD_HELP_TEST"]                  = "/imago test   — Testanzeige"
L["CMD_HELP_RESET"]                 = "/imago reset  — Gesehene Einträge zurücksetzen"
L["CMD_HELP_OPEN_DESC"]             = "Öffnet oder schließt die Chronik"
L["CMD_HELP_SETTINGS_DESC"]         = "Öffnet die Addon-Einstellungen"
L["CMD_HELP_HELP_DESC"]             = "Zeigt diese Hilfe an"

-- Kategorien (Midnight Fraktionen)
L["CAT_QUELTHALAS"]                 = "Verteidiger von Quel'Thalas"
L["CAT_LIGHT"]                      = "Vorhut des Lichts"
L["CAT_AMANI"]                      = "Der Amani-Stamm"
L["CAT_HARATI"]                     = "Die Hara'ti"
L["CAT_VOID"]                       = "Die Leereninvasion"
L["CAT_EBON_BLADE"]                 = "Ritter der Schwarzen Klinge"
L["CAT_NEUTRAL"]                    = "Unabhängige & Rätselhafte"
L["CAT_ARCANTINA"]                  = "Die Arcantina"

-- ============================================================
-- TAB 2: ZONEN (DASHBOARD & DETAILS)
-- ============================================================
L["FOOTER_ZONES_PROGRESS"]          = "%d / %d Zonen entdeckt (%d%%)"
L["STARTPAGE_ZONES_RANK"]           = "ERKUNDUNGS-STATUS"
L["STARTPAGE_ZONES_NEXT"]           = "KOMMENDE ENTDECKUNGEN:"
L["ZONE_UNKNOWN_NAME"]              = "Unbekannte Region"
L["ZONE_UNEXPLORED_HEADER"]         = "GEBIET UNERKUNDET"
L["ZONE_UNEXPLORED_DESC"]           = "Die Kartographie dieser Region ist noch unvollständig.\nReise dorthin, um ihre Geheimnisse zu offenbaren."
L["ZONE_POI_HEADER"]                = "INTERESSANTE ORTE"
L["ZONE_UNDISCOVERED"]              = "Unentdeckt"

-- ============================================================
-- TAB 3: INSTANZEN (COMING SOON)
-- ============================================================
L["COMING_SOON_INSTANCES_TITLE"]    = "VERBORGENE INSTANZEN"
L["COMING_SOON_INSTANCES_DESC"]     = "Dungeons, Raids und Tiefen.\nDie Echos der mächtigsten Feinde warten auf ihre Entdeckung.\n\n|cFF9370DB[ IN ENTWICKLUNG ]|r"

-- Scanner & Tooltip
L["TOOLTIP_KNOWN"]                  = "IMAGO: |cFFFFD700In Chronik verzeichnet|r"
L["TOOLTIP_UNKNOWN"]                = "IMAGO: |cFF888888Schicksal verborgen (Anvisieren zum Entschlüsseln)|r"
L["CHAT_DISCOVERY"]                 = "|cFF9370DB[IMAGO]|r Deine Chronik erzittert... ein neues Echo wurde gebunden: |cFFFFD700%s|r"
L["QUEST_DISCOVERY"]                = "|cFF9370DB[IMAGO]|r Deine Chronik erzittert nach Abschluss der Quest: |cFFFFD700%s|r... ein neues Echo wurde gebunden: |cFFFFD700%s|r"
L["CHAT_KNOWN"]                     = "|cFF888888[IMAGO]|r Archiv-Eintrag abgerufen: |cFFCCCCCC%s|r"

-- Validierung
L["VAL_START"]                      = "|cFFFFD700[IMAGO]|r Starte Datenbank-Validierung..."
L["VAL_ERR_ID"]                     = "|cFFFF0000Fehler:|r %s hat weder displayID noch ids-Array!"
L["VAL_WARN_LORE"]                  = "|cFFFF8C00Warnung:|r %s hat keine Lore in der aktuellen Sprache!"
L["VAL_DONE"]                       = "Validierung beendet. %d NPCs geprüft. %d kritische Fehler, %d Warnungen."

L["CINEMATIC_CONTINUE"]             = "< Klicken, um das Schicksal zu entschlüsseln >"
L["FILTER_ALL"]                     = "Alle Echos"
L["FILTER_HIST"]                    = "Zuletzt entdeckt"
L["FILTER_FAV"]                     = "Favoriten"
L["HINT_IDENTITY_HIDDEN"]           = "IDENTITÄT VERBORGEN"
L["DASHBOARD_FATES_UNCOVERED"]      = "Schicksale entschlüsselt"
L["DASHBOARD_TITLE"]                = "CHRONIK ÜBERSICHT"
L["LOGIN_DID_YOU_KNOW"]             = "Wusstest du schon?"
L["FUN_FACT"]                       = "Fun Fact"
L["DID_YOU_KNOW"]                   = "Wusstest du schon?"
L["HISTORICAL_FACT"]                = "Historischer Fakt"
L["BEHIND_THE_SCENES"]              = "Hinter den Kulissen"
L["NEXT"]                           = "Weiter"
L["LOGIN_EMPTY_CHRONICLE"]          = "Deine Chronik ist noch leer..."
L["LOGIN_ALL_UNCOVERED"]            = "Alle Geheimnisse gelüftet!"
L["FOOTER_PROGRESS"]                = "%d / %d Schicksale entschlüsselt (%d%%)"
L["TAB_FATES"]                      = "Schicksale"
L["TAB_ZONES"]                      = "Zonen"
L["TAB_INSTANCES"]                  = "Instanzen"
L["STARTPAGE_RANK"]                 = "Dein Stand in der Chronik:"
L["STARTPAGE_COMPLETED"]            = "ERREICHTE MEILENSTEINE:"
L["STARTPAGE_NEXT"]                 = "KOMMENDE ENTDECKUNGEN:"
L["WORD_AT"]                        = "bei"
L["STARTPAGE_NO_MILESTONES"]        = "|cFF888888Noch keine Meilensteine erreicht.|r"
L["STARTPAGE_MAX_REACHED"]          = "|cFF00FF00MAXIMALRANG ERREICHT!|r"
L["TAG_NEW"]                        = "[ NEU ]"
L["HINT_SCOUTS"]                    = "Späher der Fraktionen berichten von jüngsten Sichtungen in folgenden Gebieten:\n\n|cFFFFD700%s|r"
L["HINT_UNKNOWN_LOC"]               = "Der Aufenthaltsort ist in den Archiven aktuell nicht verzeichnet. Suche in der Welt nach Hinweisen."
L["TAB_DETAIL_LORE"]                = "Lore"
L["TAB_DETAIL_TIMELINE"]            = "Timeline"
L["CMD_UNLOCKALL_SUCCESS"]          = "Erfolg: Alle %d Echos der Vergangenheit wurden in der Chronik freigeschaltet!"

-- Minimap Tooltip
L["MINIMAP_TOOLTIP_TITLE"]          = "IMAGO"
L["MINIMAP_TOOLTIP_LEFTCLICK"]      = "Linksklick: Chronik öffnen"
L["MINIMAP_TOOLTIP_RIGHTCLICK"]     = "Rechtsklick: Idle Flashcards"

-- Combat & Break Contact Settings
L["OPT_CLOSE_ON_COMBAT"]            = "Discovery Card bei Kampfbeginn schließen"
L["OPT_ENABLE_BREAK_CONTACT"]       = "Discovery Card bei Entfernung vom NPC schließen"
L["OPT_BREAK_CONTACT_DISTANCE"]     = "Distanz-Schwellenwert (m)"

-- Credits
L["TAB_CREDITS"]                    = "Credits"
L["CREDITS_TITLE"]                  = "MITWIRKENDE"
L["CREDITS_DESC"]                   = "Ein großes Dankeschön an die IMAGO Discord Community, die dieses Addon mit ihrem Wissen und ihrer Leidenschaft bereichert hat."
L["CREDITS_TOP_HINT"]               = "|cFFFFD700Hervorgehobene Namen|r markieren Mitglieder mit besonders vielen Beiträgen zur Datenbank."
L["CREDITS_ROLE_SCRIBE"]            = "Lore Scribes"
L["CREDITS_ROLE_ARCHIVIST"]         = "Archivists"
L["CREDITS_ROLE_MINER"]             = "Data Miners"
L["CREDITS_ROLE_TRANSLATOR"]        = "Translators"
L["CREDITS_ROLE_TESTER"]            = "Testers"

-- Midnight Spoiler Protection
L["SPOILER_MIDNIGHT_TITLE"]         = "Midnight-Ereignis"
L["SPOILER_MIDNIGHT_HINT"]          = "Klicken zum Anzeigen"
L["SPOILER_TOOLTIP_TITLE"]          = "SPOILER"
L["SPOILER_TOOLTIP_DESC"]           = "Midnight Expansion"

-- Mode Toggle
L["MODE_LABEL"]                     = "Modus"
L["MODE_EXPLORER"]                  = "Entdecker-Modus"
L["MODE_ENCYCLOPEDIA"]              = "Enzyklopädie-Modus"
L["MODE_MANUAL_UNLOCK"]             = "Manuell freischalten"

-- Map Toggle --
L["ACTION_OPEN_MAP"]                = "Weltkarte öffnen"
L["ACTION_OPEN_MAP_TIP"]            = "Diese Zone auf der Weltkarte öffnen"
L["ACTION_OPEN_EJ"]                 = "Open in Encounter Journal"
L["ACTION_OPEN_IMAGO"]              = "Open in IMAGO Chronicle"

-- Confirm Dialogs
L["CONFIRM_YES"]                    = "Ja"
L["CONFIRM_NO"]                     = "Nein"
L["CONFIRM_ENC_TITLE"]              = "Enzyklopädie-Modus aktivieren"
L["CONFIRM_ENC_DESC"]               = "Alle Inhalte werden sichtbar,\nzählen aber nicht für deinen Fortschritt.\n\nFortfahren?"
L["CONFIRM_UNLOCK_TITLE"]           = "Inhaltsvorschau freischalten"
L["CONFIRM_UNLOCK_DESC"]            = "Dieser Eintrag wird für dich lesbar, zählt aber nicht für deinen Fortschritt.\n\nFreischalten?"
L["BACK"]                           = "Zurück"

-- ============================================================
-- TAB 5: ERAS (Expansions-Chronik)
-- ============================================================
L["TAB_ERAS"]                 = "Ären"
L["ERAS_DASHBOARD_TITLE"]     = "ZEITALTER VON AZEROTH"
L["ERAS_PROGRESS"]            = "%d / %d Ären dokumentiert"
L["ERAS_COMING_SOON"]         = "DEMNÄCHST"
L["ERAS_TAB_OVERVIEW"]        = "Überblick"
L["ERAS_TAB_STORY"]           = "Story"
L["ERAS_TAB_PATCHES"]         = "Patches"
L["ERAS_TAB_CHARACTERS"]      = "Key Charaktere"
L["ERAS_EXPANSION"]           = "Erweiterung"
L["ERAS_SIDEBAR_HEADING"]     = "ÄREN ÜBERSICHT"
L["ERAS_GROUP_MODERN"]        = "Moderne Ären"
L["ERAS_GROUP_CLASSIC"]       = "Klassische Ären"
L["ERAS_STAT_REGION"]         = "Hauptregion"
L["ERAS_STAT_ANTAGONIST"]     = "Primärantagonist"
L["ERAS_STAT_CONFLICT"]       = "Zentraler Konflikt"
L["ERAS_FF_TITLE"]            = "Auf einen Blick"
L["ERAS_FF_COSMIC"]           = "Kosmische Kräfte"
L["ERAS_FF_CASUALTIES"]       = "Schicksale & Verluste"
L["ERAS_FF_WORLDSCAR"]        = "Weltnarbe / Vermächtnis"
L["ERAS_SELECT_ZONE"]         = "Zone wählen"
L["ERAS_KEY_FIGURES"]         = "Schlüsselfiguren:"
L["ERAS_NEW_ZONES"]           = "Neue Gebiete"
L["ERAS_ZONES"]               = "Gebiete"
L["ERAS_FIGURES_TITLE"]       = "Schlüsselcharaktere dieser Ära"
L["ERAS_CHARS_INTRO"]         = "Klick auf eine Karte öffnet das Schicksale-Feature."
L["ERAS_BIG_QUESTION"]        = "Die entscheidende Frage"
L["ERAS_BACK"]                = "← Zurück zu den Ären"
L["ERAS_OPEN_FATE"]           = "In Schicksalen öffnen"
L["ERAS_NO_DATA"]             = "Für diese Ära sind noch keine Aufzeichnungen verfügbar."
-- Eras Progress System
L["ERAS_RANK_SEEKER"]          = "Suchender"
L["ERAS_RANK_APPRENTICE"]      = "Lehrling"
L["ERAS_RANK_CHRONICLER"]      = "Chronist"
L["ERAS_RANK_ARCHIVIST"]       = "Archivar"
L["ERAS_RANK_LOREKEEPER"]      = "Hüter des Wissens"
L["ERAS_RANK_MASTER"]          = "Meister der Chroniken"
L["ERAS_LORE_STATUS"]          = "LORE-STATUS"
L["ERAS_REACHED_RANKS"]        = "ERREICHTE RÄNGE:"
L["ERAS_NEXT_RANKS"]           = "KOMMENDE ENTDECKUNGEN:"
L["ERAS_LOCKED_TIP"]           = "Begegne der Schlüsselfigur dieser Ära, um sie freizuschalten."
L["ERAS_DISC_BODY"]            = "Ich habe eine interessante Geschichte für dich. Möchtest du sie hören?"
L["ERAS_DISC_ACCEPT"]          = "Erzähl mir mehr"
L["ERAS_DISC_DECLINE"]         = "Vielleicht später"
L["ERAS_MODE_ENC_CONFIRM"]     = "Alle Ären werden sichtbar, zählen aber nicht zum Fortschritt.\n\nFortfahren?"
L["ERAS_LOCKED_TITLE"]          = "Noch nicht freigeschaltet"
L["ERAS_LOCKED_BODY"]           = "Diese Ära ist im Entdecker-Modus gesperrt.\nBegegne der Schlüsselfigur dieser Ära, um ihre Geschichte zu erfahren."
L["ERAS_LOCKED_MODEHINT"]       = "Tipp: Wechsle über den Mode-Button zum Enzyklopädie-Modus, um alle Ären direkt einsehen zu können."
L["ERAS_WIP_TITLE"]             = "In Entwicklung"
L["ERAS_WIP_BODY"]              = "Der Inhalt für diese Ära wird noch entwickelt.\nSchau bald wieder vorbei!"
L["ERAS_ORIGINAL_GAME"]         = "Original Game"

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
