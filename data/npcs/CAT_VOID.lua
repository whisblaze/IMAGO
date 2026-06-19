-- ============================================================
-- IMAGO — data/npcs/CAT_VOID.lua  (static data)
-- ============================================================

IMAGOdb = IMAGOdb or {}
IMAGOdb.npcs = IMAGOdb.npcs or {}
IMAGOdb.npcs.CAT_VOID = IMAGOdb.npcs.CAT_VOID or {}

IMAGOdb.npcs.CAT_VOID["nexuskoenig_salhadaar"] = {
    displayID = 240432,
    ids = {240432, 235475},
    zones = {},
    category = "CAT_VOID",
    encounter_journal_id = 2736,
    instance_id = 1307,
}

IMAGOdb.npcs.CAT_VOID["l_ura"] = {
    displayID = 257959,
    ids = {257959, 249617, 258268, 250368, 258296, 261963, 257957, 260859, 253979, 258304, 240391, 248195},
    zones = {},
    category = "CAT_VOID",
    encounter_journal_id = 2740,
    instance_id = 1308,
}

-- Command to get Encounter info:

-- local instanceID = EJ_GetEncounterInfo(encounter_journal_id)[6]
-- local journal_link = EJ_GetEncounterInfo(encounter_journal_id)[5]
-- local instance_type = string.match(journal_link, "journal:%d+:%d+:(%d+)")
-- open journal = EncounterJournal_OpenJournal()


IMAGOdb.npcs.CAT_VOID["mor_duun"] = {
    displayID = 240229,
    ids = {240229, 241301, 259068, 236514, 236094, 259736, 246139},
    zones = {},
    category = "CAT_VOID",
}


-- Command to get Encounter ids from an open Journal
-- /run local i=1 while EJ_GetEncounterInfoByIndex(i) do local name, _, id = EJ_GetEncounterInfoByIndex(i) print(id, name) i=i+1 end
