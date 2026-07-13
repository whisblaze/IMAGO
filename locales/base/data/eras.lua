-- ============================================================
-- IMAGO — locales/base/data/eras.lua  (enUS fallback)
-- 4-Tab-Schema: summary, fastFacts, campaigns, patches, keyFigures
-- NPC-Links via {npc:slug} in Texten (werden lila eingefärbt).
-- ============================================================

-- ============================================================
-- MIDNIGHT  (vollständige Daten)
-- ============================================================
IMAGOdb.eras["midnight"].name       = "World of Warcraft: Midnight"
IMAGOdb.eras["midnight"].logoPath   = "Interface\\AddOns\\IMAGO\\Media\\Eras\\Logos\\midnight_logo.tga"
IMAGOdb.eras["midnight"].bgPath     = "Interface\\AddOns\\IMAGO\\Media\\Eras\\Backgrounds\\midnight_bg.tga"
IMAGOdb.eras["midnight"].region     = "Quel'Thalas"
IMAGOdb.eras["midnight"].antagonist = "The Void (N'Zoth's Remnants)"
IMAGOdb.eras["midnight"].conflict   = "The Siege of Quel'Thalas"
IMAGOdb.eras["midnight"].year       = 2026

-- TAB 1: OVERVIEW — Zusammenfassung + Fast Facts
IMAGOdb.eras["midnight"].summary =
    "The Void has returned. A catastrophic rift tears open above Silvermoon City — not a skirmish, not " ..
    "a probing incursion, but the full weight of an ancient enemy finally unleashed. The blood elves " ..
    "stand at the epicenter of a war that will decide whether Quel'Thalas endures or is consumed, and " ..
    "whether the Sunwell — the lifeblood of an entire people — becomes the Void's most powerful weapon."

IMAGOdb.eras["midnight"].fastFacts = {
    bigQuestion  = "Will the Sunwell endure as Quel'Thalas' lifeline — or become the Void's most devastating weapon against all of Azeroth?",
    cosmicForces = "Void vs. Arcane (the Sunwell) — with the Light's intervention at the final hour",
    casualties   = "Grand Magister Rommath — status unknown after the sealing ritual; the Sunwell is partially destabilized",
    worldScar    = "The Quel'Thalas Rift: a permanent Void fissure that scars the sky above Silvermoon, visible across the entire continent",
}

-- TAB 2: CAMPAIGNS & REGIONS — Startzonen mit Karten-Overlays
IMAGOdb.eras["midnight"].campaigns = {
    {
        heading         = "The Knife's Edge",
        zoneName        = "Eversong Woods",
        flavorTeaser    = "A forest of crimson canopy, its ancient ley-lines now scorched black by Void-fire descending from above.",
        mapButtonCoords = { point="TOPLEFT", relPoint="TOPLEFT", x=38,  y=-115, w=105, h=75 },
        npcLinks        = {"lorthemar_theron", "lady_liadrin"},
        text            = "{npc:lorthemar_theron} personally leads a strike force to sever the Void's foothold at the ancient ley-line " ..
                          "confluence near Fairbreeze Village, while Void-corrupted Amani warbands tear through the forest canopy from the north. " ..
                          "{npc:lady_liadrin} oversees the evacuation of civilian refugees through the Shepherd's Gate, her Blood Knights " ..
                          "holding the main road under relentless pressure. Every hour bought here is an hour Silvermoon's inner wards remain active.",
        loreBits        = "Die Amani-Trolle von Zul'Aman nutzten die Void-Invasion strategisch: Sie griffen gezielt die arkanen " ..
                          "Ley-Linien-Kreuzungen an, die Lor'themars Verteidigungsnetz speisen — in der Hoffnung, beide Seiten " ..
                          "zu schwächen. Einige Ranger-Generäle vermuten, dass die Amani bereits Monate vor der Invasion Kontakt " ..
                          "zu Void-Emissären gehabt haben könnten.\n\n" ..
                          "Die Shepherd's Gate existiert seit der Zweiten Invasion — ein Notfallkorridor, der von einem " ..
                          "namenlosen Architekten der Quel'dorei entworfen wurde, der ahnte, dass Silvermoon eines Tages wieder " ..
                          "evakuiert werden müsste. Sein Name ist heute in keinen Annalen erhalten.",
    },
    {
        heading         = "Fall of the Sunwell Gate",
        zoneName        = "Silvermoon City",
        flavorTeaser    = "The jewel of Quel'Thalas — its golden spires now flickering in the shadow of a Void tendril the size of a cathedral spire.",
        mapButtonCoords = { point="TOPLEFT", relPoint="TOPLEFT", x=155, y=-78,  w=88,  h=95  },
        npcLinks        = {"grand_magister_rommath", "aethas_sunreaver"},
        text            = "The inner sanctum falls into chaos as a Void tendril breaches the Sunwell Gate itself. " ..
                          "{npc:grand_magister_rommath} coordinates arcane countermeasures from the Royal Exchange, " ..
                          "sacrificing prepared spell matrices that took years to construct. " ..
                          "{npc:aethas_sunreaver} risks his fragile standing with the city's council by deploying a forbidden " ..
                          "entropy-reversal technique — an act that saves the Gate but leaves him gravely diminished.",
        loreBits        = "Die Entropie-Umkehr-Technik, die Aethas einsetzt, wurde ursprünglich von Kael'thas Sunstrider " ..
                          "während seiner Dalaran-Ausbildung entwickelt — und dann als 'zu gefährlich' unter Verschluss gestellt. " ..
                          "Dass Aethas überhaupt Zugang zu den Unterlagen hatte, wirft Fragen über seine Verbindungen zu " ..
                          "verbotenen Archivabschnitten des Königlichen Austauschs auf.\n\n" ..
                          "Rommath hatte die Zaubermatrizen, die er beim Tor opfert, über 30 Jahre lang gespeichert — " ..
                          "ein Lebenswerk arkaner Ingenieurskunst. Er spricht danach nie öffentlich darüber.",
    },
    {
        heading         = "Silver Covenant's Gambit",
        zoneName        = "Isle of Quel'Danas",
        flavorTeaser    = "A sacred isle now encircled by Void-spawned storm fronts — the last line before the Sunwell Plateau itself falls.",
        mapButtonCoords = { point="TOPLEFT", relPoint="TOPLEFT", x=210, y=-165, w=95,  h=70  },
        npcLinks        = {"vereesa_windrunner", "halduron_brightwing"},
        text            = "From the sea, the Silver Covenant fleet attempts a bold flanking assault on the Void's aerial anchor point " ..
                          "above the Isle of Quel'Danas. {npc:vereesa_windrunner} commands the flagship, threading the needle between " ..
                          "Void-spawned storm fronts. {npc:halduron_brightwing} and the Farstriders provide arrow cover from the " ..
                          "cliffs below. The gambit succeeds — the anchor shatters, destabilizing the Void formation over the city " ..
                          "long enough to turn the tide.",
        loreBits        = "Vereesa Windrunner wählte persönlich jeden Seemann der Silbernen Bruderschaft für diese Mission aus — " ..
                          "ausschließlich solche, die bereits Erfahrung mit Void-Exposition hatten und psychologisch als stabil " ..
                          "eingestuft wurden. Über 40% der ursprünglichen Freiwilligen wurden aussortiert.\n\n" ..
                          "Der Void-Anker über Quel'Danas basierte auf einer ähnlichen Konstruktion wie die Auchindoun-Säulen " ..
                          "aus dem Outland-Krieg. Dass die Void-Lords dieselbe Architektur verwenden, deutet auf einen " ..
                          "übergeordneten Bauplan hin, den Forscher der Kirin Tor noch immer nicht vollständig entschlüsselt haben.",
    },
}

-- TAB 3: PATCHES & NEW HORIZONS — Chronologische Patch-Timeline
IMAGOdb.eras["midnight"].patches = {
    {
        version  = "11.0",
        title    = "The Sundering",
        logoPath = "Interface\\AddOns\\IMAGO\\Media\\Eras\\Patches\\midnight_11_0.tga",
        logo_w   = 400, logo_h = 300,
        newZones = {"Eversong Woods", "Silvermoon City", "Isle of Quel'Danas", "The Ghostlands"},
        loreBits = "[Platzhalter] Hintergrundnotizen zu Patch 11.0 werden hier erscheinen.",
        text     = "The Void rift opens without warning, forcing an immediate three-front defense of Quel'Thalas. " ..
                   "Heroes are called to Eversong Woods first, where the Void's ground forces pour through " ..
                   "corrupted forest paths. The launch raid, Gates of the Sunwell, sees the first direct " ..
                   "confrontation with the Void's herald entity.",
    },
    {
        version  = "11.1",
        title    = "Echoes of the Sunwell",
        logoPath = "Interface\\AddOns\\IMAGO\\Media\\Eras\\Patches\\midnight_11_1.tga",
        logo_w   = 400, logo_h = 300,
        newZones = {"The Sunwell Plateau (Revamped)", "Void Citadel Approach"},
        loreBits = "[Platzhalter] Hintergrundnotizen zu Patch 11.1 werden hier erscheinen.",
        text     = "The war escalates into the Sunwell Plateau itself. New world quests reveal the Void is " ..
                   "actively siphoning Sunwell energy to create a secondary rift network. The patch culminates " ..
                   "in the discovery that a traitor within Silvermoon has been feeding the Void coordinates " ..
                   "for its anchor points.",
    },
    {
        version  = "11.2",
        title    = "The Knife's Edge",
        logoPath = "Interface\\AddOns\\IMAGO\\Media\\Eras\\Patches\\midnight_11_2.tga",
        logo_w   = 400, logo_h = 300,
        newZones = {"The Void Wound (new zone above Silvermoon)", "Sunwell Nexus"},
        loreBits = "[Platzhalter] Hintergrundnotizen zu Patch 11.2 werden hier erscheinen.",
        text     = "The final patch sees the combined forces of Quel'Thalas, the Ebon Blade, and the " ..
                   "Arcantina converge on the Sunwell in a climactic stand. The Void Wound — a floating " ..
                   "shard of the rift itself — becomes the final raid zone, where the primary Void herald " ..
                   "is confronted within a landscape of shattered reality.",
    },
}

-- TAB 4: KEY FIGURES — Hybrid (slug + era-spezifischer Blurb)
IMAGOdb.eras["midnight"].keyFigures = {
    { slug="lorthemar_theron",       arcLabel="Commander at the Brink",   blurb="Commands the full military defense of Quel'Thalas. Faces an impossible choice between holding the outer lines and protecting the Sunwell." },
    { slug="lady_liadrin",           arcLabel="Shield of the Sunwell",    blurb="Leads the Blood Knights in a desperate counter-push to retake the Sunwell Plateau. Her connection to the Light proves crucial in the final sealing." },
    { slug="grand_magister_rommath", arcLabel="The Last Safeguard",       blurb="Activates ancient wards across Silvermoon that hadn't been used in decades. Disappears after the final ritual — his fate remains unconfirmed." },
    { slug="vereesa_windrunner",     arcLabel="Strike from the Sea",      blurb="Commands the Silver Covenant fleet's flanking assault from the sea. Breaks the Void's aerial siege at great risk to her own forces." },
    { slug="halduron_brightwing",    arcLabel="The Unseen Wall",          blurb="Coordinates the Farstrider defense across the Ghostlands, preventing a second front from opening behind Silvermoon's walls." },
}

-- ============================================================
-- THE WAR WITHIN  (vollständige Daten)
-- ============================================================
IMAGOdb.eras["the_war_within"].name       = "World of Warcraft: The War Within"
IMAGOdb.eras["the_war_within"].logoPath   = "Interface\\AddOns\\IMAGO\\Media\\Eras\\Logos\\the_war_within_logo.tga"
IMAGOdb.eras["the_war_within"].bgPath     = "Interface\\AddOns\\IMAGO\\Media\\Eras\\Backgrounds\\the_war_within_bg.tga"
IMAGOdb.eras["the_war_within"].region     = "Khaz Algar"
IMAGOdb.eras["the_war_within"].antagonist = "Xal'atath, Harbinger of the Void"
IMAGOdb.eras["the_war_within"].conflict   = "The Radiant Song's Warnings"
IMAGOdb.eras["the_war_within"].year       = 2024

-- TAB 1: OVERVIEW
IMAGOdb.eras["the_war_within"].summary =
    "The Radiant Song has been heard all across Azeroth, calling her champions to the remote shores of " ..
    "Khaz Algar. There, beneath the ancient earthen city of Dornogal, Xal'atath, Harbinger of the Void, " ..
    "gathers a formidable army in the depths below. The mysterious Dark Heart rests in her possession, " ..
    "and the Champions of Azeroth, alongside their allies, follow her to the deep places of the earth " ..
    "to seize the artifact before her plans come to fruition."

IMAGOdb.eras["the_war_within"].fastFacts = {
    bigQuestion  = "Will the Champions seize the Dark Heart before Xal'atath's plan comes to fruition — or will she always remain one step ahead?",
    cosmicForces = "Void vs. the united forces of Azeroth — earthen, kobolds, and Arathi standing alongside the Champions",
    casualties   = "Archmage Khadgar — consumed by the Dark Heart when Dalaran fell; Locus-Walker — killed by Xal'atath's betrayal in K'aresh",
    worldScar    = "The fall of Dalaran and Xal'atath's vanishing with the fully powered Dark Heart — a threat left unresolved above Silvermoon's skies",
}

-- TAB 2: CAMPAIGNS & REGIONS
IMAGOdb.eras["the_war_within"].campaigns = {
    {
        heading      = "Farewell, City of Magic",
        zoneName     = "Visions of Azeroth",
        flavorTeaser = "Farewell, City of Magic",
        npcLinks     = {"alleria_windrunner", "anduin_wrynn", "magni_bronzebeard", "khadgar"},
        text         = "Veteran heroes of Azeroth, such as {npc:alleria_windrunner}, {npc:anduin_wrynn} and {npc:magni_bronzebeard} " ..
                       "assembled in Dalaran following the radiant visions that they have all been " ..
                       "witnessing. After following the visions to Khaz Algar, the heroes on the flying city were " ..
                       "quickly besieged by Xal'atath and her nerubian allies. Archmage {npc:khadgar} tried to fight her " ..
                       "off but was consumed by the Dark Heart and the city was obliterated.",
        loreBits     = "[Placeholder] Lore notes for this campaign will appear here.",
    },
    {
        heading      = "New Earthen Allies",
        zoneName     = "The Isle of Dorn",
        flavorTeaser = "New Earthen Allies",
        npcLinks     = {"moira_thaurissan"},
        text         = "The survivors washed up on the shores of the Isle of Dorn and made contact with the earthen " ..
                       "of Dornogal. Together, they fended off Xal'atath's invading forces. It became apparent that " ..
                       "the earthen were divided between the still-loyal followers of the Titans and the unbound, " ..
                       "who didn't wish to follow their assigned edicts anymore. {npc:moira_thaurissan} was able to unite " ..
                       "the two factions again, earning their trust. Finally, they restored the collapsed Coreway — " ..
                       "a passage leading deep underground.",
        loreBits     = "[Placeholder] Lore notes for this campaign will appear here.",
    },
    {
        heading      = "The Machine Speaker and the Void",
        zoneName     = "The Ringing Deeps",
        flavorTeaser = "The Machine Speaker and the Void",
        npcLinks     = {"magni_bronzebeard", "dagran_thaurissan_ii"},
        text         = "Following the nerubians down to the workers' city of Gundargaz, the Champions witnessed the " ..
                       "great underground machines, most of which were now shut down due to neglect and an absent " ..
                       "workforce. They helped the kobolds of the Ringing Deeps rebel against the Candle King. " ..
                       "{npc:magni_bronzebeard} and {npc:dagran_thaurissan_ii} uncovered that the High Speaker had been working with Xal'atath all along. " ..
                       "They managed to stop him from corrupting the new earthen in the Awakening Machine and {npc:magni_bronzebeard} " ..
                       "was turned back into flesh by Azeroth. The new earthen joined their kin.",
        loreBits     = "[Placeholder] Lore notes for this campaign will appear here.",
    },
    {
        heading      = "A Star of Light and Shadow",
        zoneName     = "Hallowfall",
        flavorTeaser = "A Star of Light and Shadow",
        npcLinks     = {"anduin_wrynn", "faerin_lothar", "alleria_windrunner"},
        text         = "{npc:anduin_wrynn} met {npc:faerin_lothar} and made contact with the Hallowfall Arathi. " ..
                       "Besieged from all sides by nerubians and kobyss, the Arathi never lost hope in the light " ..
                       "of their star, Beledar, the crystal illuminating the cave, even when it switched to darkness " ..
                       "periodically. Anduin faced a personal crisis when he couldn't reconnect with the Light but " ..
                       "helped defeat Xal'atath's forces nonetheless. {npc:alleria_windrunner} joined them, having " ..
                       "picked up the Harbinger's trail once more. All three followed it further underground.",
        loreBits     = "[Placeholder] Lore notes for this campaign will appear here.",
    },
    {
        heading      = "Spiders, Spiders Everywhere",
        zoneName     = "Azj-Kahet",
        flavorTeaser = "Spiders, Spiders Everywhere",
        npcLinks     = {"anduin_wrynn", "alleria_windrunner", "faerin_lothar", "orweyna"},
        text         = "{npc:anduin_wrynn}, {npc:alleria_windrunner} and {npc:faerin_lothar} met {npc:orweyna} and " ..
                       "the haranir when they crash-landed in the spider kingdom of Azj-Kahet. Ruled by Queen " ..
                       "Ansurek under Xal'atath's influence, the kingdom was teeming with a dangerous substance " ..
                       "called the Black Blood. The Champions helped the renegade royal Weaver in her rebellion " ..
                       "against the queen but had to flee the capital when Alleria's thirst for revenge against " ..
                       "Xal'atath almost got them killed.",
        loreBits     = "[Placeholder] Lore notes for this campaign will appear here.",
    },
    {
        heading      = "A Dark Heart Left Broken",
        zoneName     = "The War Within",
        flavorTeaser = "A Dark Heart Left Broken",
        npcLinks     = {"alleria_windrunner", "anduin_wrynn", "khadgar"},
        text         = "The reinforcements of the Horde and the Alliance arrived in Dornogal and quickly went on " ..
                       "the offensive against the nerubians. With the earthen, kobolds and Arathi at their side, " ..
                       "they made short work of the nerubians in Hallowfall. {npc:alleria_windrunner} confronted " ..
                       "Xal'atath and managed to damage the Dark Heart, causing an enraged Xal'atath to retreat " ..
                       "and freeing {npc:khadgar}. {npc:anduin_wrynn} found his faith again and healed the fallen " ..
                       "archmage. The rebellion against Queen Ansurek was a success and the Weaver and Vizier " ..
                       "were left in charge of Azj-Kahet.",
        loreBits     = "[Placeholder] Lore notes for this campaign will appear here.",
    },
}

-- TAB 3: PATCHES
IMAGOdb.eras["the_war_within"].patches = {
    {
        version  = "11.0.7",
        title    = "Siren Isle",
        logoPath = "Interface\\AddOns\\IMAGO\\Media\\Eras\\Patches\\tww_11_0_7.tga",
        logo_w   = 400, logo_h = 300,
        newZones = {"The Siren Isle"},
        loreBits = "More Radiant Visions",
        npcLinks = {"orweyna"},
        text     = "Following the discovery of a new crystal, similar to Beledar, a team of Arathi, earthen and " ..
                   "goblins sailed to the Siren Isle. They found the inhabitants long dead and the island cursed " ..
                   "by an unnatural storm. On the Isle of Dorn, the surviving mages of the Kirin Tor honored the " ..
                   "fallen of Dalaran. Meanwhile, {npc:orweyna} received new visions from her goddess, warning " ..
                   "her of an impending threat from the Undermine.",
    },
    {
        version  = "11.1",
        title    = "Undermine(d)",
        logoPath = "Interface\\AddOns\\IMAGO\\Media\\Eras\\Patches\\tww_11_1.tga",
        logo_w   = 400, logo_h = 300,
        newZones = {"Undermine"},
        loreBits = "Revolution down in Goblin Town",
        npcLinks = {"orweyna"},
        text     = "{npc:orweyna} followed Monte Gazlowe and Renzik 'the Shiv' into Undermine after her visions " ..
                   "led them towards a goblin operation of Black Blood weaponry. They found out that Gallywix had " ..
                   "made a deal with Xal'atath, using the Black Blood in exchange for repairing the Dark Heart for " ..
                   "her. Gallywix succeeded in the repairs but gave the artifact to the Shadowguard ethereals, " ..
                   "believing they were working with Xal'atath. Enraged, Xal'atath abandoned the goblin leader " ..
                   "and Gallywix died in the ensuing rebellion of Undermine's frustrated and oppressed citizens, " ..
                   "following Renzik's death.",
    },
    {
        version  = "11.1.7",
        title    = "Legacy of Arathor",
        logoPath = "Interface\\AddOns\\IMAGO\\Media\\Eras\\Patches\\tww_11_1_7.tga",
        logo_w   = 400, logo_h = 300,
        newZones = {"Arathi Highlands"},
        loreBits = "Rise of the Red Dawn",
        npcLinks = {"faerin_lothar"},
        text     = "Excited to learn of her heritage, {npc:faerin_lothar} accompanied Danath Trollbane to his " ..
                   "kingdom of Stromgarde. They found themselves in the middle of a civil war, as Danath's " ..
                   "subjects were not happy living peacefully next to an orc stronghold and being subjected to " ..
                   "food shortages due to the war effort. Danath, {npc:faerin_lothar} and Eitrigg managed to " ..
                   "quell the rebellion and exiled the main instigator, Marran Trollbane — Danath's niece.",
    },
    {
        version  = "11.2",
        title    = "Ghosts of K'aresh",
        logoPath = "Interface\\AddOns\\IMAGO\\Media\\Eras\\Patches\\tww_11_2.tga",
        logo_w   = 400, logo_h = 300,
        newZones = {"Tazavesh", "K'aresh"},
        loreBits = "The All-Devouring Returns",
        npcLinks = {"alleria_windrunner"},
        text     = "Locus-Walker brought {npc:alleria_windrunner} to the broker city of Tazavesh with grave news: " ..
                   "The Shadowguard ethereals under Nexus-King Salhadaar planned to use the Dark Heart to bring " ..
                   "back the void lord Dimensius. With no other options, they allied with Xal'atath against their " ..
                   "common enemy. Helped by the ren'dorei, they managed to trap Dimensius in the Dark Heart, " ..
                   "preventing his return. Under the guise of staying behind, Xal'atath betrayed them, killed " ..
                   "Locus-Walker and vanished with the fully powered-up Dark Heart in her possession.",
    },
    {
        version  = "11.2.7",
        title    = "The Warning",
        logoPath = "Interface\\AddOns\\IMAGO\\Media\\Eras\\Patches\\tww_11_2_7.tga",
        logo_w   = 400, logo_h = 300,
        newZones = {"Quel'Thalas"},
        loreBits = "[Placeholder] Lore notes for this patch will appear here.",
        npcLinks = {"vereesa_windrunner", "alleria_windrunner", "sylvanas_windrunner"},
        text     = "{npc:vereesa_windrunner} began to have horrible visions of her homeland of Quel'Thalas destroyed " ..
                   "by the Void. Her nephew Arator believed her, and tried to rally his mother {npc:alleria_windrunner} " ..
                   "and his aunt {npc:sylvanas_windrunner} to join them in the defense of Silvermoon. Even though he had ventured " ..
                   "to K'aresh and even into the Maw to do so, he was denied by both. {npc:alleria_windrunner}, " ..
                   "meanwhile, followed Xal'atath through the Void and witnessed her drain the Dark Heart of its " ..
                   "power, summoning a massive spire that tore open the skies over Silvermoon.",
    },
}

-- TAB 4: KEY FIGURES
IMAGOdb.eras["the_war_within"].keyFigures = {
    { slug="alleria_windrunner", arcLabel="The Obsessed Hunter",       blurb="Alleria hunted Xal'atath across Khaz Algar and far beyond. Her thirst for revenge bordered on dangerous obsession to the point of endangering herself and her allies." },
    { slug="xalatath",           arcLabel="The Harbinger",             blurb="The Harbinger systematically empowered the Dark Heart with various energy sources while delaying the Champions repeatedly. She notably never attacked Alleria directly and managed to turn her losses into ultimate victory." },
    { slug="anduin_wrynn",       arcLabel="Broken, Then Reforged",     blurb="Started out a broken man after the events of the war in the Shadowlands, but finally regained his faith in the Light and in himself." },
    { slug="faerin_lothar",      arcLabel="Hope Against the Odds",     blurb="The young paladin hero inspired her people to not lose hope against the overwhelming odds. She herself was left disillusioned though after witnessing the civil unrest in Stromgarde." },
    { slug="orweyna",            arcLabel="Reluctant Servant of Fate", blurb="The reclusive scout was hesitant to aid the Champions, but realized that she needed outside help to fulfill the will of her goddess." },
}

-- ============================================================
-- DRAGONFLIGHT — stub
-- ============================================================
IMAGOdb.eras["dragonflight"].name       = "Dragonflight"
IMAGOdb.eras["dragonflight"].region     = "Dragon Isles"
IMAGOdb.eras["dragonflight"].antagonist = "Fyrakk / The Incarnates"
IMAGOdb.eras["dragonflight"].conflict   = "The Reawakening of the Dragon Isles"

-- ============================================================
-- SHADOWLANDS — stub
-- ============================================================
IMAGOdb.eras["shadowlands"].name       = "Shadowlands"
IMAGOdb.eras["shadowlands"].region     = "The Shadowlands"
IMAGOdb.eras["shadowlands"].antagonist = "The Jailer (Zovaal)"
IMAGOdb.eras["shadowlands"].conflict   = "Death Unbound"

-- ============================================================
-- BATTLE FOR AZEROTH — stub
-- ============================================================
IMAGOdb.eras["battle_for_azeroth"].name       = "Battle for Azeroth"
IMAGOdb.eras["battle_for_azeroth"].region     = "Kul Tiras & Zandalar"
IMAGOdb.eras["battle_for_azeroth"].antagonist = "N'Zoth the Corruptor"
IMAGOdb.eras["battle_for_azeroth"].conflict   = "Alliance vs. Horde — and the Old Gods' Return"

-- ============================================================
-- LEGION — stub
-- ============================================================
IMAGOdb.eras["legion"].name       = "Legion"
IMAGOdb.eras["legion"].region     = "The Broken Isles"
IMAGOdb.eras["legion"].antagonist = "Sargeras / Kil'jaeden"
IMAGOdb.eras["legion"].conflict   = "The Third Invasion of the Burning Legion"

-- ============================================================
-- WARLORDS OF DRAENOR — stub
-- ============================================================
IMAGOdb.eras["warlords_of_draenor"].name       = "Warlords of Draenor"
IMAGOdb.eras["warlords_of_draenor"].region     = "Draenor (Alternate)"
IMAGOdb.eras["warlords_of_draenor"].antagonist = "Gul'dan / The Iron Horde"
IMAGOdb.eras["warlords_of_draenor"].conflict   = "The Iron Horde's Crusade"

-- ============================================================
-- MISTS OF PANDARIA — stub
-- ============================================================
IMAGOdb.eras["mists_of_pandaria"].name       = "Mists of Pandaria"
IMAGOdb.eras["mists_of_pandaria"].region     = "Pandaria"
IMAGOdb.eras["mists_of_pandaria"].antagonist = "Garrosh Hellscream / The Sha"
IMAGOdb.eras["mists_of_pandaria"].conflict   = "War on Pandaria's Soul"

-- ============================================================
-- CATACLYSM — stub
-- ============================================================
IMAGOdb.eras["cataclysm"].name       = "Cataclysm"
IMAGOdb.eras["cataclysm"].region     = "Azeroth (Shattered)"
IMAGOdb.eras["cataclysm"].antagonist = "Deathwing the Destroyer"
IMAGOdb.eras["cataclysm"].conflict   = "The Shattering of the World"

-- ============================================================
-- WRATH OF THE LICH KING — stub
-- ============================================================
IMAGOdb.eras["wrath_of_the_lich_king"].name       = "Wrath of the Lich King"
IMAGOdb.eras["wrath_of_the_lich_king"].region     = "Northrend"
IMAGOdb.eras["wrath_of_the_lich_king"].antagonist = "Arthas Menethil, the Lich King"
IMAGOdb.eras["wrath_of_the_lich_king"].conflict   = "War Against the Scourge"

-- ============================================================
-- THE BURNING CRUSADE — stub
-- ============================================================
IMAGOdb.eras["the_burning_crusade"].name       = "The Burning Crusade"
IMAGOdb.eras["the_burning_crusade"].region     = "Outland"
IMAGOdb.eras["the_burning_crusade"].antagonist = "Illidan Stormrage / Kil'jaeden"
IMAGOdb.eras["the_burning_crusade"].conflict   = "The Dark Portal's Reopening"

-- ============================================================
-- CLASSIC / VANILLA — stub
-- ============================================================
IMAGOdb.eras["classic"].name       = "Classic Vanilla"
IMAGOdb.eras["classic"].region     = "Azeroth"
IMAGOdb.eras["classic"].antagonist = "Ragnaros / C'Thun / Kel'Thuzad"
IMAGOdb.eras["classic"].conflict   = "The Rise of the Heroes of Azeroth"
