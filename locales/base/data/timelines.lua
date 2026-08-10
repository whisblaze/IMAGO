-- ============================================================
-- IMAGO — locales/base/data/timelines.lua
-- Shared timelines for NPCs that appear in multiple expansions.
-- Each entry in IMAGOdb.timelines can be referenced by any NPC
-- slug that shares the same canonical character history.
--
-- Locale overrides: redefine IMAGOdb.timelines.X with translated
-- text in the locale's npcs.lua, then re-assign .timeline to both
-- _midnight and _tww (and any future expansion) slugs.
-- ============================================================

IMAGOdb = IMAGOdb or {}
IMAGOdb.timelines = IMAGOdb.timelines or {}

-- ============================================================
-- ANDUIN WRYNN
-- ============================================================
IMAGOdb.timelines.ANDUIN_WRYNN = {
    {era = "Pre-WC3", text = "Lost his mother when he was just a baby to the Stonemasons' riot."},
    {era = "Classic",  text = "Made King of Stormwind briefly during his father's disappearance. Captured by Onyxia but was rescued by his father, King Varian, after his return."},
    {era = "WotLK",    text = "Saved his father's life during the Scourge invasion of Stormwind."},
    {era = "Pre-Cata", text = "Witnessed Magni's transformation into crystal and later resolved the Ironforge succesion crisis, preventing Moira's death at King Varian's hands. After yet another fight with his father later on, Anduin went to live with Velen, studying to become a priest of the Light."},
    {era = "Cata",     text = "Uncovered a plot of the Twilight's Hammer after his return to Stormwind."},
    {era = "MoP",      text = "Explored the newly-discovered continent of Pandaria, and got inspired by Pandaren philosophy. Personally tried to stop Garrosh Hellscream's warmongering but failed and got injured gravely in the process. Later met and befriended the dragon Wrathion."},
    {era = "Pre-WoD",  text = "Attended Garrosh's trial and prevented the poisoning of the former Warchief, risking his own life while doing so. Unsuccesfully tried to stop Wrathion from freeing Garrosh."},
    {era = "Legion",   text = "Crowned High King of the Alliance after Varian's death."},
    {era = "Pre-BfA",  text = "Welcomed the Lightforged Draenei and the Dark Iron Dwarves into the Alliance. Negotiated an event called \"the Gathering\" with Sylvanas Windrunner, to reunite willing Forsaken with their living relatives. To Anduin's dismay, the exchange ended in a massacre."},
    {era = "BfA",      text = "Led the Alliance during the Fourth War against the Horde, personally leading the army in the Battle for Lordaeron. Later formed an alliance with Varok Saurfang and supported his rebellion against Sylvanas, ultimately ending the war and declaring an armistice."},
    {era = "SL",       text = "Got captured by the Jailer's forces and was dominated to serve as a weapon for Death. Ultimately, with the help of the spirits of his father and Varok Saurfang, Anduin freed himself but was left deeply traumatized. Appointed Turalyon as Stormwind's regent and vanished."},
    {era = "TWW",      text = "Got convinced by Thrall to join the fight against Xal'atath. Fought in Hallowfall and regained his faith in the Light thanks to Faerin Lothar. Saved Khadgar's life."},
    {era = "Midnight", text = "Prevented Umbric's execution and helped to defend the Sunwell from the Void."},
}

-- ============================================================
-- FAERIN LOTHAR
-- ============================================================
IMAGOdb.timelines.FAERIN_LOTHAR = {
    {era = "Pre-Legion", text = "Snuck on board one of the airships of the Hallowfall Expedition and was physically disabled upon arrival. Trained as a Lamplighter under General Steelstrike."},
    {era = "TWW",        text = "Defended Hallowfall from the Nerubians and fought on the frontlines to repel Xal'atath. Befriended Anduin Wrynn and helped him regain his faith in the Light. Later helped prevent Maran Trollbane's rebellion in Stromgarde."},
    {era = "Midnight",   text = "Was summoned by the Sunwell and helped to defend it from the Void."},
}

-- ============================================================
-- ALLERIA WINDRUNNER
-- ============================================================
IMAGOdb.timelines.ALLERIA_WINDRUNNER = {
    {
        era = "Pre-WC2",
        text = [[Refused the title of future Ranger-General of Silvermoon and left her homeland to see the world beyond. She made contact and allies within the Alliance of Lordaeron. Her parents were murdered by the orcish Horde during her absence.]],
    },
    {
        era = "WC2",
        text = [[With the armies of Lordaeron at her side, she successfully defended Quel'Thalas from the Horde. In the fighting, her brother Lirath died and Alleria blamed herself for it. Stayed with the Alliance's forces and helped to ultimately win the war. Met Turalyon, had a son, and ventured into Outland, ultimately becoming stranded there.]],
    },
    {
        era = "Pre-WC3",
        text = [[Traveled through the Twisting Nether with Turalyon and was conscripted into the Army of the Light to fight the Burning Legion. What would take a few decades on Azeroth, to them were a thousand years of war. Alleria met Locus Walker and learned how to make use of void magic. She was briefly locked up by Xe'ra and the Army of the Light because of it.]],
    },
    {
        era = "Legion",
        text = [[Learned more about the Void and how to resist it's whispers. Was infused with the naaru L'ura. Fought in the final battle against the Legion in their stronghold of Antorus and succeeded. With the crusade finally over, her and Turalyon were reunited with their son, Arator. Found and recruited the exiled ren'dorei into the Alliance.]],
    },
    {
        era = "Pre-BfA",
        text = [[Returned to Silvermoon but was promptly exiled when her mere dark presence almost corrupted the Sunwell. Met with her sisters Vereesa and Sylvanas but the meeting ended in a fight.]],
    },
    {
        era = "BfA",
        text = [[Fought in the Siege of Lordaeron against Sylvanas and later fought for the Alliance in the Fourth War.]],
    },
    {
        era = "Pre-SL",
        text = [[Led the hunt for Sylvanas Windrunner. She resorted to torture to get information out of Horde civilians.]],
    },
    {
        era = "SL",
        text = [[Attended Sylvanas' trial in Oribos.]],
    },
    {
        era = "DF",
        text = [[At Khadgar's request she began to hunt "the Harbinger", who turned out to be Xal'atath. Defended Telogrus Rift alongside Locus Walker and Magister Umbric from Xal'atath's Shadowguard.]],
    },
    {
        era = "TWW",
        text = [[Survived the destruction of Dalaran and recklessly hunted Xal'atath through all of Khaz Algar and below. Managed to damage the Dark Heart. Very reluctantly worked together with Xal'atath and Locus Walker to defeat Dimensius the All-Devouring.]],
    },
    {
        era = "Pre-MN",
        text = [[Thwarted a resurgence of the Burning Legion together with Turalyon and Arator, seemingly getting closer as a family.  Accepted a marriage proposal from Turalyon but struggled to find herself at ease. With a heavy heart she left Turalyon at the altar and did not attend her son's promotion ceremony. Later refused to journey to Silvermoon with Arator and instead followed Xal'atath into the Voidstorm.]],
    },
    {
        era = "Midnight",
        text = [[Led the fight against the Void in the Voidstorm. Faced Xal'atath in her Voidspire and was overcome by the madness of the whispers in her mind, turning on her allies. Xal'atath then cut L'ura out of Alleria and the barely-conscious elf was lost in the Darkwell alongside Turalyon.]],
    },
}

-- ============================================================
-- XAL'ATATH
-- ============================================================
IMAGOdb.timelines.XAL_ATATH = {
    {
        era = "Ancient",
        text = [[Claims to have been mortal before her world was destroyed and she was made a being of the Void. Heralded Dimensius' coming before he devoured world after world, including K'aresh. Confronted the Old Gods on Azeroth during the reign of the Black Empire, but lost and was imprisoned in the Blade of the Black Empire. 
        
        Whoever wielded her fell to madness.]],
    },
    {
        era = "Pre-WC1",
        text = [[Was delivered to Queen Modgud during the War of the Three Hammers. The queen became smitten with the blade and used Xal'atath to perform a ritual at Grim Batol to defeat the Wildhammer Clan. Xal'atath abandoned Modgud to die, and the queen's sorcery cursed Grim Batol.]],
    },
    {
        era = "WC2",
        text = [[Was claimed by the human bishop Natalie Seline and promptly corrupted the once pious woman. Taught Seline how to wield void magic and incited her followers to murder her for power.]],
    },
    {
        era = "Pre-Cata",
        text = [[Archbishop Benedictus came into possession of the blade sometime afterward but dared not wield her.]],
    },
    {
        era = "Legion",
        text = [[Was used by Benedictus' successor, Twilight Deacon Farthing, in order to resurrect Zakajz the Corruptor. He was stopped by the High Priest who then wielded Xal'atath against the Burning Legion. She witnessed Alleria Windrunner's transformation into a void elf and was intrigued. The High Priest later drained her power to heal the world from the wound inflicted by Sargeras' sword.]],
    },
    {
        era = "BfA",
        text = [[Was restored to power through living sacrifices by the High Priest and was able to gain the physical body of a dead high elf. Convinced the priest to go to the Crucible of Storms where she betrayed them and struck a bargain with N'Zoth in order to regain her freedom.]],
    },
    {
        era = "DF",
        text = [[Allied with Iridikron and obtained the Dark Heart from him. Attacked Telogrus Rift and drew the ire of Alleria Windrunner. Delighted in toying with Alleria's emotions by sending her twisted visions of her past.]],
    },
    {
        era = "Pre-TWW",
        text = [[Allied with the nerubians of Azj-Kahet by manipulating Ansurek into murdering her own mother, the queen.]],
    },
    {
        era = "TWW",
        text = [[Destroyed Dalaran and crippled Khadgar for life. Began her mission to empower the Dark Heart with various cosmic energies. Alleria pursued her relentlessly and managed to damage the Dark Heart. Xal'atath allied with Gallywix and left him for dead after he gave the Dark Heart to the Shadowguard ethereals. Allied with Alleria to stop Dimensius' return and took his power for herself.]],
    },
    {
        era = "Pre-MN",
        text = [[With the powers of a Void Lord, she united the ever-warring forces of the Void under her command, including Nexus-King Salhadaar and the domanaar. Drained the Dark Heart to create the Voidspire and bring the Voidstorm to the skies above Silvermoon.]],
    },
    {
        era = "Midnight",
        text = [[Overwhelmed the defenders of Quel'Thalas but was halted by the sudden eruption of the Sunwell. Defeated Alleria at the Voidspire and severed the naaru L'ura from her to finally corrupt the Sunwell. Witnessed L'ura's defeat but vanished into the Darkwell.]],
    },
}

-- ============================================================
-- ORWEYNA
-- ============================================================
IMAGOdb.timelines.ORWEYNA = {
    {era = "Pre-BfA", text = "Noticed the threat of the Black blood in Azj-Kahet and ventured outside of Harandar for the first time to combat the spread."},
    {era = "TWW",     text = "Rescued Alleria's and Faerin's expedition in Azj-Kahet from the Nerubians. Kept investigating the Black Blood, following it to Undermine and consequently aided Gazlowe in his rebellion against Gallywix."},
    {era = "Midnight", text = "Helped to contain the Lightbloom in both Harandar and Quel'Thalas. Negotiated a tentative Alliance between her people and the elves of Quel'Thalas, leading the Haranir to explore the outside world for the first time."},
}

IMAGOdb.timelines.LORTHEMAR_THERON = {
    {era = "WC2", text = "Successfully defended Silvermoon under Sylvanas Windrunner's command and was promoted to ranger lord."},
    {era = "WC3", text = "After surviving Quel'thalas' destruction, Prince Kael'Thas promoted him to regent lord. He successfully reclaimed Silvermoon from the Scourge"},
    {era = "TBC", text = "He led the blood elves to join the Horde, made the decision to exile the high elves, and deposed of Kael'thas after his treachery. After the civil war, Lor'themar remained as regent lord."},
    {era = "WotLK", text = "Reluctantly agreed to send elven troops to Northrend to aid the Horde in the battle against the Lich King and helped recover the ancient weapon Quel'delar."},
    {era = "Pre-MoP", text = "Refused to personally take part in the attack on Theramore, drawing the ire of Garrosh Hellscream."},
    {era = "MoP", text = "Negotiated with King Varian Wrynn to rejoin the Alliance after heavily disagreeing with Garrosh's leadership. After the purge of Dalaran, he remained in the Horde and played a key part in the rebellion against Garrosh Hellscream."},
    {era = "BfA", text = "Successfully invited the nightborne of Suramar to join the Horde. He later personally led the Horde forces in the campaign against Queen Aszhara and joined the rebellion against Sylvanas Windrunner. After the Fourth War he joined the newly-formed Horde council as one of its leaders."},
    {era = "Pre-DF", text = "Married Thalyssra and invited both Horde and Alliance leaders to the wedding in a show of support for peace between the factions."},
    {era = "DF", text = "Joined in the defense of Amirdrassil."},
    {era = "Pre-TWW", text = " Traversed the Islands and Isles of Azeroth with Thalyssra during a belated honeymoon. Heard the Radiant Song while being shown around the Dragon Isles by Wrathion."},
    {era = "Pre-MN", text = "Helped Thalyssra to keep Suramar safe from a resurgence of the Burning Legion. Encouraged and helped host Turalyon's and Alleria's wedding which ended up being broken off."},
    {era = "Midnight", text = "Led the blood elf forces in Silvermoon's defense against the Void."},
}

IMAGOdb.timelines.ERSTE_ARKANISTIN_THALYSSRA = {
    {era = "Legion", text = "Thalyssra was exiled from Suramar for opposing the Legion and sent a magical distress signal that was intercepted by Khadgar, allowing her to establish a resistance in Shal'Aran. With  allies, she freed the nightborne from their dependence on the Nightwell, and led a joint assault with Horde and Alliance forces to liberate Suramar. After becoming leader, she chose to let the Nightwell fade and pledged the nightborne to the Horde."},
    {era = "BfA", text = "During the Fourth War, Thalyssra assisted the Horde in breaking the Zandalari out of Stormwind, assisted the Horde fleet in Nazjatar, and later supported the rebellion against Sylvanas Windrunner. After N'Zoth's defeat, she joined the Horde Council."},
    {era = "SL", text = "Thalyssra witnessed the ritual to open the doorway to the Maw at the Frozen Throne within Icecrown Citadel. Following the defeat of the Jailer, Thalyssra and Lor'themar briefly traveled to Oribos in the Shadowlands to attend Sylvanas' trial."},
    {era = "DF", text = "Thalyssra saw the Horde expedition depart to the Dragon Isles. She and her now-husband, Lor'themar Theron, mused on how they were fortunate to have had a brief respite and playfully bantered about who proposed to whom. Thalyssra eventually joined Alexstrasza and her allies to defend the growing Amirdrassil from Fyrakk the Blazing in the Emerald Dream."},
    {era = "Midnight", text = "Thalyssra stayed in Sunfury Spire in Silvermoon until the Sunwell's corruption. She requested aid from Suramar City, but when no response came, she went to investigate and uncovered Twilight's Blade infiltrators. After restoring order, she led the nightborne army to Silvermoon to aid in the assault on the Devouring Host."},
}

IMAGOdb.timelines.LADY_LIADRIN = {
    {era = "WC2", text = "Fought against the Amani trolls, and managed to help capture Zul'jin after first being captured by him. Felt a great sense of guilt after seeing the enemy warlord tortured extensively, judging  the forest trolls worthy of compassion for the first time."},
    {era = "WC3", text = "Barely survived the Fall of Silvermoon. Gave up priesthood after losing her faith and her family."},
    {era = "Pre-Classic", text = "Became the first Blood Knight paladin and leader of the order."},
    {era = "TBC", text = "Helped depose Kael'thas and to purify the Sunwell. Regained her faith."},
    {era = "WotLK", text = "Began training new paladins without relying on the torture of a Naaru."},
    {era = "WoD", text = "Led the Sunsworn forces to combat the Iron Horde. Liberated Auchindoun from the Shadow Council."},
    {era = "Legion", text = "Joined the Knights of the Silver Hand and defended Light's Hope Chapel. Led Horde forces to free Suramar from occupation of the Burning Legion."},
    {era = "BfA", text = "Left the Knights of the Silver Hand and commanded Horde forces in the battle for Stromgarde."},
    {era = "SL", text = "Defended Silvermoon from new Scourge incursions alongside Grand Magister Rommath and Aethas Sunreaver."},
    {era = "Pre-DF", text = "Officiated Lor'themar and Thalyssra's marriage."},
    {era = "TWW", text = "Helped defend Hallowfall from Xal'atath's forces and coordinated the training of new Earthen recruits for the Horde."},
    {era = "Pre-MN", text = "Rallied the priests of Azeroth to Silvermoon with Alonsus Faol in anticipation of Xal'atath's attack."},
    {era = "Midnight", text = "Liadrin fought on the forefront in the defense of the Sunwell, recruited outside help from Zul'jarra's Amani and helped to create the Dawnwell."},
}

IMAGOdb.timelines.GRAND_MAGISTER_ROMMATH = {
    {era = "Pre-WC1", text = "Studied the arcane in the mage capital of Dalaran alongside his friends Umbric and Dar'khan Drathir."},
    {era = "WC3", text = "Survived Silvermoon's destruction and joined Kael'thas Sunstrider in his defense of Dalaran. Followed the prince to Outland after escaping the dungeons of the Kirin Tor and learned how to combat the blood elves' addiction to magic from Illidan Stormrage. He returned to Silvermoon as Grand Magister."},
    {era = "Pre-TBC", text = "Helped found the order of the Blood Knights and rose to political power with Kael'thas' approval. Controlled the consumption of magic of the blood elves, ensuring that as few as possible succumbed to their addictions."},
    {era = "TBC", text = "Opposed accepting help from Sylvanas Windrunner in the reclamation of the Ghostlands but was outvoted by Lor'themar and Halduron. Joined the civil war against Kael'thas Sunstrider when the prince allied with the Burning Legion. Sometime after the prince's defeat, Rommath exiled Magister Umbric and his followers for practicing void magic."},
    {era = "WotLK", text = "Attempted to dissuade Lor'themar from sending the diminished blood elves to war in Northrend, ultimately failing. Helped in the restoration of the weapon Quel'delar."},
    {era = "MoP", text = "Investigated mogu artifacts and the properties of sha corruption. Rescued Aethas Sunreaver and many other mages from the Purge of Dalaran. He fought for the Horde as part of the Sunreaver Onslaught on the Isle of Thunder."},
    {era = "Legion", text = "Helped to free Suramar from the occupation of the Burning Legion."},
    {era = "BfA", text = "Took part in welcoming the nightborne into the Horde and defended the Sunwell from Alleria's influence."},
    {era = "SL", text = "Defended Silvermoon from new Scourge incursions alongside Lady Liadrin and Aethas Sunreaver."},
    {era = "Pre-MN", text = "Relented when his former friend, Magister Umbric, pleaded with him to allow him to stay in Eversong Woods to prepare for the coming assault by the Void. Reluctantly worked with the ren'dorei to combat the Twilight's Blade in the Twilight Highlands."},
    {era = "Midnight", text = "Rommath led the magisters of Silvermoon in their defense from the Devouring Host. Still wary of Umbric's use of Void magic, Rommath reluctantly agreed that his expertise is needed to defeat their common enemy."},
}

IMAGOdb.timelines.HALDURON_BRIGHTWING = {
    {era = "WC2", text = "Fought against the Amani trolls, and managed to capture their leader, Zul'jin."},
    {era = "WC3", text = "Survived the Scourge attack and was named Ranger-general after Sylvanas' death. Began to drive out the remaining Scourge forces from the ruined Silvermoon City."},
    {era = "TBC", text = "Strongly opposed the creation of the Blood Knights. Successfully negotiated the admittance of the Blood Elves into the Horde as an envoy in Orgrimmar."},
    {era = "WotLK", text = "Oversaw the construction of defenses for the renewed Sunwell."},
    {era = "Cata", text = "Rooted out a reforming Amani force, forming a brief alliance with Vereesa Windrunner in the process."},
    {era = "MoP", text = "Fought the rising Zandalari threat on the Isle of Thunder."},
    {era = "Legion", text = "Joined the Unseen Path and helped to defeat Hakkar the Houndmaster."},
    {era = "Pre-DF", text = "Attended Lor'themar and Thalyssra's wedding as groomsman."},
    {era = "Midnight", text = "Halduron was the first to notice the threat of the Lightbloom and ventured into Harandar with Orweyna. Securing a tentative alliance with the Haranir, Halduron managed to keep the Lightbloom in check and strengthened Silvermoon's defenses."},
}

IMAGOdb.timelines.VEREESA_WINDRUNNER = {
    {era = "Pre-WC2", text="Lived peacefully on Windrunner Spire, as part of the Windrunner family, one of the most prestigious names in Quel'Thalas."},
    {era = "WC2", text="Participated in the defense of Quel'Thalas, helping her sister Alleria travel to Silvermoon. Her younger brother, Lirath, died at the hands of the Horde after being secretly trained by her, damaging her relationship with Sylvanas, who refused to train him so that he would be safe in Silvermoon."},
    {era = "Pre-WC3", text = "Adopted Arator at the request of her sister Alleria and aided the mage Rhonin in his secret mission to rescue the Aspect of the Red Dragonflight Alexstrasza from the clutches of the Dragonmaw orc clan, ruining Deathwing's plans."},
    {era = "WC3", text="Lived in Dalaran raising Arator when Arthas invaded the city with the Scourge. She managed to survive, and eventually married Rhonin."},
    {era = "Classic", text = "Had two sons, Giramar and Galadin."},
    {era = "WotLK", text = "Participated in the war against the Lich King and founded the Silver Covenant. She helped restore Quel'Delar, the legendary sword of Thalorien Dawnseeker who defended Silvermoon from the invasion of the Scourge."},
    {era = "Cata", text = "Helped Halduron Brightwing and Darkspear Chieftain Vol'jin stop the Amani Empire, which threatened to rise again and destroy Quel'Thalas."},
    {era = "MoP", text = [[Was not present at the destruction of Theramore, which cost Rhonin his life. Enraged, she joined Jaina Proudmoore in purging Dalaran of the Sunreavers, the Horde's blood elf representatives in Dalaran. After that, Vereesa aided the Kirin Tor offensive, opposing the Horde on Thunder Isle.

    After the fall of Garrosh Hellscream, Vereesa devised a plan to assassinate him during his trial for his crimes in order to avenge her husband's death. However, she ultimately regretted her plan and did not carry it out.]]},
    {era = "Legion", text = "Traveled to Niskara to search for Alleria. However, she only found her bow, Thas'dorah. Subsequently, Vereesa led the high elves to support the Nightborne rebels in Suramar in reclaiming the city. Finally, she traveled to Argus to stop the Legion, where she was reunited with Alleria."},
    {era = "TWW", text = "After years of peace, she received several visions of the Radiant Song, which foretold a dark future for Quel'Thalas against the Void."},
    {era = "Midnight", text = "Alongside the Silver Covenant, joined the attack on the Darkwell on the Isle of Quel'danas. Following the battle, she disbanded the Silver Coventant to form the Silversun Compact along with Aethas Sunreaver. She was then present at the purification of the Darkwell, offering the crown of Anasterian Sunstrider."},
}

IMAGOdb.timelines.SHANDRIS_FEATHERMOON = {
        {era = "Ancient", text = "Was orphaned during the first invasion of the Burning Legion, adopted by Tyrande Whisperwind."},
    {era = "WC3", text = "Fought the Burning Legion and Archimonde himself in Ashenvale and Mount Hyjal."},
    {era = "Classic", text = "Was promoted to high general of the Sentinels."},
    {era = "Cata", text = "Kept Kalimdor safe from Naga threats and began the admission of the Worgen to the Sentinels. Helped defend Ashenvale from Garrosh Hellscream's invasion."},
    {era = "Pre-MoP", text = "Tried and failed to defend Theramore from the Horde."},
    {era = "Legion", text = "Joined the Unseen Path and helped defeat Hakkar the Houndmaster."},
    {era = "Pre-BfA", text = "Drove off Horde invaders in Darkshore but couldn't arrive in time to help defend Teldrassil."},
    {era = "BfA", text = " Coordinated the Alliance war effort on Zandalar. Helped Tyrande to become the Night Warrior and fought back against the Horde in Darkshore once more. She led Alliance forces against Queen Aszhara after the battle in her homeland was won."},
    {era = "SL", text = "Followed her mother Tyrande into the Shadowlands and freed her of the Night Warrior's curse."},
    {era = "DF", text = "Defended Amirdrassil from Fyrakk's flames and worked together with the Forsaken in a first attempt at letting the Fourth War rest. Afterwards, Tyrande and Malfurion named her as the new leader of the Night Elves."},
    {era = "Midnight", text = "Shandris has aided the Blood Elves against the threat of the Void and helped to create the Dawnwell."},
}

IMAGOdb.timelines.AETHAS_SUNREAVER = {
    {era = "WotLK", text = "Defended Dalaran from the Blue Dragonflight and successfully championed the readmission of the blood elves into the Kirin Tor to fight the Lich King. He also formally formed the Sunreaver faction of Dalaran to represent his followers and the Horde within the city."},
    {era = "Pre-MoP", text = "Voted to send Kirin Tor aid to defend Theramore from the Horde. However, he later denied Jaina Proudmoore's request to mobilize Dalaran for vengeance after the city was annihilated by a mana bomb."},
    {era = "MoP", text = "Imprisoned during the Purge of Dalaran after being tied to Horde war crimes. Following his rescue, he aided Quel'Thalas in the Isle of Thunder campaign and the rebellion against Garrosh Hellscream."},
    {era = "Legion", text = "Orchestrated the recovery of the ancestral runeblade Felo'melorn to earn back the Sunreavers' place within the Kirin Tor. He later battled the Burning Legion alongside his peers on the Broken Shore and Argus."},
    {era = "SL", text = "Returned to Quel'Thalas to help establish magical defenses in Tranquillien. Alongside his allies, he successfully defeated a renewed Scourge invasion led by a treacherous San'layn."},
    {era = "DF", text = "Attempted to make amends with Jaina Proudmoore by seeking out a precious Kul Tiran music box she had lost, hoping to offer it as a gesture of peace."},
    {era = "TWW", text = "Survived the destruction of Dalaran and suffered from profound survivor's guilt. He ultimately resolved alongside his peers to rebuild the Kirin Tor without the hubris of the past."},
    {era = "Midnight", text = "Led the Sunreavers in the defense of Silvermoon against the encroaching Void, tolerating the Silver Covenant's presence to ensure the city did not fall. Following a succesful assault against the void in Quel'Danas, he agreed to the Silversun Compact, an uneasy agreement with the Silver Covenant to set aside their differences in times of great need."},
}

IMAGOdb.timelines.SALANDRIA = {
    {era = "TBC", text = "Taken on an adventure by a Horde champion during Children's Week, seeing the world outside of Shattrath for the first time. Got attacked on sight by a bronze dragon for something she will do, or fail to do, in her future. Later, Salandria would be adopted by Lady Liadrin."},
    {era = "SL", text = "Went on her first mission as a Blood Knight trainee and accompanied Horde champions into the Shadowlands to empower a weapon against the newly risen Scourge in Quel'Thalas. Helped defeat the san'layn Vorath alongside Liadrin, ending the Scourge threat for the time being."},
    {era = "TWW", text = "Accompanied her mother to Hallowfall to combat Xal'atath's forces. Learned about the Sacred Flame of the Arathi."},
    {era = "Midnight", text = "Defended the Sunwell against the encroaching Voidstorm. Alongside Taelia Fordragon, she rescued captured paladins from the Twilight's Blade cultists and managed to slay their leader."},
}

IMAGOdb.timelines.MAGISTER_UMBRIC = {
    {era = "Pre-WC1", text = "Studied the Arcane in Dalaran alongside his friends Rommath and Dar'Khan Drathir."},
    {era = "Pre-WotLK", text = "Exiled from Silvermoon for practicing forbidden void magic."},
    {era = "Legion", text = "Discovered Telogrus Rift and turned into ren'dorei along with his followers. Joined Alleria Windrunner after she offered them a place in the Alliance."},
    {era = "BfA", text = "Fought for the Alliance in the Fourth War and was eager to prove his worth. He weakened Zandalari defenses by transporting troops via portals and he almost managed to kill Jastor Gallywix. Reanimated revered dinosaurs and made them fight the Zandalari, dealing a heavy blow to enemy morale."},
    {era = "DF", text = "Began the hunt for Xal'atath alongside Alleria Windrunner and defended Telogrus Rift from the Harbinger's void forces."},
    {era = "TWW", text = "Established an outpost on K'aresh, lending the ren'dorei's strength in the fight against Dimensius."},
    {era = "Pre-MN", text = "After hearing of Vereesa's visions, he managed to regain entry into Eversong Woods. Reluctantly worked with his former friend, Grand Magister Rommath, to combat the Twilight's Blade in the Twilight Highlands."},
    {era = "Midnight", text = "With Silvermoon in danger, Umbric returned to his former homeland to combat the Void. He managed to open a passage into the Voidstorm and later helped to create the Dawnwell. For his efforts he was readmitted into Silvermoon with a full pardon."},
}

IMAGOdb.timelines.LADY_DARKGLEN = {
    {
        era = "DF",
        text = [[Helped to defend Telogrus Rift from the Shadowguard.]],
    },
    {
        era = "TWW",
        text = [[Fought on K'aresh against Dimensius' forces. Took on contracts with the Brokers of Tazavesh.]],
    },
    {
        era = "Midnight",
        text = [[Stopped the spread of a mutated pathogen in the Molt and successfully cured the ren'dorei of the sickness. Fought in the Voidspire. Investigated the ritual sites of the fragmented void forces after the Dawnwell's restoration.]],
    }
}

IMAGOdb.timelines.RIFTBLADE_MAELLA = {
    {
        era = "Pre-WotLK",
        text = [[Was discovered in the attempt of performing a Void ritual and was exiled from Quel'Thalas by Grand Magister Rommath and Lor'themar Theron.]],
    },
    {
        era = "Legion",
        text = [[Followed Umbric into Telogrus Rift and was transformed into a ren'dorei. Joined the Alliance after Alleria Windrunner rescued them.]],
    },
    {
        era = "DF",
        text = [[Defended Telogrus Rift from the Shadowguard ethereals.]],
    },
    {
        era = "TWW",
        text = [[Fought on K'aresh against Dimensius' forces. Protected Shan'dorah from saboteurs in Untethered Space.]],
    },
    {
        era = "Pre-MN",
        text = [[Stayed behind to watch over Telogrus while Umbric went to Quel'Thalas to negotiate. Battled the Twilight's Blade Cult in the Twilight Highlands.]],
    },
    {
        era = "Midnight",
        text = [[Fought Xal'atath's forces in the Voidstorm alongside her fellow ren'dorei. Dispelled unstable singularities woven by Xal'atath's minions at Stormarion Citadel, preventing catastrophic explosions.]],
    }
}

IMAGOdb.timelines.ASTALOR_BLOODSWORN = {
    {era = "WC3", text = "Co-founded the Blood Knight paladin order by finding a way for the elves to wield the holy light again – by draining it from a captured Naaru."},
    {era = "TBC", text = "Helped defend Silvermoon against their treacherous leader Kael'thas."},
    {era = "WoD", text = "Supplied blood elven forces with golems powered by blood magic to reinforce Lady Liadrin's crusade against the Iron Horde."},
    {era = "Midnight", text = "Experimented with a new type of magic – anguish – to empower the city's defenses and ensure the survival and prosperity of the blood elves."},
}

IMAGOdb.timelines.LORD_SALTHERIL = {
    {
        era = "Pre-WC2",
        text = [[Banished Sylvanas Windrunner from his grounds after she caused a scandal at one of his parties by slipping woundwood into drinks and temporarily paralyzing his tongue.]],
    },
    {
        era = "TBC",
        text = [[Continued to host parties and surround himself with sycophants, despite accusations of avoiding the reality of the situation in Quel'Thalas.]],
    },
    {
        era = "Midnight",
        text = [[Opened his grounds to the Magisters, Farstriders, Blood Knights, and even the miscreants of Murder Row for an event he calls "Saltheril's Soiree". These factions court the sin'dorei nobility and adventurers for favor and patronage.]],
    }
}

IMAGOdb.timelines.LORD_ANTENORIAN = {
    {
        era = "Pre-MN",
        text = [[After serving the magistrate for many years, he moved to Tranquilien to become the town's governor.]],
    },
    {
        era = "Midnight",
        text = [[Despaired when Xal'atath attacked Silvermoon and secretly joined the Twilight's Blade. Invited Umbric under the pretense of helping him, but tried to kill the magister and managed to destroy his research. His plan to bring Eversong Woods under the cult's control was thwarted by Umbric, Arator and the Champion when they infiltrated Deathholme. Abandoned by his Void allies, he was eventually slain.]],
    }
}

IMAGOdb.timelines.LEONA_DARKSTRIDER = {
    {
        era = "TWW",
        text = [[Fought on K'aresh as Magister Umbric's apprentice. Offered to infuse the demon hunter Adarus with the Void in exchange for being taught the ways of the Illidari. Adarus did not withstand the allures of the whispers of the Void and had to be taken out, leaving Leona's training unfinished.]],
    },
    {
        era = "Pre-MN",
        text = [[Met Allari the Souleater, who volunteered to show Leona how to become a demon hunter.]],
    },
    {
        era = "Midnight",
        text = [[Fought in the Voidstorm alongside her fellow ren'dorei. Got her demon hunter tattoos from Allari and completed her training by consuming a domanaar's soul. Was part of the strike teams at Naigtal and Val.]],
    }
}

IMAGOdb.timelines.CHIEF_TELEMANCER_OCULETH = {
    {
        era = "Ancient",
        text = [[Built and maintained Suramar's teleportation network and tinkered with new spells before the War of the Ancients. Found refuge under Suramar's protective barrier during the Sundering.]],
    },
    {
        era = "Legion",
        text = [[Refused to bow to the Burning Legion and was banished from Suramar by Grand Magistrix Elisande. Almost lost his mind and withered due to magical withdrawal, but was saved by Thalyssra and the Champion and joined the rebellion against his former liege. Re-established his portal network and was a key figure in the rebellion's eventual success.]],
    },
    {
        era = "BfA",
        text = [[After the nightborne joined the Horde, Oculeth established a bureau of telemancy and remade the Horde capitals' portal networks safer and more efficient. Transported troops during the Fourth War and fought for the Horde in Nazjatar. With exceptional skill, he managed to open a portal to Draenor from the Iron Horde's timeline and allowed the Mag'har to cross over to Azeroth.]],
    },
    {
        era = "DF",
        text = [[Visited Algeth'ar Academy and was fascinated by the dragons' ways of using magic. Spent his free time fishing in the Azure Span.]],
    },
    {
        era = "Midnight",
        text = [[Provided portals from Silvermoon to Bel'ameth, Suramar and the Silverglade Refuge to mass-teleport the united elven armies to Quel'Thalas. Joined the fight against the Void on the Isle of Quel'Danas.]],
    }
}

IMAGOdb.timelines.ARCANIST_VALTROIS = {
    {
        era = "Pre-Legion",
        text = [[Was renowned as an arcanist in Suramar for her knowledge of the ley lines. Was exiled and withered due to magical withdrawal, after Thalyssra's rebellion against Grand Magistrix Elisande when the nightborne leader chose to ally Suramar with the Burning Legion.]],
    },
    {
        era = "Legion",
        text = [[Rejoined the rebellion under Thalyssra in Shal'Aran and reactivated the leyline grid of Suramar. Summoned a concentrated manastorm to help the arcan'dor grow fruit to restore the nightborne to their former strength. Befriended the dragon Stellagosa and later devised the plan to breach the Nighthold to stop Elisande once and for all.]],
    },
    {
        era = "BfA",
        text = [[Accompanied Thalyssra during her diplomatic visit to Silvermoon, helped defend the Sunwell from Alleria, and agreed to join the Horde. Fought in the Fourth War and freed Lady Ashvane under orders of Warchief Sylvanas Windrunner.]],
    },
    {
        era = "TWW",
        text = [[Remained in contact with Stellagosa and traveled the world with her. The two eventually became lovers.]],
    },
    {
        era = "Midnight",
        text = [[Joined the united elven armies on the Isle of Quel'Danas against the Devouring Host. Accompanied Thalyssra to Harandar to witness Hagar's revelation about the trolls' and elves' shared ancestry.]],
    }
}

IMAGOdb.timelines.MEHLAR_DAEMMERKLINGE = {
    {
        era = "Pre-WC3",
        text = [[Trained under Uther the Lightbringer as a Knight of the Silver Hand.]],
    },
    {
        era = "WC3",
        text = [[Fought the Scourge on many fronts and later joined the Blood Knights.]],
    },
    {
        era = "TBC",
        text = [[Defiled Uther's tomb and faced the spirit of his mentor. Realized that rage and violence were not the emotions he wanted to be guided by. He worked with Sylvanas Windrunner to create the Scourgebane trinket.]],
    },
    {
        era = "WoD",
        text = [[Followed Lady Liadrin to Draenor and helped her defend Auchindoun from the Shadow Council.]],
    },
    {
        era = "Legion",
        text = [[Journeyed to Uther's tomb again, this time to defend it against restless spirits. Later he briefly rejoined the Silver Hand when Lady Liadrin pledged her Blood Knights to the new Highlord.]],
    },
    {
        era = "DF",
        text = [[Was present at the reformation of Tyr and the founding of Tyr's Guard.]],
    },
    {
        era = "TWW",
        text = [[Helped train new earthen volunteers for the Horde.]],
    },
    {
        era = "Midnight",
        text = [[Injured during the initial assault on the Sunwell, Mehlar later rejoined the Vanguard of the Light in the fight against the Void.]],
    }
}

IMAGOdb.timelines.DANATH_TROLLBANN = {
    {era = "WC2", text = "Served under General Turalyon as a commander and tactician of the Alliance of Lordaeron, repelling the orcish Horde that threatened the Eastern Kingdoms and pursuing them beyond the Dark Portal to their homeworld of Draenor."},
    {era = "TBC", text = "Led the forces of Honor Hold in staving off the demonic armies of Hellfire Peninsula."},
    {era = "Legion", text = "Aided heroic warriors in acquiring Strom'kar, the Warbreaker. This legendary sword once belonged to King Thoradin, the first human king and ancestor of Danath Trollbane himself. After the fall of the Legion, Danath returned to a long-ruined Stromgarde to rebuild the city and claim his birthright as king."},
    {era = "BfA", text = "Fought in the Battle of Stromgarde, leading his forces in the defense of their city. The struggle for the Arathi Highlands raged between the Horde and Alliance, sowing chaos across the formerly tranquil farmland."},
    {era = "TWW", text = "Joined the Alliance forces dispatched to Khaz Algar to combat the Harbinger, Xal'atath, and her nerubian forces. Routed a rebellion led by human supremacist Marran Trollbane, niece of Danath and regent of Stromgarde in his absence."},
    {era = "Midnight", text = "Helped Arator learn the history of his father, Turalyon, and his part in the events of the Second War. Introduced heroes to the Arcantina, a home away from home for adventurers from all over Azeroth."},
}

IMAGOdb.timelines.TURALYON = {
    {era = "Pre-WC1", text = "Orphaned and given to the Church of the Holy Light to become a priest."},
    {era = "WC2", text = "Became one of the first five paladins of the Order of the Silver Hand. Fought as Lothar's general and decided the Second War, driving the Horde back. Met Alleria, had a son, and ventured into Outland, ultimately becoming stranded there."},
    {era = "Pre-WC3", text = "Traveled through the Twisting Nether with Alleria and was conscripted into the Army of the Light to fight the Burning Legion. What would take a few decades on Azeroth, to them were a thousand years of war. Turalyon became Lightforged."},
    {era = "Legion", text = "Led the final battle against the Legion in their stronghold of Antorus and succeeded. With his crusade finally over, him and Alleria were reunited with their son, Arator."},
    {era = "Pre-BfA", text = "Brought the Army of the Light, especially the Lightforged Draenei into the ranks of the Alliance. Turalyon served as their High Exarch."},
    {era = "BfA", text = "Helped his old friend Danath Trollbane to win the Battle of Stromgarde against the new Horde."},
    {era = "Pre-SL", text = "Joined in the hunt for Sylvanas Windrunner. Used the Holy Light to torture a Horde civilian."},
    {era = "SL", text = "Was made regent of Stormwind after Anduin's disappearance."},
    {era = "Pre-DF", text = "Attended Lor'themar and Thalyssra's wedding in a show of good faith for the truce with the Horde."},
    {era ="DF", text = "Became quite popular among the Stormwind nobles after ruling the Alliance for 5 years. Personally helped to defend Amirdrassil against Fyrakk the Blazing."}, 
    {era = "TWW", text = "Led the Alliance forces on the Isle of Dorn against Xal'atath's armies and personally held the line against the Nerubians in Hallowfall."},
    {era = "Pre-MN", text = "Thwarted a resurgence of the Burning Legion together with Alleria and Arator, seemingly getting closer as a family. Yet Alleria left a heartbroken Turalyon at the altar, deciding not to marry him even after all these years together. During this time, Turalyon got lost more frequently in light-blindness."},
    {era = "Midnight", text = "Called by the Sunwell to defend Silvermoon against the Void, Turalyon once more led the forces of the Light. His zeal out of control, Turalyon hurt his son in a terrible accident but did not lose faith in the Light despite that. Faced Xal'atath in her Voidspire and got lost in the Darkwell with Alleria"},
}

IMAGOdb.timelines.PROPHET_VELEN = {
    {
        era = "Ancient",
        text = [[Millennia ago, Velen, Kil'jaeden and Archimonde ruled over the idyllic Eredar homeworld of Argus as the Triumvirate. When Sargeras offered them power and a place in the Burning Legion, Velen refused and gathered as many followers as he could before fleeing the planet. Kil'jaeden, once as close as a brother to Velen, vowed to hunt him down for this betrayal.]],
    },
    {
        era = "Pre-WC1",
        text = [[After evading the Burning Legion for thousands of years, the Genedar crashed on the planet Draenor and Velen's people – now called Draenei, Exiled Ones – were stranded. When Kil'jaeden found them, he corrupted the orcs of Draenor into committing genocide. Velen was only barely able to flee with a handful of his people.]],
    },
    {
        era = "WC2",
        text = [[Survived the Shattering of Outland by Ner'zhul but saw his former home dragged into the Twisting Nether.]],
    },
    {
        era = "WC3",
        text = [[Seizing the only chance to escape Outland, Velen devised a plan to capture the naaru vessel called the Exodar, that was in possession of Kael'thas Sunstrider. The surviving draenei were discovered however and the ship's engine sabotaged – leaving them to aimlessly roam the Twisting Nether for years.]],
    },
    {
        era = "Pre-TBC",
        text = [[Finally leaving the trans-dimensional planes, the Exodar crash landed on the Azuremyst Isle of Kalimdor on Azeroth. After seeing to the wounded, the draenei explored the new world – only to find it inhabited by the very same orcs that had murdered their people on Draenor. Velen, in need of allies, joined the Alliance, finding comfort in their many races' reverence of the Light.]],
    },
    {
        era = "TBC",
        text = [[Urged his new allies on to commit to the invasion of Outland and thwart the Burning Legion's plans. After Kil'jaeden's defeat on the Sunwell Plateau, Velen restored the corrupted Sunwell with the remaining fragment of the fallen naaru M'uru. He then inspired the Blood Knights, Lady Liadrin chief among them, to use the Light more responsibly in the future.]],
    },
    {
        era = "Pre-Cata",
        text = [[When his draenei shamans warned him of earthquakes and elemental unrest not unlike on Draenor, Velen briefly considered fleeing Azeroth as well, but eventually decided against it. Tired of running, he declared Azeroth their new home and vowed to fight for her in the future.]],
    },
    {
        era = "Cata",
        text = [[Attended a meeting of the Alliance leaders in Darnassus and was approached by young Anduin Wrynn petitioning him to take him as a student and teach him the ways of the Light. Velen agreed and saw a vision of a much older Anduin leading the armies of all of Azeroth into a final battle against an all-consuming shadow.]],
    },
    {
        era = "MoP",
        text = [[Healed Anduin Wrynn alongside pandaren monks after the prince was injured trying to stop Garrosh Hellscream by himself.]],
    },
    {
        era = "Legion",
        text = [[Defended the Exodar and was forced to watch his own son Rakeesh die. Took part in the second assault on the Broken Shore and confronted Kil'jaeden in a final battle in the Twisting Nether. The demon and Velen had one last conversation before the Deceiver died. Velen, alongside Illidan Stormrage and Khadgar, led Azeroth's forces on Argus and finally witnessed the defeat of the Burning Legion.]],
    },
    {
        era = "BfA",
        text = [[Took part in healing Azeroth from her wounds left by Sargeras' sword. Personally provided healing for the refugees of Teldrassil.]],
    },
    {
        era = "DF",
        text = [[Organized the first Tishamaat holiday, uniting the draenei, broken and eredar for the first time on Azeroth. Personally helped to defend Amirdrassil from Fyrakk.]],
    },
    {
        era = "Midnight",
        text = [[Was summoned by the Sunwell to defend it against the Voidstorm. Oversaw the channelers and was the only one not needing magical reinforcements to keep channeling the Light.]],
    }
}

IMAGOdb.timelines.CALIA_MENETHIL = {
    {
        era = "WC2",
        text = [[Was betrothed against her wishes to the Alteraci noble Lord Daval Prestor by her father when Calia was just 16 years old. Prestor, who was actually the dragon Deathwing in disguise, vanished after the war and Calia was glad to remain unmarried.]],
    },
    {
        era = "Pre-WC3",
        text = [[Fell in love with a common footman of the Lordaeron army and became pregnant with his child.]],
    },
    {
        era = "WC3",
        text = [[Survived Lordaeron's fall through sheer luck and was able to flee with her husband and daughter to Southshore where the three lived happily in secret for a while. After an attack on the town, Calia was separated from her family.]],
    },
    {
        era = "Pre-Legion",
        text = [[Sometime before the third invasion of the Burning Legion, she met Alonsus Faol, who showed her the difference between the mindless Scourge and the undead of the Forsaken. Filled with hope that her family might be among the Forsaken people, Calia joined Alonsus.]],
    },
    {
        era = "Legion",
        text = [[Joined the Conclave and helped Faol restore the void god Saraka to her holy naaru form Saa'ra. Helped defend the Exodar from the Burning Legion.]],
    },
    {
        era = "Pre-BfA",
        text = [[Reappeared as a public figure and was considered the rightful ruler of Lordaeron by King Anduin Wrynn. She joined in the Gathering, hoping to meet her family again. She revealed herself, urging the Forsaken on to rejoin the Alliance. Instead of succeeding or finding her loved ones, she found only death in the massacre that followed. Was revived by Saa'ra and Anduin as an undead of the Light.]],
    },
    {
        era = "BfA",
        text = [[After the Fourth War ended, Calia formed a friendship with Derek Proudmoore, who had been turned into an undead as well. Both of them decided to join the Horde and Calia proclaimed that she wanted not only to aid her people, but also redeem the name Menethil.]],
    },
    {
        era = "Pre-SL",
        text = [[Stepped up as a councilor of the Forsaken and joined the Horde's ruling council. She accompanied Thrall on a diplomatic mission to Teldrassil's remains.]],
    },
    {
        era = "SL",
        text = [[Journeyed to the Shadowlands and helped in the campaign against the Jailer. Later, Calia was instrumental in recovering the Undercity from the Blight of the Fourth War, personally using her Light as a shield to combat the lingering poison. She joined the Desolate Council as one of its leaders, took Derek Proudmoore as her champion, and vowed to remove Forsaken troops from Gilneas.]],
    },
    {
        era = "DF",
        text = [[Succesfully directed the Forsaken counterattack after the Scarlet Crusade moved against the Undercity. Was true to her word and not only removed her undead troops from the Ruins of Gilneas, but also helped King Genn Greymane and Princess Tess personally to then recover the worgen city from the Scarlet Crusade's occupation.]],
    },
    {
        era = "Midnight",
        text = [[Was summoned by the Sunwell and fought to defend Silvermoon.]],
    }
}

IMAGOdb.timelines.TAELIA_FORDRAGON = {
    {era = "WC2", text = "Sent to Kul Tiras as a small child to escape the Second War. Brought into the care of Cyrus Crestfall, who raised her as a paladin."},
    {era = "WotLK", text = "The letters from her father stopped and Taelia found out that he \"died\" in the war against the Lich King."},
    {era = "BfA", text = "Discovered Priscilla Ashvane's treachery against House Proudmoore. Helped defeat the corrupted and mad Lord Stormsong. After the Fourth War, King Anduin thanked her personally for her service."},
    {era = "SL", text = "Taelia finally learned of her father's true fate and decided to follow Bolvar into the Shadowlands. They reunited and Bolvar – now free from his role as the Lich King – vowed to reconnect with his daughter. "},
    {era = "Midnight", text = "Defended the Sunwell against the encroaching Voidstorm. Alongside Salandria, she rescued captured paladins from the Twilight's Blade cultists and managed to slay their leader."},
}

IMAGOdb.timelines.MOIRA_THAURISSAN = {
    {
        era = "Pre-Classic",
        text = [[Born as the sole heir to King Magni and Queen Eimear of Ironforge. Her mother died to a troll skirmish when Moira was a child and a rift grew between her and her father. He would have preferred a son to a daughter and made the fact known clearly to her and to his subjects.]],
    },
    {
        era = "Classic",
        text = [[Was kidnapped by the Dark Iron Clan to use as a hostage in the impending dwarven civil war. She fell in love with and married her captor, Emperor Dagran Thaurissan, and the two had a son together. When her husband was killed at Magni's orders, Moira stayed in Shadowforge City as queen, and masterminded the Dark Iron dwarves' liberation from Ragnaros by allying with the Hydraxian Waterlords.]],
    },
    {
        era = "Pre-Cata",
        text = [[When her father was turned into crystal, Moira and infant Dagran II returned to Ironforge to claim the throne. Met with resistance, she took the whole city hostage in a siege, including a visiting Anduin Wrynn. Was spared execution by King Varian at Anduin's request and became a member of the newly formed Council of Three Hammers as the Dark Iron representative.]],
    },
    {
        era = "Cata",
        text = [[Still mistrusted by the people of Ironforge, Moira rooted out traitors of the Dark Iron Clan who had defected to the Twilight's Hammer.]],
    },
    {
        era = "MoP",
        text = [[Joined King Varian in the defense of Ironforge against the Frostmane trolls. Clearly humbled, she vowed to prove the Dark Iron Clan's worth to the kingdom, and to the Alliance. Fought in the Siege of Orgrimmar against Garrosh Hellscream's troops.]],
    },
    {
        era = "Pre-WoD",
        text = [[Was in charge of the reconstruction of the Jade Serpent statue.]],
    },
    {
        era = "Pre-Legion",
        text = [[Defended Khaz Modan from demonic invasions. After four years of petrification, Magni finally reawakened as the Speaker of Azeroth. Seeing how well her daughter had managed as a ruler, despite all the obstacles in her way, Magni told a tearful Moira that he was proud of her for the first time.]],
    },
    {
        era = "Legion",
        text = [[Helped in the Third Invasion of the Burning Legion as a priest in the Conclave.]],
    },
    {
        era = "Pre-BfA",
        text = [[Rallied the Conclave and healers of Ironforge to aid in curing Azeroth's wounds inflicted by Sargeras. Was charged by King Anduin to find out more about the properties of Azerite.]],
    },
    {
        era = "BfA",
        text = [[Halted rebelling subjects that had formed the Cult of Ragnaros. Officially made the Dark Iron Clan a member of the Alliance.]],
    },
    {
        era = "DF",
        text = [[Aided in the defense of Amirdrassil.]],
    },
    {
        era = "TWW",
        text = [[Survived the destruction of Dalaran and made contact with the earthen of Khaz Algar. Helped the earthen reunite as a people and secured their aid in the fight against Xal'atath. Journeyed to Gundargaz with Dagran II and Magni to stop the traitorous High Speaker. Grew a bit closer to her father again.]],
    },
    {
        era = "Midnight",
        text = [[Was summoned by the Sunwell to defend Silvermoon.]],
    }
}

IMAGOdb.timelines.HAUPTMANN_FAREEYA = {
    {
        era = "Ancient",
        text = [[Escaped Argus on the Genedar with Prophet Velen when the eredar joined the Burning Legion. Later commandeered another spaceship – the Xenedar – back into the Twisting Nether. Under command of the naaru Xe'ra, she became Lightforged and became a leader of the Army of the Light.]],
    },
    {
        era = "Legion",
        text = [[Fought on the frontlines during the assault on Antorus. With the support of the Champions of Azeroth, the Army of the Light was able to put an end to the Burning Legion on Argus once and for all.]],
    },
    {
        era = "BfA",
        text = [[Strongly approved of High Exarch Turalyon's choice to pledge the Army of the Light to the Alliance. Was reunited with Velen and her people and began training new draenei from Azeroth as Lightforged soldiers. Fought in the Fourth War.]],
    },
    {
        era = "DF",
        text = [[Attended the first Tishamaat holiday of the draenei on Azeroth.]],
    },
    {
        era = "TWW",
        text = [[Traveled to Hallowfall to witness Beledar's Light and inspired Arathi younglings with her aptitude in the Light.]],
    },
    {
        era = "Midnight",
        text = [[Helped to defend the Sunwell against the Voidstorm.]],
    }
}

IMAGOdb.timelines.DELAS_MOONFANG = {
    {
        era = "Ancient",
        text = [[Grew up in Val'sharah during the War of the Ancients and joined the Sisterhood of Elune.]],
    },
    {
        era = "WoD",
        text = [[Aided Archmage Khadgar to track Gul'dan.]],
    },
    {
        era = "Legion",
        text = [[Joined the Conclave as one of its first members and helped redeem the void god Saraka. Translated various texts from the Burning Legion for both the Conclave and the reformed Knights of the Silver Hand. Met the Highlord and found her truth – she became a paladin. Later confronted her ancestors who made a deal with the demons out of desperation.]],
    },
    {
        era = "DF",
        text = [[Moved to Bel'ameth.]],
    },
    {
        era = "TWW",
        text = [[Fought for the Alliance in Azj-Kahet against Queen Ansurek's nerubians.]],
    },
    {
        era = "Midnight",
        text = [[Was summoned by the Sunwell and fought on the Isle of Quel'Danas against the Devouring Host.]],
    }
}

IMAGOdb.timelines.LORD_GRAYSON_SCHATTENBRUCH = {
    {
        era = "Pre-Classic",
        text = [[Was visited by his sister Jubeka who had become Forsaken after the Scourging of Lordaeron. Grayson chased her away in disgust, seeing her as nothing more than a monster.]],
    },
    {
        era = "Classic",
        text = [[Stationed in Stormwind City, he oversaw threats all across Azeroth and gave out missions for both newer and more experienced paladins. Helped fellow paladins to acquire their holy chargers – trusted mounts that are faithful companions to every Knight of the Order.]],
    },
    {
        era = "TBC",
        text = [[Joined the expedition to Outland with Arator Windrunner as his squire and fought the fel orcs in Hellfire Citadel.]],
    },
    {
        era = "Pre-Cata",
        text = [[Served food and drink at the ceremony in honor of the fallen Alliance heroes of Northrend, proving that no task is too modest for a paladin of his station if it helps others.]],
    },
    {
        era = "Cata",
        text = [[Sent paladin troops to combat some of the greater threats Azeroth faced, such as the orcs and dark iron dwarves of Blackrock Mountain.]],
    },
    {
        era = "Legion",
        text = [[Was tasked with coordinating the various paladin orders at Light's Hope Chapel and thwarted a new undead threat in the Eastern Plaguelands by slaying Ramien the Soultaker. Redeemed Shadowmane, the undead horse of the late Baron Rivendare, and made it the holy mount of the Highlord of the Silver Hand. Later fought the Burning Legion on Argus.]],
    },
    {
        era = "Pre-MN",
        text = [[Now stationed at Light's Hope Chapel as the primary paladin trainer, he was present at his former squire Arator's promotion. He denied the existence of his sister.]],
    },
    {
        era = "Midnight",
        text = [[Was summoned by the Sunwell and defended it against the Voidstorm.]],
    }
}

IMAGOdb.timelines.EADRIC_DER_REINE = {
    {
        era = "WotLK",
        text = [[Served the Argent Crusade and Tirion Fordring as Grand Champion. Was in charge of organizing the Grand Argent Tournament in northern Icecrown by keeping the grounds safe and supplied and overseeing the combatants' training. He served as quartermaster and occasionally participated in the tournament as a fighter himself.]],
    },
    {
        era = "Legion",
        text = [[Joined the reformed Knights of the Silver Hand and served as Light's Hope Chapel's quartermaster.]],
    },
    {
        era = "Pre-SL",
        text = [[Held back the rampaging Scourge in Northrend.]],
    },
    {
        era = "Midnight",
        text = [[Was summoned by the Sunwell and fought the Void at Parhelion Plaza.]],
    }
}

IMAGOdb.timelines.YALIA_WEISENWISPER = {
    {
        era = "Pre-WC3",
        text = [[With two young pandaren boys getting into a ceaseless rivalry to gain her hand in future marriage, Yalia saw no other choice than to leave her home and family behind. She joined the Shado-Pan Order at five years old.]],
    },
    {
        era = "MoP",
        text = [[Now a senior Shado-Pan, Yalia oversaw the training of new recruits. When the Alliance and Horde conflict broke out on Pandaria, Yalia fought to defend the Townlong Steppes from the manifesting Sha. Later she reunited with her family and defended the Shado-Pan Monastery from the Zandalari onslaught. Met Chen Stormstout and the two fell in love.]],
    },
    {
        era = "Legion",
        text = [[Was recruited by Prophet Velen into the Conclave to serve as an alchemist. Helped to defend the Netherlight Temple.]],
    },
    {
        era = "Midnight",
        text = [[Was summoned by the Sunwell to defend it against the Void.]],
    }
}

IMAGOdb.timelines.FIONA = {
    {
        era = "Cata",
        text = [[Traveled the Eastern Plaguelands with Tarenar and Gidwin. They stopped multiple times and helped the paladins of Light's Hope Chapel before settling in the sanctuary for the time being. Made several friends and acquaintances along the way like Argus Highbeacon, the ghost of Pamela Redpath and Vex'tul.]],
    },
    {
        era = "WoD",
        text = [[Traveled to Draenor and helped with the threat of the botani in Shadowmoon Valley. Parked the caravan in Lunarfall Garrison for a while to help the Alliance commander. Fiona found an interest in watching the fights in the ogre coliseum of Highmaul.]],
    },
    {
        era = "BfA",
        text = [[Traveled to Boralus and put up shop there for a while.]],
    },
    {
        era = "DF",
        text = [[Joined the Dragonscale Expedition and explored the Dragon Isles in her caravan.]],
    },
    {
        era = "Midnight",
        text = [[Was summoned by the Sunwell and fought on the Isle of Quel'Danas.]],
    }
}

IMAGOdb.timelines.LOTHRAXION = {
    {
        era = "Ancient",
        text = [[Helped to destroy unnumbered worlds throughout the Great Dark Beyond as a demon of the Burning Legion. Abandoned the demons and his fellow nathrezim after meeting the draenei. Finally joined the Army of the Light, pledged his loyalty to Xe'ra the Light Mother and became infused with the Light itself.]],
    },
    {
        era = "Pre-WC3",
        text = [[After Draenor's destruction, Lothraxion recruited Turalyon and Alleria Windrunner into the Army of the Light. When Alleria was infected with the Void, Lothraxion helped her remain sane and even convinced Xe'ra not to execute her. Later, he fought by High Exarch Turalyon's side on Argus.]],
    },
    {
        era = "Legion",
        text = [[Got captured and imprisoned on the demon world Niskara, but was rescued by the Highlord of the Silver Hand. Helped defend the Netherlight Temple and later joined the armies of Azeroth on the Vindicaar to return to the fight on Argus. After the Burning Legion was defeated, Lothraxion didn't join the Alliance, but left to fight demons elsewhere in the cosmos.]],
    },
    {
        era = "Midnight",
        text = [[Was summoned by the Sunwell to defend it against the Devouring Host and joined Alleria and Umbric in the assault on the Voidstorm. The overwhelming presence of the dark energies drove Lothraxion to seek out radical methods to combat the Void, even endangering allies to further his cause. When his zeal threatened to destroy all of Silvermoon, Lothraxion was killed by his allies.]],
    }
}

IMAGOdb.timelines.ALONSUS_FAOL = {
    {era = "Pre-WC1", text = "Led the Church of the Holy Light as archbishop. Took in Uther as an apprentice."},
    {era = "WC2", text = "Founded the Order of the Silver Hand and trained the first paladins personally."},
    {era = "Pre-WC3", text = "Raised funds to help rebuild both Stormwind City and various settlements in the Kingdom of Lordaeron. Built the Stormwind Cathedral together with his new apprentice – Benedictus. Sometimes after, Alonsus died of natural causes."},
    {era = "WC3", text = "Resurrected by Arthas Menethil and forced to fight for the Scourge. Freed from mind control along with the other Forsaken but refused to join their ranks and vanished."},
    {era = "Legion", text = "Led the Conclave, uniting the various priestly orders, in the fight against the Burning Legion. Helped retrieve various powerful weapons for the cause, including Xal'atath. Rallied the paladins for help to defend the Netherlight Temple."},
    {era = "Pre-BfA", text = "Reintroduced Calia Menethil to the world. At King Anduin's behest, he helped to organize the Gathering to bring the Forsaken and living humans closer as a people. During negotiations, Alonsus refused to join the Horde. Helped resurrect Calia as an undead touched by the Light after she was killed in the massacre of the Gathering."},
    {era = "BfA", text = "Assisted the night elven refugees of Teldrassil by helping to provide temporary housing and sent priests to heal the wounded."},
    {era = "SL", text = "Aided the Forsaken in recovering the Undercity from the blight of the Fourth War and was present during the formation  of the Desolate Council."},
    {era = "Pre-MN", text = "Rallied the priests to Silvermoon at Lady Liadrin's behest, in anticipation of Xal'atath's attack on the Sunwell."},
    {era = "Midnight", text = "Oversaw the defense of the Sunwell and provided the exhausted defenders with holy magic. Aided Arator to overcome his doubts about his father and the Light."},
}

IMAGOdb.timelines.TAHU_SAGEWIND = {
    {
        era = "WotLK",
        text = [[Pondered the nature of An'she with Aponi Brightmane in Thunder Bluff. There, the first steps towards the creation of the tauren orders of the Seers and the Sunwalkers were made.]],
    },
    {
        era = "Cata",
        text = [[Officially founded the Seers, the tauren priest order, and became the primary trainer for new recruits.]],
    },
    {
        era = "Legion",
        text = [[Joined the Conclave under Alonsus Faol. Helped the Highlord of the Silver Hand to commune with the spirits of vrykul in order to acquire the artifact weapon Truthguard.]],
    },
    {
        era = "TWW",
        text = [[Aided the Horde on the Isle of Dorn against Xal'atath.]],
    },
    {
        era = "Midnight",
        text = [[Was summoned by the Sunwell and fought on the Isle of Quel'Danas against the Devouring Host.]],
    }
}

IMAGOdb.timelines.APONI_LICHTMAEHNE = {
    {
        era = "WotLK",
        text = [[Fought as a warrior in Northrend against the armies of the Lich King but was gravely wounded and returned to Thunder Bluff. Here, she and Tahu Sagewind laid the foundations to the creations of the first tauren paladin and priestly orders. After being healed, Aponi returned to the war and now fought with An'she's light at her side.]],
    },
    {
        era = "Cata",
        text = [[Officially formed the Sunwalker paladin order and was the primary trainer for new tauren recruits. She helped defend Thunder Bluff from rampaging elementals.]],
    },
    {
        era = "Legion",
        text = [[Joined forces with the Order of the Silver Hand. Unsuccesfully tried to hunt down the demon Balnazzar but was captured in the process and had to be rescued by the Highlord. Helped defend the Netherlight Temple and the Exodar from the Burning Legion.]],
    },
    {
        era = "BfA",
        text = [[With the Order of the Silver Hand splitting up due to faction conflict in the Fourth War, Aponi returned to Thunder Bluff to train new recruits once more.]],
    },
    {
        era = "DF",
        text = [[Joined the Dragonscale Expedition to the Dragon Isles and became friend and supporter to the centaurs of Teerakai.]],
    },
    {
        era = "TWW",
        text = [[Fought against Xal'atath's forces on the Isle of Dorn after hearing of Dalaran's destruction.]],
    },
    {
        era = "Midnight",
        text = [[Was summoned by the Sunwell and defended it against the Voidstorm.]],
    }
}

IMAGOdb.timelines.WAR_CHAPLAIN_SENN = {
    {
        era = "Legion",
        text = [[Fought on Argus against the Burning Legion.]],
    },
    {
        era = "Pre-SL",
        text = [[Helped Turalyon and Alleria on the hunt for Sylvanas Windrunner and very reluctantly worked with the ren'dorei.]],
    },
    {
        era = "Midnight",
        text = [[Was summoned by the Sunwell and fought at Parhelion Plaza. Disapproved of seeing Umbric walk free after he avoided execution while trying to study the Voidstorm. Senn later joined the assault on the Voidspire and became blinded by the Light. She attacked her own allies, Turalyon included, and was killed as a result.]],
    }
}

IMAGOdb.timelines.GENERAL_AMIAS_BELLAMY = {
    {
        era = "Pre-Legion",
        text = [[Joined the Arathi expedition at the behest of the vision of their emperor. Survived the voyage and got stranded in Hallowfall, where she thus fought as a paladin to protect the crystal Beledar and to vanquish any foe encroaching on their new home.]],
    },
    {
        era = "Midnight",
        text = [[Was summoned by the Sunwell and defended it as general of the Vanguard of the Light under Turalyon. Became very irritated with Silvermoon's residents for not lending the Vanguard their unconditional support. Joined in the assault of Xal'atath's Voidspire and got so consumed by light-blindness that she started to attack her own allies. Was killed by Turalyon and the Champions of Azeroth.]],
    }
}

IMAGOdb.timelines.ARATOR = {
    {era = "WC2", text = "Born during the Second War and left behind on Azeroth to be raised by his aunt, Vereesa Windrunner."},
    {era = "WC3", text = "After surviving the Third War, Vereesa brought him to Silvermoon where he was trained by Lor'themar and Liadrin in the ways of the Light."},
    {era = "TBC", text = [[Joined the expedition to Outland to look for his parents. Served under the banner Alliance as a paladin. He was dubbed "Arator the Redeemer".]]},
    {era = "Legion", text = "Joined the Order of the Silver Hand and defended the Netherlight Temple. Fought the Burning Legion on Argus and was finally reunited with his parents."},
    {era = "TWW", text = "Tried to rally Alleria and Sylvanas Windrunner to the imminent defense of Silvermoon."},
    {era = "Midnight", text = "After being summoned by the Sunwell, Arator fought on the front lines against the Void. He organized the reunification of the elven nations of Azeroth to fight a common foe."},
}

IMAGOdb.timelines.NOLAKI = {
    {
        era = "BfA",
        text = [[Trained as a young paladin under the Champion of the Light Ra'wani Kanae. Did not participate in the Battle of Dazar'alor.]],
    },
    {
        era = "DF",
        text = [[Joined the Tyr's Guard as the Exemplar of Sacrifice and took part in reforming the titan keeper.]],
    },
    {
        era = "Midnight",
        text = [[Helped to defend the Sunwell against the Voidstorm.]],
    }
}

IMAGOdb.timelines.VALUNEI = {
    {
        era = "Ancient",
        text = [[Joined the Army of the Light, became Lightforged, and fought on Argus against the Burning Legion. Was trained as a paladin by her best friend and commander, Vindicator Iriska. Valunei was heartbroken when Iriska died.]],
    },
    {
        era = "DF",
        text = [[Joined the Tyr's Guard as the Exemplar of Compassion and took part in reforming the titan keeper. Attended the first Tishamaat holiday of the draenei on Azeroth.]],
    },
    {
        era = "Midnight",
        text = [[Helped to defend the Sunwell against the Voidstorm.]],
    }
}

IMAGOdb.timelines.MARIELLA_WARD = {
    {era = "Legion", text = "Disavowed the Scarlet Onslaught and barely escaped their following death sentence. Joined the Conclave of priests in the Netherlight Temple."},
    {era = "Midnight", text = "Was summoned to Silvermoon to defend the Sunwell and stayed by its holy waters to lend her magic against the encroaching Voidstorm."},
}

IMAGOdb.timelines.HADWIN = {
    {
        era = "BfA",
        text = [[Volunteered to join the Order of Embers under Lucille Waycrest to combat the witches of Drustvar. Started to feel a connection to the Light.]],
    },
    {
        era = "Pre-DF",
        text = [[Briefly joined the Order of the Silver Hand and began training as a paladin.]],
    },
    {
        era = "DF",
        text = [[Joined the Tyr's Guard as the Exemplar of Justice and took part in reforming the titan keeper.]],
    },
    {
        era = "Midnight",
        text = [[Was summoned to Silvermoon and fought to protect the Sunwell.]],
    }
}

IMAGOdb.timelines.TALTHIS = {
    {
        era = "WC3",
        text = [[Survived the fall of Quel'Thalas as a child.]],
    },
    {
        era = "Pre-DF",
        text = [[Sometimes after becoming an adult, he joined the Blood Knights as a paladin and fought the undead in the Ghostlands.]],
    },
    {
        era = "DF",
        text = [[Joined the Tyr's Guard as the Exemplar of Order and took part in reforming the titan keeper.]],
    },
    {
        era = "Midnight",
        text = [[Was summoned to Silvermoon and fought to protect the Sunwell.]],
    }
}

IMAGOdb.timelines.VINDICATOR_BOROS = {
    {
        era = "TBC",
        text = [[Defeated the traitor Sironas, saving the Draenei refugees on the Bloodmyst Isle from falling to demon corruption. Later helped restore the landscape surrounding the Exodar's crash site.]],
    },
    {
        era = "Legion",
        text = [[Pledged the Hand of Argus to the Order of the Silver Hand. Defended the Exodar and the Netherlight Temple from the Burning Legion. Worked with the priests and the demon hunters to rescue fellow paladins. Later he fought the Legion on their homeworld of Argus.]],
    },
    {
        era = "DF",
        text = [[Was present during Tyr's resurrection. Attended the first Tishamaat holiday of the Draenei on Azeroth.]],
    },
    {
        era = "Midnight",
        text = [[Helped to defend the Sunwell against the Voidstorm.]],
    }
}

IMAGOdb.timelines.SUNWALKER_DEZCO = {
    {era = "Pre-MoP", text = "Fought against dragons, the undead, and Alliance forces on several Horde missions across multiple continents alongside his closest allies."},
    {era = "MoP", text = "Led the Dawnchaser tribe to Pandaria, enduring the tragic deaths of his wife and one of his infant sons. He became a staunch defender of the Vale of Eternal Blossoms and ultimately helped overthrow Garrosh Hellscream to stop his desecration of the sacred land."},
    {era = "WoD", text = "Traveled to Draenor in search of peace, temporarily struggling with an addiction to the soothing, warm light of an arakkoan Sun Crystal to cope with his immense grief."},
    {era = "Legion", text = "Joined the ranks of the Silver Hand, aiding the paladin order's defensive efforts from within the Sanctum of Light."},
    {era = "BfA", text = "Departed from the Silver Hand following the fractured loyalties and political turmoil of the Fourth War."},
    {era = "SL", text = "Crossed the veil into the Shadowlands and arrived in Oribos, hoping to find the souls of his departed wife and son to deliver a final message of love."},
    {era = "TWW", text = "Traveled to the shores of Khaz Algar alongside other prominent tauren, proudly overseeing the martial training of his now-grown son, Kor."},
    {era = "Midnight", text = "Acts as a guiding mentor for the Sunwalkers and their allies, teaching a new generation that wielding the Light is about much more than mere violence."},
}

IMAGOdb.timelines.AEONARA_DAWNSHADE = {
    {
        era = "DF",
        text = [[Defended void elf camps in Telogrus Rift against attacks from the Shadowguard.]],
    },
    {
        era = "TWW",
        text = [[Accompanied Alleria Windrunner and the void elves in K'aresh to fight Dimensius at Manaforge Omega.]],
    },
    {
        era = "Midnight",
        text = [[Was summoned by Lady Liadrin to Parhelion Plaza to defend the Sunwell from the Devouring Host. Joined with other members of the Vanguard of the Light to defeat the Voidmarked Reserve.]],
    }
}

IMAGOdb.timelines.TARENAR_SUNSTRIKE = {
    {
        era = "Cata",
        text = [[Traveled with Gidwin on Fiona's caravan to become paladins at Light's Hope Chapel. Rescued Gidwin from being turned into a death knight, and both were admitted into the Argent Crusade.]],
    },
    {
        era = "WoD",
        text = [[Accompanied Fiona and Gidwin to Draenor. Helped out the Alliance army against rampaging botani despite being a blood elf.]],
    },
    {
        era = "Legion",
        text = [[Joined the reformed Knights of the Silver Hand and fought against the Burning Legion on the Broken Shore.]],
    },
    {
        era = "Pre-BfA",
        text = [[Celebrated the Legion's defeat with Gidwin by amassing bar tabs in Silvermoon City. Had to sneak out when the Fourth War erupted.]],
    },
    {
        era = "DF",
        text = [[Went traveling with Fiona once more on the Dragon Isles.]],
    },
    {
        era = "Midnight",
        text = [[Was called by the Sunwell to defend his homeland. Paid back his and Gidwin's drinking debts. Being banned from most inns of Quel'Thalas, the two friends were happy to spend time in the magical Arcantina.]],
    }
}

IMAGOdb.timelines.GRAND_ARTIFICER_ROMUUL = {
    {
        era = "Ancient",
        text = [[Worked as an artificer on Argus and was an apprentice of Exarch Hataaru. Joined Velen's cause and fled his homeland when the Burning Legion took over.]],
    },
    {
        era = "Legion",
        text = [[Repaired the Vindicaar and piloted it through the Twisting Nether, successfully reaching Argus. Helped with teleportation on Argus through Lightforged beacons and upgraded the Vindicaar's defensive and offensive systems. Used the vessel to bypass Antorus' shields and gave the Champions the chance to strike at Sargeras. Evaded the Dark Titan's attacks and steered the Vindicaar back to Azeroth.]],
    },
    {
        era = "BfA",
        text = [[Kept maintaining the Vindicaar when it became the main base of operations for the Army of the Light.]],
    },
    {
        era = "DF",
        text = [[Sent out formal invitations to the Tishamaat celebration in the Exodar. Together with Velen, he announced plans for the construction of a new draenei city on Azeroth.]],
    },
    {
        era = "Midnight",
        text = [[Was called to Silvermoon and fought on the Isle of Quel'Danas as part of the Vanguard of the Light. Helped the ren'dorei stabilize the Singularity Anchor in the Voidstorm, preventing a destructive implosion.]],
    }
}

IMAGOdb.timelines.ALLARI_DIE_SEELENFRESSERIN = {
    {
        era = "TBC",
        text = [[Pledged her loyalty to Illidan Stormrage in Outland. Successfully retrieved the Sargerite Keystone artifact at his behest, but upon returning was captured and imprisoned alongside her fellow Illidari by Maiev Shadowsong.]],
    },
    {
        era = "Legion",
        text = [[After being locked in stasis for 6 years, Allari and the other demon hunters were freed by her captor as a last resort to combat Gul'dan. Helped reassemble the Illidari forces by capturing demon souls to restore the Fel Hammer and helped retrieve the Aldrachi Warblades artifact weapons. Helped to recover Illidan Stormrage's soul and fought at his side for the remainder of the war.]],
    },
    {
        era = "Pre-MN",
        text = [[Took on Leona Darkstrider and other willing ren'dorei as apprentices to teach them the ways of the Illidari.]],
    },
    {
        era = "Midnight",
        text = [[Fought alongside the ren'dorei in the Voidstorm.]],
    }
}

IMAGOdb.timelines.DECIMUS = {
    {
        era = "Midnight",
        text = [[Formed an Alliance with the Void Elves, granting them a safe base of operations and aided them in their endeavours in the Voidstorm. Conveniently took out rival domanaar in the process.

    He engineered the Voidforge - a conduit of dark energy - for his new allies to use as a source of power. It remains unclear if that is it's only purpose.]],
    }
}

IMAGOdb.timelines.KING_MRGL_MRGL = {
    {era = "WotLK", text = "Joined the D.E.H.T.A. expedition group in the Borean Tundra and began his research into murlocs using his unorthodox disguise. The murlocs chose him to be their king in a time of strife; King Mrgl-Mrgl defended the helpless tribe and cemented his place as king."},
    {era = "Legion", text = "Alongside the young murloc hero Murky, King Mrgl-Mrgl attempted to turn the Swamprock murlocs of Highmountain from their violent ways. With the king's help, Murky was able to establish himself as the more peaceful leader of his new “Murkloc” tribe."},
    {era = "BfA", text = "King Mrgl-Mrgl can be found in Nazjatar as the proprietor of Mrgl's Bar and Grill, an establishment catering exclusively to the murlocs of the area."},
    {era = "Midnight", text = "After defending the murlocs of Zul'Aman from an attacking tribe of deep sea murlocs, King Mrgl-Mrgl was declared the Loa of Murlocs. His worshippers kept him trapped in their swamp-bound temple as their god and savior."},
}

IMAGOdb.timelines.MONTE_GAZLOWE = {
    {
        era = "Pre-WC3",
        text = [[Born and raised in Undermine, Gazlowe left the city disillusioned and vowing to never return. He joined the Steamwheedle Cartel alongside his old friend Marin Noggenfogger.]],
    },
    {
        era = "WC3",
        text = [[Was contracted by Warchief Thrall to oversee the construction of Orgrimmar.]],
    },
    {
        era = "Classic",
        text = [[Established the port town of Ratchet in the Barrens with the money he earned when Orgrimmar was completed. Grateful to Thrall, he continued to aid the orcs of Durotar, but officially stayed a neutral figure and let both Horde and Alliance into his town. Kept the coast of Horde territory free of pirates.]],
    },
    {
        era = "Pre-Cata",
        text = [[Was paid by Thrall again to rebuild Orgrimmar after parts of it were damaged by rampaging elementals. He was later approached by Baine Bloodhoof, who pleaded for help to liberate Thunder Bluff. Gazlowe sent three zeppelins, various mercenaries and a massive amount of explosives to his tauren friends and accepted only a moderate amount of payment.]],
    },
    {
        era = "Cata",
        text = [[Not wanting to lose profit in the faction war, Gazlowe stayed officially neutral. Yet when an Alliance admiral tried to block trade routes from Orgrimmar to Ratchet, Gazlowe quickly had his cargo and ships destroyed.]],
    },
    {
        era = "WoD",
        text = [[Got hired by Warchief Vol'jin to construct the Horde's garrison in Frostfire Ridge, as well as various outposts and a shipyard. Supplied the Horde with machinery in Talador and – helped by Thaelin Darkanvil - was able to operate an Iron Star to help liberate Shattrath City from the Iron Horde. Later he constructed a siege machine that destroyed the Tanaan Gate.]],
    },
    {
        era = "BfA",
        text = [[Helped Prince Erazmin and the Alliance to liberate Mechagon from King Mechagon's cruel reign. Joined in Saurfang's rebellion against Sylvanas Windrunner. After Gallywix fled, Gazlowe officially joined the Horde as Bilgewater's new Trade Prince. He was made part of the Horde Council by Thrall, the two having become close friends after all these years.]],
    },
    {
        era = "Pre-SL",
        text = [[Tried to manage the Horde's internal problems after the Fourth War, but had to concede that the hunt for Sylvanas Windrunner took precedence.]],
    },
    {
        era = "Pre-TWW",
        text = [[Made a deal with Marin Noggenfogger to align their cartels together and enforced better working conditions for Steamwheedle's goblins.]],
    },
    {
        era = "TWW",
        text = [[Aided the Hallowfall expedition in Azj-Kahet and noticed Venture Company goblins snooping around. Worked with Renzik “the Shiv” and Orweyna to uncover Gallywix's deal with Xal'atath and consequently liberated Undermine of Gallywix's tyranny. Alongside Mathias Shaw, he scattered Renzik's ashes after he had sacrificed himself for Gazlowe. Became part of Undermine's new ruling council.]],
    },
    {
        era = "Midnight",
        text = [[After Orweyna helped him in Undermine, Gazlowe promised to come to Harandar and experience her culture. He enjoyed learning about the Hara'ti.]],
    }
}

IMAGOdb.timelines.VALEERA_SANGUINAR = {
    {
        era = "Pre-WC3",
        text = [[Orphaned as a child when her entire family was murdered by bandits. Survived as a thief on the streets.]],
    },
    {
        era = "Pre-WotLK",
        text = [[Caught stealing in Horde territory and was sold to Rehgar Earthfury as a gladiator slave and was forced to fight alongside Varian Wrynn and Broll Bearmantle. The three became friends and escaped together, ultimately helping Varian reclaim the Throne of Stormwind.
Valeera briefly struggled with addiction to fel magic and got possessed by the demon Kathra'natir.]],
    },
    {
        era = "WotLK",
        text = [[Stayed in Stormwind City as royal bodyguard to repay King Varian for saving her life. Valeera and Broll joined Varian in the Battle for the Undercity.]],
    },
    {
        era = "Legion",
        text = [[Joined the Uncrowned and helped recover the Fangs of the Devourer. Managed to decipher Amber Kearnen's last message and thus uncovered that Stormwind's SI:7 had been infiltrated by the Burning Legion.]],
    },
    {
        era = "Pre-BfA",
        text = [[Now serving Anduin Wrynn she delivered a message to Baine Bloodhoof, initiating negotiations to hold the Gathering.]],
    },
    {
        era = "BfA",
        text = [[Delivered various messages between the warring Horde and Alliance, serving as a neutral party to both and was present during the formation of the Horde council.]],
    },
    {
        era = "Pre-SL",
        text = [[Unsuccessfully tried to find traces of Sylvanas Windrunner. Refused to take part in any more faction business on either side.]],
    },
    {
        era = "TWW",
        text = [[Survived Dalaran's destruction and settled with the other Uncrowned in Dornogal for a while.]],
    },
    {
        era = "Midnight",
        text = [[Helped kill the traitorous Lord Antenorian. At both Anduin and Lor'themar's behest she worked alongside the Reliquary and the Champions of Azeroth to thwart various threats to Silvermoon.]],
    }
}

IMAGOdb.timelines.FREYA = {
    {
        era = "Ancient",
        text = [[Helped to vanquish the Black Empire by defeating Therazane. She repopulated Azeroth with plantlife and experimented with life magic in Un'goro Crater, Sholazar Basin and the Vale of Eternal Blossom. Titan records say she created the Emerald Dream and planted the world tree G'hanir in it, and from the animals of her making evolved the Wild Gods and the loa. Helped infuse the Dragon Aspects.]],
    },
    {
        era = "Pre-WotLK",
        text = [[Was defeated by the treacherous keeper Loken and was driven mad by the Old God Yogg-Saron in the Halls of Ulduar.]],
    },
    {
        era = "WotLK",
        text = [[Kept safeguarding Sholazar Basin through her avatar.

        Was freed of corruption by the Champions of Azeroth and helped defeat Yogg-Saron.]],
    },
    {
        era = "Midnight",
        text = [[Appeared as a memory of the ancestors of the haranir. They remember her as a giant to be feared.]],
    }
}

IMAGOdb.timelines.EITRIGG = {
    {era = "WC1", text = "Fought for the Old Horde against the Draenei and later, in Azeroth against the Humans of Stormwind."},
    {era = "WC2", text = "Maintained his position as one of the new Warchief Orgrim's most trusted lieutenants. After the battle at Blackrock Mountain, his faith in the Horde crumbled. Eitrigg deserted and lived as a hermit in Lordaeron, hidden from the humans."},
    {era = "Pre-WC3", text = "Fought Tirion Fordring. Despite having the opportunity to kill him, Eitrigg saved Tirion's life, creating a debt of honor that the paladin would repay by preventing the orc's execution in Stratholme. The orc joined Thrall's new Horde afterwards but continued to view Tirion as his brother."},
    {era = "Classic", text = "Served as Honor Guard to the Warchief and was tasked with overseeing new recruits."},
    {era = "WotLK", text = "Participated in the War against the Lich King, traveling to Northrend to support the Horde and the Argent Crusade, attempting to uncover the role of Saronite in the Scourge."},
    {era = "Cata", text = "Continued to be the Warchief's advisor. He went to the Burning Steppes with his son Ariok to stop the Dark Horde's invasion of the Redridge Mountains."},
    {era = "MoP", text = "Stood up against Garrosh and was seriously wounded."},
    {era = "Legion", text = "He became champion of the Valarjar, aiding the Battlelord in the Trial of Rage."},
    {era = "BfA", text = "Helped Merchant Prince Gallywix establish a Horde base in Drustvar. At some point he traveled with the Champion to Alternate Draenor to recruit the Mag'har orcs. Later, Participated in the Battle for Stromgarde againts Alliance leaders."},
    {era = "DF", text = "Now chieftain of the Blackrock Clan, was instrumental in the revival of the Kosh'harg, an annual festival where orcs from all clans gathered."},
    {era = "TWW", text = "Eitrigg, acting as an advisor to Geya'rah, leader of the Mag'har, played an active role in uncovering the true enemy of the Arathi Highlands: The Red Dawn, defeating their leader, Marran Trollbane."},
    {era = "Pre-MN", text = "He was eventually named a member of the Sons of Lothar, and is called upon when they met to discuss the threats facing Azeroth."}
}

IMAGOdb.timelines.KURDRAN_WILDHAMMER = {
    {era = "WC2", text = "Battled and helped drive back the Old Horde. Later followed Turalyon's expedition to Outland to deal with the orcish threat once and for all. Chose to stay behind to ensure the Dark Portal was properly closed to safeguard Azeroth."},
    {era = "TBC", text = "Held a stronghold in Shadowmoon Valley and helped Alliance adventurers against Illidan Stormrage and the Burning Legion."},
    {era = "Pre-Cata", text = "Briefly represented the Wildhammer clan in the Council of Three Hammers in Ironforge, but conceded his position to Falstad Wildhammer instead."},
    {era = "Cata", text = "Helped to unite the various Wildhammer clans and welcomed them into the Alliance. His faithful gryphon mount Sky'ree was lost in a fire but Kurdran could save her last egg."},
    {era = "Pre-TWW", text = "Bonded with the stormrooks in Valdrakken and trained the Champion to be an elemental gryphon rider."},
    {era = "TWW", text = "Joined his friends Turalyon and Danath Trollbane on the Isle of Dorn. Alongside his now fully-grown new mount Sky'reen, Kurdran began training new Earthen gryphon riders."},
    {era = "Midnight", text = "Helped Arator learn the history of his father, Turalyon, and his part in the events of the Second War. Introduced heroes to the Arcantina, a home away from home for adventurers from all over Azeroth."}
}

IMAGOdb.timelines.LIRATH_WINDRUNNER = {
    {
        era = "Pre-WC2",
        text = [[Appointed as Royal Musician by Prince Kael'thas Sunstrider. Began training as a ranger with his sister Vereesa after the death of their parents.]],
    },
    {
        era = "WC2",
        text = [[Killed by the Horde during the Burning of Quel'thalas. His body was recovered by Sylvanas and buried alongside their parents in Eversong Woods.]],
    },
    {
        era = "Pre-BfA",
        text = [[Sylvanas considered raising Lirath into undeath but ultimately decided against it.]],
    },
    {
        era = "Midnight",
        text = [[Appeared as a spirit in Windrunner Spire, guiding adventurers to collect relics of the Windrunner family. He used these relics to summon and exorcise the Restless Heart, allowing the spirits of the spire to find peace.]],
    }
}

IMAGOdb.timelines.LORD_MAXWELL_TYROSUS = {
    {
        era = "Pre-Classic",
        text = [[Joined Alexandros Mograine in his mission to liberate Lordaeron from the Scourge. After Mograine's death, Tyrosus strongly opposed the fanatical ideas of the Scarlet Crusade and joined the newly founded Argent Dawn and quickly became the order's leader. He later aided Darion Mograine to save his father's soul.]],
    },
    {
        era = "Classic",
        text = [[Coordinated the troops of the Argent Dawn from inside Light's Hope Chapel and held the undead at bay in the Plaguelands. Managed to help slay Baron Rivendare in Stratholme and liberated the once lively city from the Scourge.]],
    },
    {
        era = "WotLK",
        text = [[Defended Light's Hope Chapel from Darion Mograine and his death knights together with his friend Tirion Fordring. Witnessed the liberation of the death knights from the Lich King's mind control. Merged the Argent Dawn and Tirion's Knights of the Silver Hand into a new joined order – the Argent Crusade.]],
    },
    {
        era = "Cata",
        text = [[Continued to combat the Scourge and the Cult of the Damned in the Plaguelands.]],
    },
    {
        era = "Legion",
        text = [[Lost many comrades when the Burning Legion decimated the Argent Crusade – including Tirion Fording. Secured the Ashbringer for the Silver Hand and made the Champion of the Light its new leader. Later helped defend the Exodar and the Netherlight Temple from the Burning Legion.]],
    },
    {
        era = "Pre-MN",
        text = [[Proudly promoted his protegé Arator Windrunner with a medal after the latter defeated the demon Sarothar and stopped another demon invasion.]],
    },
    {
        era = "Midnight",
        text = [[Tyrosus paradoxically was not summoned to Quel'Thalas. He fought the emboldened Scourge in the Plaguelands and, with so few paladins now left in Light's Hope Chapel, recruited Darion Mograine's Ebon Blade to hold the lines at his side.]],
    }
}

IMAGOdb.timelines.MAIEV_SHADOWSONG = {
    {
        era = "Ancient",
        text = [[Fought in the War of the Ancients as a priestess of Elune. After the Legion was defeated, Maiev volunteered to watch over Illidan Stormrage after he was deemed a betrayer to his kind.]],
    },
    {
        era = "WC3",
        text = [[After 10.000 years, Tyrande Whisperwind freed Illidan to combat the Burning Legion once again against Maiev's harsh protests. She later recklessly hunted him down and fought with the Betrayer on the Broken Isles and the Eastern Kingdoms, where she left Tyrande to die in order to pursue her target faster. Eventually followed and almost captured Illidan on Outland.]],
    },
    {
        era = "Pre-TBC",
        text = [[Stayed on Outland and entered an alliance with Akama to take down Illidan at the Black Temple. Trained new recruits and led strike teams against Illidan's forces. When Akama's soul was bound by Illidan to obey him, the broken draenei led Maiev into an ambush. With her entire army killed, a guilt-ridden Maiev was imprisoned by Illidan.]],
    },
    {
        era = "TBC",
        text = [[Was freed by Akama and immediately left to confront Illidan on top of the Black Temple. Together with a band of adventurers, she managed to finally slay her former prisoner but realized in horror that she felt hollow and without a sense of purpose or self without him. Took Illidan's body back to the Vault of the Wardens and also imprisoned his demon hunter followers.]],
    },
    {
        era = "Pre-Cata",
        text = [[Was permitted by Tyrande to return to Darnassus and reconnect with her brother Jarod. Was furious when she learned how night elven society had progressed under Malfurion and Tyrande's leadership. She began to murder the Highborne, who she felt should never have been let back into Darnassus, and even almost killed Malfurion himself. Was stopped by Jarod and driven off.]],
    },
    {
        era = "Pre-Legion",
        text = [[Reluctantly joined forces with Khadgar to stop Gul'dan from commencing the third invasion of the Burning Legion. They failed and had to flee for their lives.]],
    },
    {
        era = "Legion",
        text = [[Was forced to release the demon hunters when Gul'dan and the Legion assaulted the Vault of the Wardens. When Illidan's body was stolen, Maiev pursued the attackers but was overwhelmed and imprisoned in Black Rook Hold. Was freed by Jarod and later fought on the Broken Shore. Was forced to fight alongside a revived Illidan and only barely managed to not kill him again.]],
    },
    {
        era = "BfA",
        text = [[After the Burning of Teldrassil, Maiev rejoined her people. Commanded the night elven forces during the Battle of Darkshore and helped Tyrande become the Night Warrior.]],
    },
    {
        era = "Pre-SL",
        text = [[Convinced Tyrande to not execute the traitorous Sira Moonwarden because she pitied her fallen comrade.]],
    },
    {
        era = "SL",
        text = [[Witnessed Sylvanas' trial and had to acknowledge Tyrande as a worthy leader for the night elves. Realized that she, too, had a penance to make after what she did before the Cataclysm.]],
    },
    {
        era = "DF",
        text = [[Trained new recruits for the Sentinels and Wardens and stopped a resurgence of demons in Felwood. Fought in the Emerald Dream against Fyrakk's forces.]],
    },
    {
        era = "Midnight",
        text = [[Strongly opposed helping the blood elves retake the Sunwell but joined the night elven forces on the Isle of Quel'Danas nonetheless when Shandris Feathermoon ordered her to.]],
    }
}

IMAGOdb.timelines.BRANN_BRONZEBEARD = {
    {
        era = "WC2",
        text = [[Fought for the Alliance during the Siege of Ironforge and stayed with the army until the final battle of the Second War against the Old Horde.]],
    },
    {
        era = "Pre-WC3",
        text = [[Founded the Explorers' League with the help of his brother, King Magni. Mapped out the entire Eastern Kingdoms and, after its discovery, Kalimdor as well.]],
    },
    {
        era = "Classic",
        text = [[Investigated the rumors about the Old God C'Thun and found a tunnel leading to the ancient kingdom of Ahn'Qiraj.]],
    },
    {
        era = "WotLK",
        text = [[Uncovered the true fate of his brother, Muradin, and helped bring him home to Ironforge. Investigated the Halls of Ulduar, finding more information about the Titans and the Old Gods. Uncovered Yogg-Saron's corrupting influence over Ulduar's keepers and rallied an army to defeat him.]],
    },
    {
        era = "Cata",
        text = [[Put an end to Commander Schnottz's operations in Uldum and later discovered and explored the Halls of Origination.]],
    },
    {
        era = "MoP",
        text = [[Established a museum of archaeology at the Seat of Knowledge. Aided the Alliance war effort by researching the sha.]],
    },
    {
        era = "Legion",
        text = [[Was reunited with his awakened brother, Magni, and together they found out that Magni had been made the Speaker of Azeroth. Helped Magni and the High Priest discover the Primordial Observatory and gain the seekers' support. Brann later uncovered various archaeological artifacts on the Broken Isles.]],
    },
    {
        era = "BfA",
        text = [[Unsuccessfully tried to forge an alliance with the blood trolls of Nazmir. Ventured through the Underrot and discovered the entrance to Uldir alongside Alliance adventurers. Helped Magni acquire MOTHER's help and brought her to the Chamber of Heart. Fought N'Zoth's minions in Uldum.]],
    },
    {
        era = "Pre-DF",
        text = [[Revisited Northrend with Magni and Muradin to note changes in the land and check on old allies, like the Frostborn. Most of all, though, the brothers were happy to spend time together in peace again.]],
    },
    {
        era = "TWW",
        text = [[Brought his nephew, Dagran, to Dalaran to check on Magni and survived the city's subsequent destruction. Established the Delver's Headquarters in Dornogal and explored Khaz Algar's hidden caves and ruins alongside the Champion. Helped kill Xal'atath's lieutenant, Zekvir, recovered his priceless hat from the Underpin, and defeated the bounty hunter Ky'veza.]],
    },
    {
        era = "Midnight",
        text = [[Assisted the Reliquary in Silvermoon City as an archaeology expert.]],
    }
}

IMAGOdb.timelines.SORIDORMI = {
    {
        era = "Ancient",
        text = [[Fought the Primalists during the War of the Scaleborn. Infused the Dragon Soul with her own and Nozdormu's essence and represented the bronze dragonflight during the War of the Ancients.]],
    },
    {
        era = "TBC",
        text = [[Commanded the Scale of the Sands and defended the true timeline of the Battle of Mount Hyjal from the infinite dragonflight.]],
    },
    {
        era = "MoP",
        text = [[The Vision of Time showed Soridormi's death, yet her future killer remained unknown.]],
    },
    {
        era = "DF",
        text = [[Led the Timewalkers on the Dragon Isles to preserve the future. Ventured into the Primalist Tomorrow to stop the Infinites, and managed to neutralize various Time Rifts. Witnessed Amirdrassil's awakening.]],
    },
    {
        era = "TWW",
        text = [[Opened portals to re-experience the avoided future of N'Zoth's victory. Studied the effects of the Black Blood, once destined to be used by N'Zoth, but now wielded by Xal'atath.]],
    },
    {
        era = "Midnight",
        text = [[Stayed at the Wayfarer's Rest Inn in Silvermoon City and aided confused Champions in aligning their timelines.]],
    }
}

IMAGOdb.timelines.QUEEN_TALANJI = {
    {
        era = "Cata",
        text = [[Grew up as the princess of Zandalar with her friend Apari.]],
    },
    {
        era = "Pre-BfA",
        text = [[Noticed the blood troll uprising in Nazmir and warned her father. When the king dismissed the matter, Talanji contacted the Horde for aid. En route to Orgrimmar, she was intercepted by the Alliance and sent to prison in Stormwind City.]],
    },
    {
        era = "BfA",
        text = [[Was rescued by the Horde and persuaded her father to establish an embassy for the new allies in Dazar'alor. She put an end to the blood trolls' schemes in Uldir and helped kill the artificial Old God G'huun. Fought at the forefront in the Battle of Dazar'alor but had to witness her father being slain. Was forced into a pact with Bwonsamdi, the Loa of Death. Joined the Horde as queen.]],
    },
    {
        era = "Pre-SL",
        text = [[Survived an assassination attempt during a Horde meeting. Led the efforts to rescue Bwonsamdi from the Widow's Bite and Nathanos Blightcaller and managed to pressure the loa into revoking the pact her father made with him, working together as equals instead. Had to kill her former friend Apari when she revealed herself a traitor. Formed a friendship with the young Darkspear troll Zekhan.]],
    },
    {
        era = "Pre-TWW",
        text = [[Hosted Lor'themar and Thalyssra in Zandalar and organized a romantic tour of her kingdom for the two elves.]],
    },
    {
        era = "Midnight",
        text = [[Witnessed Elder Hagar's revelation about the trolls' and elves' shared history.]],
    }
}

IMAGOdb.timelines.ROKHAN = {
    {
        era = "WC3",
        text = [[Joined Thrall's New Horde and fled to Kalimdor alongside his tribe. He later led the raid against Daelin Proudmoore at Theramore after the Kul Tirans had attacked Orgrimmar without provocation. Battled Daelin's elite forces while Rexxar slew the Lord Admiral.]],
    },
    {
        era = "WotLK",
        text = [[Was stationed in Dragonblight and kept the undead frost wyrms from advancing on the main Horde army at the Wrathgate.]],
    },
    {
        era = "Pre-Cata",
        text = [[Safeguarded his trapped people during the War Against the Nightmare.]],
    },
    {
        era = "WoD",
        text = [[Helped stop the Iron Horde's assault in the Blasted Lands and accompanied Azeroth's forces to the other Draenor. Served as the Horde Commander's right-hand man, overseeing and handling various threats on Draenor.]],
    },
    {
        era = "Legion",
        text = [[Acted as unofficial representative of the Darkspear trolls after Vol'jin's death on the Broken Shore.]],
    },
    {
        era = "BfA",
        text = [[Freed Princess Talanji from Alliance captivity and later joined her in her expedition to Nazmir. Formed a friendship with her and helped her stop the blood troll threat. Learned from Vol'jin's spirit that the Shadowlands were in turmoil. Fought in the Battle of Dazar'alor and sided with Saurfang in his rebellion against Sylvanas. Was elected chieftain of the Darkspear and joined the Horde Council.]],
    },
    {
        era = "Pre-SL",
        text = [[Joined Horde forces on Zandalar to come to Queen Talanji's aid against the Widow's Bite.]],
    },
    {
        era = "SL",
        text = [[Took up temporary leadership of Orgrimmar when Thrall and Baine Bloodhoof were abducted and trapped in the Shadowlands.]],
    },
    {
        era = "DF",
        text = [[Joined his old friends Baine Bloodhoof, Chen Stormstout, and Rexxar in the Ohn'ahran Plains and helped restore Toghusuq Village while all four reminisced and mourned the fallen Bovan Windtotem. Later helped battle Fyrakk in the Emerald Dream. On the Echo Isles, he stopped worshipers of Mueh'zala and established Bwonsamdi, Lukou, Kevo ya Siti, and Jani as the Darkspear's primary loa.]],
    },
    {
        era = "Midnight",
        text = [[Witnessed Elder Hagar's revelation about the trolls' and elves' shared history.]],
    }
}

IMAGOdb.timelines.ZEKHAN = {
    {
        era = "Pre-BfA",
        text = [[Grew up on the Echo Isles and was inspired by the tales his father Hekazi used to tell him about the great heroes of the Horde, such as Varok Saurfang.]],
    },
    {
        era = "BfA",
        text = [[Fought for the Horde during the Siege of Lordaeron. After Saurfang escaped Alliance captivity, Zekhan joined him and became his closest confidant in his revolution. Zekhan trusted the Champion with details of their plans, hopeful that they would not remain loyal to Sylvanas. After witnessing Saurfang's sacrifice at the gates of Orgrimmar, he vowed to continue his legacy.]],
    },
    {
        era = "Pre-SL",
        text = [[Was guided by Bwonsamdi to save Queen Talanji's life. Was made ambassador of the Horde and was sent to Zandalar to aid the queen against the Widow's Bite. Risked his life to save children being used as living sacrifices, and saw a vision of the Maw. Remained close friends with Talanji after the Widow's Bite was defeated. Later, he traveled Kalimdor with Rexxar to give a report on Horde holdouts.]],
    },
    {
        era = "Midnight",
        text = [[Accompanied Rokhan to a meeting of the elf and troll leaders in Harandar. Was optimistic for the future after hearing Hagar's revelation of shared ancestry, but was met with skepticism from both Rokhan and Talanji.]],
    }
}

IMAGOdb.timelines.HIGH_INQUISITOR_WHITEMANE = {
    {
        era = "Pre-Classic",
        text = [[Witnessed her family succumb to the plague of undeath in Lordaeron, and had to destroy them when they arose as members of the Scourge. Joined the Scarlet Crusade to end the undead threat.]],
    },
    {
        era = "Classic",
        text = [[Ascended to the rank of High Inquisitor. Survived attempts to defeat the leadership of the Scarlet Crusade by groups of adventurers raiding the Scarlet Monastery, and went into hiding.]],
    },
    {
        era = "MoP",
        text = [[Returned to lead the forces of the Scarlet Crusade. Finally slain by Lillian Voss and a group of adventurers.]],
    },
    {
        era = "Legion",
        text = [[Resurrected as a Death Knight by the Knights of the Ebon Blade to serve as the third of the Four Horsemen. Aided in fighting off the Burning Legion alongside the other horsemen on the Broken Shore.]],
    },
    {
        era = "BfA",
        text = [[Gathered fallen champions of the Horde and Alliance to be raised as the next generation of Death Knights.]],
    },
    {
        era = "SL",
        text = [[Acted as the Ebon Blade's emissary to the Alliance. Aided with the assault on the Sanctum of Domination. Returned to Azeroth to assist the Ebon Blade in holding back the Scourge.]],
    },
    {
        era = "Midnight",
        text = [[Defended Light's Hope Chapel from the Scourge along with the rest of the Four Horsemen.]],
    }
}

IMAGOdb.timelines.DARION_MOGRAINE = {
    {era = "WC3", text = "Joined the Silver Hand and assisted with fighting the Scourge."},
    {era = "Classic", text = "Enlisted the aid of the Argent Dawn to attack Naxxramas, reclaiming the Ashbringer from his undead Father after defeating the Four Horsemen. Sacrificed himself to save the Argent Dawn, and was resurrected as a Death Knight."},
    {era = "WotLK", text = "Made the ruler of the Death Knights of Acherus. Broke free from the Lich King's control and started the Ebon Blade. Assisted in the war against the scourge in Icecrown and Zul'Drak. Helped to defeat the Lich King at Icecrown Citadel. Found that Bolvar Fordragon has been crowned the new Lich King."},
    {era = "WoD", text = "Journeyed to alternate Draenor to attempt to discover Ner'zhul's secrets in an attempt to save Bolvar."},
    {era = "Legion", text = "Aided Bolvar and the chosen Death Knight in resurrecting the new Four Horsemen. Was fatally wounded when attempting to resurrect Tirion Fordring, but was raised by Bolvar to lead the horsemen."},
    {era = "BfA", text = "Gathered fallen champions of the Horde and Alliance to be raised as the next generation of Death Knights. Personally sent the new generation to their faction's capitals."},
    {era = "SL", text = "Stepped down as leader of the Ebon Blade, relinquishing title to Bolvar following the destruction of the Helm of Domination. Summoned the champions of Azeroth to meet with Bolvar and adventure into the Maw. Helped attack the Sanctum of Domination. Returned to Azeroth following the Jailer's defeat to hold back the Scourge."},
    {era = "Midnight", text = "Defended Light's Hope Chapel from the Scourge along with the rest of the Four Horsemen."},
}

IMAGOdb.timelines.THASSARIAN = {
    {era = "WC3", text = "Thassarian enlisted in the army and followed Prince Arthas to Northrend to hunt Mal'Ganis. There, he was killed by Falric and then converted into a death knight by Arthas.  As a soldier of the Scourge, he was forced to attack Lordaeron and Quel'Thalas."},
    {era = "Pre-WotLK", text = "Thassarian was sent to Acherus to attack Light's Hope Chapel. However, the death knights were defeated, with Thassarian himself being convinced by his father's ghost to stand down. No longer under the control of the Lich King, Thassarian then traveled to Stormwind and met with King Varian Wrynn who accepted the Knights of the Ebon Blade as allies."},
    {era = "WotLK", text = "Thassarian joined the Alliance in Northrend to fight against the Scourge and rescue his sister. He later aided the war effort in Icecrown by using his knowledge of the Scourge to weaken their defenses and help open a path to the Citadel. Fighting alongside the Knights of the Ebon Blade, he confronted the Lich King but was forced to withdraw."},
    {era = "WoD", text = "Journeyed to alternate Draenor to attempt to discover Ner'zhul's secrets in an attempt to save Bolvar."},
    {era = "Cata", text = "Thassarian led Alliance forces at Andorhal against the Forsaken. He later fought in Mount Hyjal against Ragnaros' forces."},
    {era = "Legion", text = "Thassarian aided the new Deathlord in raising the new Four Horsemen. Later, he fought at the Battle for the Exodar.  Rescued Koltira Deathweaver from the Undercity. "},
    {era = "SL", text = "Followed Bolvar Fordragon into the Shadowlands to stop Sylvanas Windrunner."},
    {era = "Midnight", text = "Helped defend Light's Hope Chapel in the Eastern Plaguelands."},
}

IMAGOdb.timelines.NAZGRIM = {
    {
        era = "Pre-WC3",
        text = [[Was captured by the Alliance and held prisoner in the interment camps. After being freed by the Horde, he joined Thrall's army.]],
    },
    {
        era = "WotLK",
        text = [[Stationed as sergeant at Conquest Hold in the Grizzly Hills.]],
    },
    {
        era = "Cata",
        text = [[Was promoted to Legionnaire and led the Horde's campaign in Vashj'ir.]],
    },
    {
        era = "MoP",
        text = [[Was promoted to general and ordered to take control of newly discovered lands of Pandaria. Recruited indigenous hozen and clashed with Admiral Taylor's forces, resulting in the destruction of Serpent's Heart and the unleashing of the sha. Was later summoned by Garrosh and was tasked to defend main gates of Orgrimmar from the Horde rebels and Alliance forces and eventually died there.]],
    },
    {
        era = "Legion",
        text = [[Was raised by the new Deathlord and Thassarian as the first member of the new Four Horsemen.]],
    },
    {
        era = "SL",
        text = [[Became the Ebon Blade's emissary to the Horde. Accompanied Bolvar Fordragon during the attack on the Sanctum of Domination.]],
    },
    {
        era = "DF",
        text = [[Attended the first Kosh'arg on Azeroth as part of Warsong clan.]],
    },
    {
        era = "Midnight",
        text = [[Helped defend Light's Hope Chapel.]],
    }
}

IMAGOdb.timelines.KOLTIRA_DEATHWEAVER = {
    {
        era = "WC3",
        text = [[Fell to Thassarian's blade in the defense of Silvermoon. Was resurrected as a Death Knight and forced to fight for the Scourge.]],
    },
    {
        era = "WotLK",
        text = [[Freed from the Lich King's mind control and vowed to defend Azeroth with the new-formed Ebon Blade. Joined the Horde and fought in Northrend, lending his expertise as a Death Knight to breach the Lich King's fortress of Icecrown.]],
    },
    {
        era = "Cata",
        text = [[Imprisoned by Sylvanas Windrunner in the Undercity due to seeking a truce between Horde and Alliance during the battle of Andorhal.]],
    },
    {
        era = "Legion",
        text = [[Freed from captivity by Thassarian and joined the fight against the Burning Legion afterwards.]],
    },
    {
        era = "SL",
        text = [[Followed Bolvar Fordragon into the Shadowlands to fight Sylvanas.]],
    },
    {
        era = "Midnight",
        text = [[Helped defend Light's Hope Chapel.]],
    }
}

IMAGOdb.timelines.THORAS_TROLLBANE = {
    {
        era = "Pre-WC2",
        text = [[Led the armies of Stromgarde into battle in several wars with the kingdom of Alterac.]],
    },
    {
        era = "WC2",
        text = [[Joined the Alliance of Lordaeron as a founding member, defending the Northlands from Horde invasion through the overtaken Dwarven realm of Khaz Modan. Later, he and his armies helped break the siege of Lordaeron by stopping Horde forces from moving through the Alterac Mountains. After the war, he was murdered by his son Galen.]],
    },
    {
        era = "Legion",
        text = [[Raised into undeath by the Knights of the Ebon Blade as a member of the Four Horsemen. Joined the assault on the Scarlet Monastery and the battle against demons at the Broken Shore.]],
    },
    {
        era = "BfA",
        text = [[Worked to acquire fallen Horde and Alliance heroes and raised them as a new generation of death knights.]],
    },
    {
        era = "SL",
        text = [[Accompanied Bolvar Fordragon and a cadre of adventurers to the attack on the Sanctum of Domination.]],
    },
    {
        era = "Midnight",
        text = [[Aided in the defense of Light's Hope Chapel while the Argent Crusade was occupied with the defense of the Sunwell.]],
    }
}

IMAGOdb.timelines.NEXUSKOENIG_SALHADAAR = {
    {
        era = "Ancient",
        text = [[Ruled as High Priest over the people of K'aresh and chose to ignore Locus Walker's warnings of the encroaching Void, ultimately blaming him for what would happen next. When Dimensius came, Salhadaar lost his physical body and K'aresh was destroyed. He fled with his people into the Twisting Nether.]],
    },
    {
        era = "TBC",
        text = [[Under the pretense of defeating Dimensius, Salhadaar founded the Shadowguard and sought out fragments of the void lord. He turned some of his own Ethereals into void being before being killed by the Champions of Azeroth and rebelling Ethereals.]],
    },
    {
        era = "TWW",
        text = [[Remade by the Void, Salhadaar commanded the Shadowguard forces on K'aresh. Almost succeeded in bringing back Dimensius before being defeated once again. He was captured by Xal'atath.]],
    },
    {
        era = "Pre-MN",
        text = [[Agreed to follow Xal'atath's orders under threat of death.]],
    },
    {
        era = "Midnight",
        text = [[Succeeded in corrupting the Naaru T'era to the Void as Xal'atath had ordered. Instead of rewarding him, Xal'atath instead infused him with excessive void energy and a fully mad and delirious Salhadaar was made to fight the Vanguard of the Light at the Voidspire. For the final time, Salhadaar was killed and embraced the end in relief.]],
    }
}

IMAGOdb.timelines.L_URA = {
    {
        era = "Ancient",
        text = [[Stayed behind on Argus to ensure Velen's escape from the Burning Legion. Was defeated and imprisoned by Kil'jaeden.]],
    },
    {
        era = "Legion",
        text = [[Now a dark naaru, L'ura's power drew the attention of the Shadowguard ethereals who wanted to use its power as a weapon. Eventually Alleria Windrunner and Locus Walker killed the ethereals and subdued L'ura, and Alleria absorbed it's powers.]],
    },
    {
        era = "Midnight",
        text = [[Was manifested by Alleria to kill another dark naaru - T'era. At the Voidspire, Xal'atath triumphed over Alleria and cut L'ura from the ranger, separating the two beings once more. Xal'atath then used L'ura to corrupt the Sunwell and the mad naaru was killed by the Champions of Azeroth in Quel'Thalas.]],
    }
}

IMAGOdb.timelines.MOR_DUUN = {
    {
        era = "TWW",
        text = [[Formed the Twilight's Blade with the remnants of the Twilight's Hammer, pledging himself to Xal'atath's service.]],
    },
    {
        era = "Pre-MN",
        text = [[Ordered the Twilight's Blade to recruit members in Stormwind and Orgrimmar, taking advantage of the hopelessness and confusion caused by the Radiant Song.]],
    },
    {
        era = "Midnight",
        text = [[Led the Twilight's Blade's assault on Zul'Aman, sacking Atal'Aman and commanding his armies from the Broken Throne before being struck down by Zul'Jarra, Liadrin, and an adventurer.]],
    }
}

IMAGOdb.timelines.ZALJARRA = {
    {era = "TBC", text = "Lost her father Man'ye and grandfather Zul'jin when she was just a young child. Later, her mother was killed in ritual combat. After avenging her, Zul'jarra took her rightful place as the new leader."},
    {era = "Midnight", text = "Chose to ally with Lady Liadrin and accept her help in becoming hash'ey. Zul'jarra united the tribes of Zul'Aman and regained the trust of the loa. Afterwards she led the battle against the Twilight's Blade, successfully defending her people from the Void."},
}

IMAGOdb.timelines.NALORAKK = {
    {
        era = "TBC",
        text = [[Was bound to one of Zul'jin's strongest warriors by Hex Lord Malacrass. When the warrior was killed by adventurers, Nalorakk was set free again.]],
    },
    {
        era = "WotLK",
        text = [[Helped Witch Doctor Khufu to liberate the enslaved loa of the mad Drakkari in Zul'Drak.]],
    },
    {
        era = "Cata",
        text = [[His essence was once again stolen by Malacrass and sealed into the body of Daakara, the warlord successor of Zul'jin himself. His spirit was set free when Vol'jin's champions killed Daakara. Not giving either the Amani nor the Revantusk a third chance, Nalorakk stopped to answer the trolls' prayers, letting only a few remaining loyal Revantusk near him.]],
    },
    {
        era = "Midnight",
        text = [[Granted Zul'jarra a spiritual trial in his mystical den to determine her worth as hash'ey. After she succeeded, Nalorakk rejoined the Amani people as the Loa of War and marched the Revantusk into battle against the Twilight's Blade at the Broken Throne.]],
    }
}

IMAGOdb.timelines.AKILZON = {
    {era = "TBC", text = "Bound by Hex Lord Malacrass into the body of Man'ye, the father of Zul'jarra and Zul'jan. Man'ye was transformed into an eagle-headed mystic, falling to invading adventurers."},
    {era = "WotLK", text = "Aided the Zandalari in bringing an end to the Drakkari trolls and their consumption of loa for power."},
    {era = "Cata", text = "Once again subjected to Hex Lord Malacrass' dark magic. Her spirit was freed upon the death of her avatar at the hands of adventurers."},
    {era = "BfA", text = "The Amani claimed a small section of Dazar'alor as their own, with shrines and disciples for each loa. Akil'zon was no exception."},
    {era = "Midnight", text = "Returns to Zul'Aman to unleash the power of the storms against Xal'atath's forces."},
}

IMAGOdb.timelines.JANALAI = {
    {era = "TBC", text = "Suffered at the hands of Hex Lord Malacrass, having her essence stolen and imbued into one of the Amani's deadliest rogues. Her spirit was freed with the fall of Zul'jin"},
    {era = "WotLK", text = "Called upon by Witch Doctor Khufu in Zul'Drak to ask for advice on rescuing Drakkari loa from their own people."},
    {era = "Cata", text = "Once again, Jan'alai was subjected to the horrors of Hex Lord Malacrass. Her essence was infused into another Amani champion to create a twisted avatar. Her spirit was freed when adventurers defeated Daakara, successor to Zul'jin."},
    {era = "Midnight", text = "Jan'alai returned to the Amani people after decades of silence. The betrayal by Zul'jin and Malacrass caused the loa to abandon the trolls, only coming back after hash'ey Zul'jarra atoned for the crimes of her people."},
}

IMAGOdb.timelines.HALAZZI = {
    {
        era = "TBC",
        text = [[Got his essence stolen by Hex Lord Malacrass and imbued into Kurinje the Shadow. His spirit was freed when Horde champions defeated Zul'Jin.]],
    },
    {
        era = "WotLK",
        text = [[Was among other Amani Loas who were called by Witch Doctor Khufu in Zul'Drak to ask for advice on rescuing Drakkari Loas.]],
    },
    {
        era = "Cata",
        text = [[Got his essence stolen by Hex Lord Malacrass (again) and was used to create loa avatar. His spirit was freed when adventurers defeated Daakara.]],
    },
    {
        era = "Midnight",
        text = [[Returned as the primary loa of the Witherbark tribe and granted his powers to the forest trolls once again to drive back the Void from Zul'Aman.]],
    }
}

IMAGOdb.timelines.ZULJAN = {
    {era = "TBC", text = "Lost his father Man'ye and grandfather Zul'jin when he was just a young child. Later, his mother was killed in ritual combat and his sister Zul'jarra claimed leadership of the Amani tribes."},
    {era = "Midnight", text = "Secured lightwood weapons for his people and battled the Blood Elves as well as the Twilight's Blade. Reluctantly followed his sister's orders to ally with the elves later on. "},
}

IMAGOdb.timelines.LOA_SPEAKER_KINDURU = {
    {
        era = "TBC",
        text = [[Became advisor to chieftain Zarama, the wife of his late brother Man'ye, after Zul'jin's defeat and death. After Zarama was killed in ritual combat, Kinduru began to serve her daughter Zul'jarra.]],
    },
    {
        era = "Midnight",
        text = [[Guided Zul'jarra on her path to become hash'ey. Witnessed the return of the loa to Zul'aman and took up his old role as Speaker of Akil'zon. Helped the hash'ura gain various blessings of the loa at the altar in Amani'zar village.]],
    }
}

IMAGOdb.timelines.FILO = {
    {
        era = "Midnight",
        text = [[Watched over Kanza, an Amani child who sought him out in an attempt to reunite with the spirit of her twin sister. Filo lent his power to the adventurer who helped prepare the ritual - so long as they left his children undisturbed.]],
    }
}

IMAGOdb.timelines.TORUNDO_THE_GRIZZLED = {
    {
        era = "Pre-WC1",
        text = [[Grew up and lived in Zen'tamani Village when it was razed by the Farstriders under Ranger-General Lireesa Windrunner and had to flee to Amani'Zar as a child.]],
    },
    {
        era = "TBC",
        text = [[Fought under Zul'jin during his battles with Quel'Thalas. After his death, Torundo served Zul'jin's daughter-in-law, Zarama.]],
    },
    {
        era = "Midnight",
        text = [[Defended civilians during the Twilight's Blade's sudden attack on Atal'Aman, and later took care of the refugees in Amani'Zar. Helped defeat the Void cultists and was in charge of cleansing Atal'Aman of the lingering malicious energies. After Hagar revealed the trolls' and elves' shared ancestry, Torundo came to blows with Lor'themar Theron.]],
    }
}

IMAGOdb.timelines.SHADRA = {
    {
        era = "Classic",
        text = [[The Forsaken, under Master Apothecary Faranell, noticed the Witherbark tribe's potent weapon poisons and wanted them for their own concoctions. They summoned and killed Shadra at her altar in the Hinterlands to harvest her venom.]],
    },
    {
        era = "Cata",
        text = [[Willingly gave her blood to the Vilebranch tribe in Jintha'alor, whose members then committed mass sacrifices in her name. She was killed once more by adventurers]],
    },
    {
        era = "MoP",
        text = [[Communicated with Vol'jin through visions when the Zandalari invaded Pandaria. They had stopped worshiping her in favor for the mogu, and she wished to see them punished. When Vol'jin and his allies did so, Shadra was pleased.]],
    },
    {
        era = "BfA",
        text = [[Was killed and her power consumed by her own high priestess, Yazma. Shadra was believed permanently dead by the remaining loyal Zandalari when it became apparent that she wouldn't be reborn this time.]],
    },
    {
        era = "SL",
        text = [[With the Arbiter out of commission, Shadra's soul was sent to the Maw, where she was tortured and prevented to return to the world as she had after every previous death. Was rescued by Vol'jin and the Maw Walker and placed in the care of the Winter Queen in Ardenweald.]],
    },
    {
        era = "Midnight",
        text = [[Was finally reborn once more with the help of Revantusk and Witherbark loyalists in Zul'Aman. Still small and not as powerful as she once was, she allied herself with her rival Halazzi to aid the forest trolls in their fight against the Void.]],
    }
}

IMAGOdb.timelines.ELDER_HAGAR = {
    {
        era = "Pre-BfA",
        text = [[During her normal routine as Rootwarden, the roots of Teldrassil suddenly burst into flames and Hagar could do nothing but watch them wither away. Now without a purpose, she joined the Council of Elders in the Den.]],
    },
    {
        era = "Midnight",
        text = [[Granted Orweyna, Halduron Brightwing, and the Champion the chance to plead their case before the Elders. Was instrumental in helping to form a tentative alliance between the Hara'ti and the outside world. Co-ruled the village of Har'mara and made it a place of unity between haranir, rutaani and fungarians.]],
    }
}

IMAGOdb.timelines.AMARAKK = {
    {
        era = "Pre-TWW",
        text = [[Became a Shul'ka and thus an outcast to his people. He began fighting the dreamed-up monsters in the Rift of Aln.]],
    },
    {
        era = "Midnight",
        text = [[Helped Orweyna and the Champion venture into the Rift of Aln to acquire Alndust as a weapon against the Lightbloom.]],
    }
}

IMAGOdb.timelines.ROOTWARDEN_RUIA = {
    {
        era = "Midnight",
        text = [[Tried to battle the Lightbloom when it overwhelmed his village of Har'alnor. He failed, was corrupted by it, and his love for his people turned to hatred. As Lightwarden Ruia he deliberately spread the infection to Eversong Woods, using it as a weapon against the blood elves. Was stopped by an alliance of elves and Hara'ti and was killed by Orweyna and the Champion of Azeroth.]],
    }
}

IMAGOdb.timelines.GARONA_HALFORCEN = {
    {
        era = "Pre-WC1",
        text = [[Born to a draenei prisoner as half-orc and half-draenei. Survived as a half-breed in the ruthless Bladewind clan and was later mind controlled by Gul'dan to become his perfect assassin. Was convinced by Gul'dan that she was half human, making her the ideal candidate to infiltrate Stormwind once the orcs would march to war.]],
    },
    {
        era = "WC1",
        text = [[Fought for the Horde in the first skirmishes on Azeroth. Successfully infiltrated Stormwind and spied on the Guardian, Medivh. Ended up genuinely befriending the humans and rumors state that she and Medivh developed more than a friendship. Helped the Alliance against the Horde but ended up shaken after Medivh's betrayal and failed to resist Gul'dan's mind control. Was forced to kill King Llane.]],
    },
    {
        era = "WC2",
        text = [[Remained friends with Khadgar and vowed to hunt down all remaining members of the Shadow Council.]],
    },
    {
        era = "Pre-WotLK",
        text = [[Confronted Cho'gall but lost to the ogre mage and was once more mind controlled. Was ordered to assassinate King Varian Wrynn during a peace meeting between Horde and Alliance. While Varian fended off her assault, he saw the attack as a betrayal from the Horde and tensions between the factions worsened considerably.]],
    },
    {
        era = "Cata",
        text = [[Helped rescue Lirastrasza and deal a severe blow to the Twilight's Hammer. Out for revenge, she infiltrated the Twilight Citadel alongside an adventurer, and managed to finally help kill Cho'gall.]],
    },
    {
        era = "Legion",
        text = [[Slew the traitorous Althea Ebonlocke and infiltrated Stormwind during lockdown to thwart an attack of the Burning Legion. Entrusted the Kingslayers to the Shadowblade and joined the Uncrowned in Dalaran.]],
    },
    {
        era = "BfA",
        text = [[Was conscripted by Warchief Sylvanas Windrunner to fight in the Fourth War. Unwilling, she faked her loyalty and did her duty, but eagerly retreated from the war when Saurfang's rebellion arose.]],
    },
    {
        era = "DF",
        text = [[Was invited to the Kosh'harg Festival by Thrall and invited into the Shattered Hand Clan. Surprised to be accepted as a half-blooded orc and an outcast, she felt relieved and happy at how much the Horde had changed, and was inclined to take the offer.]],
    },
    {
        era = "TWW",
        text = [[Still a member of the Uncrowned, she survived the destruction of Dalaran and settled in Dornogal for a while.]],
    },
    {
        era = "Midnight",
        text = [[Visited the Arcantina.]],
    }
}

IMAGOdb.timelines.ZEN_TABRA = {
    {
        era = "WotLK",
        text = [[As a witch doctor, she felt the loa retreat from Darkspear society but failed to realize that the traitorous Zalazane was cutting the connection. Fled south when Zalazane conquered the Echo Isles, and was contacted by Gonk. She learned druidism in the Emerald Dream and joined Vol'jin in the fight to take back the Isles.]],
    },
    {
        era = "Pre-Cata",
        text = [[Successfully negotiated the Darkspear trolls' admission into the Cenarion Circle.]],
    },
    {
        era = "Cata",
        text = [[As a member of the Circle, she fought Ragnaros' forces on Mount Hyjal. Began to train new Darkspear druids.]],
    },
    {
        era = "MoP",
        text = [[Joined Vol'jin's rebellion against Warchief Garrosh Hellscream and was taken as a prisoner of war. Was rescued by SI:7 and introduced the Champion of the Alliance to the rebellion.]],
    },
    {
        era = "Legion",
        text = [[Fought the Burning Legion in Val'sharah alongside the other members of the Cenarion Circle. Protected the Well of Eternity and helped slay Destromath. Cleansed the branch of G'hanir to use as a mighty weapon for the Archdruid. She later protected the Exodar from the demons.]],
    },
    {
        era = "BfA",
        text = [[Defended the Echo Isles once more from Zalazane, when he returned as an undead lich.]],
    },
    {
        era = "DF",
        text = [[Aided the green dragonflight in the Ohn'ahran Plains and fought Fyrakk's forces in the Emerald Dream by halting the spread of the fire and closing Flame Portals.]],
    },
    {
        era = "Midnight",
        text = [[Enjoyed a drink in the Arcantina with fellow druid Thisalee Crow.]],
    }
}

IMAGOdb.timelines.REXXAR = {
    {
        era = "WC1",
        text = [[Pledged his loyalty to Warchief Blackhand to deter him from wiping out the pacifistic Mok'Nathal clan. Went through the Dark Portal and fought for the Old Horde during the First War.]],
    },
    {
        era = "WC2",
        text = [[Stationed at the Dark Portal under Grommash Hellscream and became sickened by the constant cruelty of the Horde. Lost his wolf companion Haratha to an orcish warlock. Was stranded on Azeroth after Draenor's destruction and abandoned the Horde.]],
    },
    {
        era = "Pre-WC3",
        text = [[Found his way to Kalimdor and lived as a hunter in the wilderness of Feralas. Rescued and befriended an orphaned bear cub he would later call Misha.]],
    },
    {
        era = "WC3",
        text = [[Stumbled upon a fatally wounded orc scout who told him to deliver a message to Warchief Thrall. Intrigued, Rexxar helped Thrall in defending the newly founded Orgrimmar and rescued a young Baine Bloodhoof from centaurs. He later killed Daelin Proudmoore and was named Champion of the Horde by Thrall.]],
    },
    {
        era = "Pre-Classic",
        text = [[Noticed the Burning Blade clan murdering orcs in Durotar and helped settle a small dispute between Orgrimmar and Theramore.]],
    },
    {
        era = "Classic",
        text = [[Roamed the wilderness of Desolace with Misha.]],
    },
    {
        era = "TBC",
        text = [[Returned to Draenor and protected his former clan from the Bloodmaul ogres. Did not reconcile with his father, the chieftain still being bitter about his son joining the Old Horde. Rexxar befriended Baron Sablemane without finding out about his dragon identity, and helped him slay the sons of Gruul.]],
    },
    {
        era = "Cata",
        text = [[Defended Durotar from raging elementals.]],
    },
    {
        era = "Legion",
        text = [[Challenged the Huntmaster of the Unseen Path to survive one night in the wilds of Highmountain. The Huntmaster did and earned Rexxar's trust and support and the Mok'Nathal joined the fight against the Burning Legion.]],
    },
    {
        era = "BfA",
        text = [[Compelled by honor, he fought for the Horde in the Fourth War and helped establish military outposts on Kul Tiras. Aided in recruiting Thomas Zelling. Reclaimed the Tide Pearl from the Shrine of Storms. Helped free Priscilla Ashvane. He later joined Saurfang's rebellion against Warchief Sylvanas Windrunner.]],
    },
    {
        era = "Pre-SL",
        text = [[Alongside young Zekhan, Rexxar traveled Kalimdor to give a full report on Horde holdouts on the continent. Mourned his wolf friend Huelo, who had fallen in the Fourth War.]],
    },
    {
        era = "DF",
        text = [[Reunited with his old friends Baine Bloodhoof, Rokhan, and Chen Stormstout to restore Toghusuq Village. Fought against Fyrakk's forces in the defense of Amirdrassil. Was surprised to be invited to the orcish Kosh'harg festival by Thrall and finally reconnected with his father.]],
    },
    {
        era = "Midnight",
        text = [[Enjoyed a drink in the Arcantina with his old friend Chen Stormstout.]],
    }
}

IMAGOdb.timelines.KELSEY_STEELSPARK = {
    {
        era = "Cata",
        text = [[Was stationed in Gadgetzan in civilian guise to negotiate a trade deal between Marin Noggenfogger and Gnomeregan.]],
    },
    {
        era = "Legion",
        text = [[Defended Tanaris from Legion invasions. Served the Uncrowned in Dalaran as quartermaster and later helped sabotage goblin mining operations in Silithus.]],
    },
    {
        era = "BfA",
        text = [[Fought under Halford Wyrmbane for the Alliance during the Fourth War as a stealth agent in enemy territory. Severely weakened Zandalari harbor defenses by planting hidden bombs on their warships. Secured the Mechagnomes' help to save King Mekkatorque's life after the Siege of Dazar'alor.]],
    },
    {
        era = "Midnight",
        text = [[Still a member of the Uncrowned, Kelsey loudly discussed a mission with Taoshi.]],
    }
}

IMAGOdb.timelines.GORGONNA = {
    {
        era = "WC2",
        text = [[Brought to Azeroth by her parents alongside her sister, Krenna, when both were children. Chieftain Grommash Hellscream consequently exiled the family. Gorgonna's parents were killed by humans after that and the young sisters grew up in Durnholde Keep.]],
    },
    {
        era = "Pre-WC3",
        text = [[Freed by Thrall and later followed him loyally to Kalimdor.]],
    },
    {
        era = "Pre-WotLK",
        text = [[Interrupted a heated argument between Krenna and Garrosh Hellscream. Tried to explain to Garrosh the need for the New Horde to atone for its past deeds in the First and Second Wars,  but was met with dismissal.]],
    },
    {
        era = "WotLK",
        text = [[Served under Krenna's command as her advisor in Conquest Hold during the war campaign in Northrend. Undermined her sister's exceedingly cruel commands and was challenged to a Mak'gora by her sibling. Gorgonna won but deeply regretted having to kill her own blood.]],
    },
    {
        era = "WoD",
        text = [[After Garrosh's fall from grace, Gorgonna rejoined the Warsong Clan in Ashenvale. Won the Mak'gora for leadership.]],
    },
    {
        era = "DF",
        text = [[Represented the Warsong Clan at the first Kosh'harg Festival on Azeroth and gathered new recruits.]],
    },
    {
        era = "TWW",
        text = [[Joined Horde forces on Khaz Algar in the war against Xal'atath.]],
    },
    {
        era = "Midnight",
        text = [[Took a moment to relax in the Arcantina.]],
    }
}

IMAGOdb.timelines.LILLIAN_VOSS = {
    {
        era = "Pre-Cata",
        text = [[Raised by her father, High Priest Benedictus Voss, to be an efficient killing machine for the Scarlet Crusade. Sometime before the Cataclysm, Lillian died and was laid to rest in a mass grave.]],
    },
    {
        era = "Cata",
        text = [[Was raised as a Forsaken but fled in horror at what she had become. She tried to return to the Crusade, but was imprisoned and put up for execution. Developed a hatred for her former friends and family and went on a killing spree which included her father.]],
    },
    {
        era = "MoP",
        text = [[Eradicated the reforming Scarlet Crusade in the Scarlet Monastery. Combated Darkmaster Gandling in Scholomance.]],
    },
    {
        era = "WoD",
        text = [[Helped Horde and Alliance forces against the undead of Draenor.]],
    },
    {
        era = "Legion",
        text = [[Joined the Uncrowned in Dalaran and fought alongside the Shadowblade on the Broken Shore. Took out dangerous undead homunculi of the Legion.]],
    },
    {
        era = "Pre-BfA",
        text = [[With Sylvanas raising more and more Forsaken, and with the Alliance continuing to harbor hatred for their fallen kin, Lillian officially joined the Horde.]],
    },
    {
        era = "BfA",
        text = [[Fought against the Alliance on Kul Tiras and helped new Forsaken troops to adapt to their fate as undead in the Horde. After Sylvanas' betrayal, Voss joined the new Horde Council as representative of the Forsaken. Met Calia Menethil and considered her a worthy ruler of Lordaeron.]],
    },
    {
        era = "Pre-SL",
        text = [[As interim leader of the Forsaken, Lillian began plans to secure a future for the Forsaken.]],
    },
    {
        era = "SL",
        text = [[Managed to reclaim the Undercity from the blight of the Fourth War. Proposed the formation of the Desolate Council - the new ruling body of the Forsaken - and joined it. Successfully encouraged Calia Menethil to also step up as a co-ruler.]],
    },
    {
        era = "DF",
        text = [[Led the Forsaken strike force against the Scarlet Crusade, took back Fenris Isle and killed Commander Forsythe. Later distracted the Scarlet Crusade in Gilneas to help the worgen reclaim their city. Worked with Shandris Feathermoon to help defend Amirdrassil from Fyrakk's forces.]],
    },
    {
        era = "TWW",
        text = [[Spied on the ascended nerubians of Azj-Kahet and discovered Queen Neferess' true fate. Fought, then saved Y'tekhi after they were mind-controlled by Xal'atath.]],
    },
    {
        era = "Midnight",
        text = [[Spent a peaceful while in the Arcantina.]],
    }
}

IMAGOdb.timelines.TEHD_SHOEMAKER = {
    {
        era = "Pre-Legion",
        text = [[Sometime before the return of the Burning Legion, the human warlock was killed by a paladin.]],
    },
    {
        era = "Legion",
        text = [[Worked together with Marius Felbane and killed or subdued various demons, occasionally helped by the Champion of Azeroth. Later fought on the Broken Shore.]],
    },
    {
        era = "BfA",
        text = [[Kept hunting remaining demons on Zuldazar with Marius.]],
    },
    {
        era = "Midnight",
        text = [[Unenthusiastically tried to help out the armies of Silvermoon but was promptly arrested by the Army of the Light for being a warlock. Abandoning the fight, he convinced Marius to join him for a drink in the Arcantica.]],
    }
}

IMAGOdb.timelines.TAOSHI = {
    {
        era = "MoP",
        text = [[Stopped the mantid in the Townlong Steppes and defeated the Sha of Hatred alongside Taran Zhu and the Champion. Fought on the Isle of Thunder against Lei Shen's forces, helping both the warring Horde and Alliance.]],
    },
    {
        era = "WoD",
        text = [[Was sent by the Shado-Pan to Draenor to combat the Iron Horde.]],
    },
    {
        era = "Legion",
        text = [[Joined the Uncrowned in Dalaran as one of the Shadows. Formulated and executed the plan to rescue Mathias Shaw from Legion captivity and later infiltrated Stormwind alongside Shaw and the Shadowblade to kill Detheroc.]],
    },
    {
        era = "BfA",
        text = [[Defended the Vale of Eternal Blossom from N'Zoth's minions and helped combat the void corruption of the land.]],
    },
    {
        era = "TWW",
        text = [[Survived the destruction of Dalaran and managed to save the Uncrowned's archives during the crash. Settled in Dornogal with her fellow Uncrowned.]],
    },
    {
        era = "Midnight",
        text = [[Met with Kelsey Steelspark in the Arcantina for a mission.]],
    }
}

IMAGOdb.timelines.VANESSA_VANCLEEF = {
    {
        era = "Classic",
        text = [[Witnessed the death of her father, Edwin VanCleef, at the hands of hired adventurers. She was adopted by the Saldeans, took on the name Hope, yet stayed bitter.]],
    },
    {
        era = "Cata",
        text = [[Disguised as Hope Saldean, she rallied the homeless of Westfall against Stormwind, citing the war in Northrend as the reason for their poverty. Reestablished the Defias Brotherhood and prepared for an attack on Stormwind City. Was stopped by adventurers under orders of Gryan Stoutmantle and Mathias Shaw and faked her own death.]],
    },
    {
        era = "Legion",
        text = [[Joined the Uncrowned after losing a duel for the seat of the last Shadow to the Champion of Azeroth. Recruited new members for the organization and fought alongside the Shadowblade in the defense of the Exodar.]],
    },
    {
        era = "Pre-BfA",
        text = [[Made an unofficial deal with SI:7 after working with Mathias Shaw during the invasion of the Burning Legion. Vanessa became his informant and kept the Defias on a short leash in exchange for not being persecuted.]],
    },
    {
        era = "Pre-DF",
        text = [[Noticed a rise in cruelty among the ranks of her Defias. Realized that after King Anduin's reforms and formal pardons most of her people had returned to the Alliance, leaving only the criminals under her command.]],
    },
    {
        era = "DF",
        text = [[Lost leadership of the Defias to the corrupt Count Clessington who rallied the Brotherhood to sack Stormwind for its wealth. Worked with Mathias Shaw to prevent this. Kidnapped Cecilia Clessington, but ultimately befriended her, sharing the same ideals. After killing Count Clessington and declining an offer to join SI:7, she returned to Westfall with Cecilia to help the Breadbasket Guild.]],
    },
    {
        era = "Midnight",
        text = [[Enjoyed a drink in the Arcantina with Cecilia.]],
    }
}

IMAGOdb.timelines.SCALECOMMANDER_AZURATHEL = {
    {
        era = "Ancient",
        text = [[Created by Neltharion to serve as a protector to his fellow dracthyr. Was in charge of defending the black dragonflight's strongholds on the Dragon Isles. When Raszageth destroyed the titan relic Oathbinder, used by Neltharion to mind control the dracthyr, Azurathel, along with his companions, was imprisoned.]],
    },
    {
        era = "Pre-DF",
        text = [[Awoke thousands of years later to a changed world. Witnessed Raszageth's reawakening and was unable to stop it. At the behest of the black dragons Wrathion and Ebyssian, the dracthyr split up to join the Horde and the Alliance. Azurathel led the Obsidian Warders to Stormwind and joined the Alliance.]],
    },
    {
        era = "DF",
        text = [[Agreed with High Exarch Turalyon to send Alliance forces to aid the dragon aspects on the Dragon Isles but to remain peaceful with the Horde. Fought the Primal Incarnates on the Isles and later in the Emerald Dream.]],
    },
    {
        era = "TWW",
        text = [[Greeted newly-awakened dracthyr that chose to join him in the Alliance.]],
    },
    {
        era = "Midnight",
        text = [[Had a drink with fellow Scalecommander Emberthal in the Arcantina.]],
    }
}

IMAGOdb.timelines.CECILIA_CLESSINGTON = {
    {
        era = "DF",
        text = [[Was kidnapped by Vanessa VanCleef as leverage when Cecilia's father took control of the Defias Brotherhood to rob Stormwind City. Befriended the rogue and helped her and SI:7 to stop and kill her father, Count Clessington. As the only heir to her name, she took the title of Countess and joined Stormwind's House of Nobles. Founded the Breadbasket Guild to help the people of Westfall.]],
    },
    {
        era = "Midnight",
        text = [[Enjoyed a drink in the Arcantina with Vanessa.]],
    }
}

IMAGOdb.timelines.MARIUS_FELBANE = {
    {
        era = "TBC",
        text = [[Pledged his loyalty to Illidan Stormrage in Outland. Invaded Mardum at his behest, but upon returning was captured and imprisoned alongside his fellow Illidari by Maiev Shadowsong.]],
    },
    {
        era = "Legion",
        text = [[After being locked in stasis for 6 years, Marius and the other demon hunters were freed by their captor as a last resort to combat Gul'dan. Joined the battle against the Burning Legion, worked together with Tehd Shoemaker and killed or subdued various demons, occasionally helped by the Champion of Azeroth. Later fought on the Broken Shore.]],
    },
    {
        era = "BfA",
        text = [[Kept hunting remaining demons on Zuldazar with Tehd.]],
    },
    {
        era = "Midnight",
        text = [[Begrudgingly accepted Tehd's request to rest and relax for a while in the Arcantina.]],
    }
}

IMAGOdb.timelines.FLYNN_FAIRWIND = {
    {
        era = "Pre-Classic",
        text = [[Was orphaned as a child when his mother was publicly executed for thievery. Was forced to join a street gang and eventually took to piracy.]],
    },
    {
        era = "Pre-BfA",
        text = [[Became captain of a pirate crew and made quite a reputation. Met Taelia Fordragon and developed a crush on her. He eventually left his crew when they became increasingly ruthless, and joined the Admiralty of Kul Tiras as a smuggler for hire.]],
    },
    {
        era = "BfA",
        text = [[Freed the Champion of Azeroth from Tol Dagor and helped Taelia uncover the treachery of Priscilla Ashvane.  Confronted and stopped his old crew – the Irontide Raiders led by his former first mate, Harlan Sweete. Worked with Mathias Shaw to infiltrate the Dazar'alor treasury and steal the Abyssal Scepter.]],
    },
    {
        era = "Pre-SL",
        text = [[Worked with Shaw again to track Sylvanas Windrunner. After purposefully annoying the spymaster, the two bonded during the sea voyage to Zandalar. Flynn later helped free Shaw from Horde imprisonment and convinced him to go treasure hunting together in Duskwood. They stopped a necromancer and saved the Night Watch and fell in love. They traveled the Eastern Kingdoms to inventory various artifacts.]],
    },
    {
        era = "Pre-DF",
        text = [[Moved to Stormwind City.]],
    },
    {
        era = "TWW",
        text = [[Was in Dalaran during the city's destruction and was captured by the nerubians of Azj-Kahet. Helped free the other captives and worked for the Weaver against Queen Ansurek.]],
    },
    {
        era = "Midnight",
        text = [[Enjoyed a drink in the Arcantina.]],
    }
}

IMAGOdb.timelines.SCALECOMMANDER_EMBERTHAL = {
    {
        era = "Ancient",
        text = [[Fought as Scalecommander against her creator Neltharion's foes. When Raszageth destroyed the titan relic Oathbinder, used by Neltharion to mind control the dracthyr, Emberthal, along with her companions, was imprisoned.]],
    },
    {
        era = "Pre-DF",
        text = [[Awoke thousands of years later to a changed world. Witnessed Raszageth's reawakening and was unable to stop it. At the behest of the black dragons Wrathion and Ebyssian, the dracthyr split up to join the Horde and the Alliance while Emberthal remained as a neutral leader on the Dragon Isles.]],
    },
    {
        era = "DF",
        text = [[Was briefed by Nozdormu about Neltharion's legacy and the state of the world and helped him find out more about her creator's corruption. Emberthal disagreed and fought with Sarkareth because the latter chose to follow in Deathwing's footsteps and embraced the Void. After killing him, Emberthal reformed the Ebon Scales. Fought against Fyrakk's forces in the Emerald Dream.]],
    },
    {
        era = "TWW",
        text = [[Returned to the Forbidden Reach to aid the few remaining dormant dracthyr begin their new lives on Azeroth.]],
    },
    {
        era = "Midnight",
        text = [[Enjoyed a drink in the Arcantina.]],
    }
}

IMAGOdb.timelines.WRATHION = {
    {
        era = "Cata",
        text = [[Wrathion's egg was created in an experiment fusing together corrupted black dragon eggs and a whelp's corpse with titan magic. He was the first uncorrupted black dragon in millennia and was held by the red dragonflight. Conscious in his shell, he hired rogue mercenaries and hatched in Ravenholdt. In hiding, he sent out assassins to decimate the black dragonflight, even helping to kill Deathwing.]],
    },
    {
        era = "MoP",
        text = [[Had a premonition about the Burning Legion destroying Azeroth and planned to have the Alliance subjugate the Horde to unite the world against the demons. Settled in the Tavern of the Mists and befriended Anduin Wrynn while the latter recovered there. Sent out his own champions to help take down Garrosh Hellscream. Was furious when King Varian chose not to take Orgrimmar and let the Horde live.]],
    },
    {
        era = "Pre-WoD",
        text = [[With the help of the bronze dragon Kairozdormu, he freed Garrosh during his trial and sent him to an alternate universe of Draenor. Knocked out his friend Anduin when he tried to stop him.]],
    },
    {
        era = "WoD",
        text = [[Remained in alternate Draenor and briefly stayed in Admiral Taylor's garrison.]],
    },
    {
        era = "Legion",
        text = [[Stayed in Northrend during the invasion of the Burning Legion and was briefly confronted by Chromie while she was seeking her future killer.]],
    },
    {
        era = "BfA",
        text = [[With N'Zoth freed from his prison, Wrathion returned and became King Anduin's advisor. Guided the Champion of Azeroth through Horrific Visions to strengthen their resolve against Old God madness. Cleansed his brother Ebyssian from corruption and finally journeyed into Ny'alotha itself. Wielded Xal'atath and used it to hurt N'Zoth directly, thus giving the Champion the opening to kill the Old God.]],
    },
    {
        era = "Pre-DF",
        text = [[Was surprised to be invited to Lor'themar and Thalyssra's wedding and was attacked by Kurog Grimtotem for being an 'abomination'. Heard the call of the Dragon Isles alongside the other dragons and finally felt a sense of belonging.]],
    },
    {
        era = "DF",
        text = [[Helped restore the black dragonflight and defended the Dragon Isles against the Primal Incarnates. Met his older brother Sabellian and relentlessly fought for leadership with him. Braved the depths of Aberrus and confronted the legacy of his father. Ceded leadership of the black dragonflight to Ebyssian. Fought in the Emerald Dream alongside the other dragons and vowed to hunt down Iridikron.]],
    },
    {
        era = "Pre-TWW",
        text = [[Guided his friends Thalyssra and Lor'themar through the Dragon Isles. Heard the Radiant Song and was very distressed by it.]],
    },
    {
        era = "Midnight",
        text = [[Enjoyed more than one drink in the Arcantina.]],
    }
}

IMAGOdb.timelines.TRAVARD = {
    {
        era = "WC3",
        text = [[Survived the onslaught of the Scourge of Lordaeron alongside a handful of comrades. Travard became the leader of the Tyr's Guard.]],
    },
    {
        era = "Legion",
        text = [[Lost his remaining comrades when the Twilight's Blade attacked the tomb. Petitioned the Champions of Dalaran for aid and defeated the cultists who tried to resurrect Zakajz the Corruptor – the C'Thraxxi general imprisoned in the Tomb of Tyr. Gave Tyr's Hand to the Highlord and stayed behind to guard what remained of the tomb, now buried under rubble.]],
    },
    {
        era = "DF",
        text = [[Reforged the Tyr's Guard by recruiting the paladins Talthis, Valunei, Hadwin, and Nolaki. Worked alongside Chromie and Eternus and journeyed through the timeways to reawaken Tyr himself. Succeeded and vowed to aid Tyr in finding his bearings in the changed world.]],
    },
    {
        era = "Midnight",
        text = [[Spent some peaceful time in the Arcantina.]],
    }
}

IMAGOdb.timelines.NISHA = {
    {
        era = "BfA",
        text = [[Rescued the Speaker of the Horde from sethrak captivity when she was destroying a Faithless camp. Convinced Kiro to launch an offensive against the sethrak to prevent further attacks on the caravan. Eventually succeeded and helped kill Emperor Korthek. Defended Vol'dun against Alliance assaults and became a member of the Horde.]],
    },
    {
        era = "DF",
        text = [[Joined the Dragonscale Expedition and camped with the centaur of Maruukai. Frequently participated in Fight Night at the Dragon's Hoard.]],
    },
    {
        era = "Midnight",
        text = [[Got drunk in the Arcantina and befriended her former Kul Tiran enemy, Cyrus Crestfall.]],
    }
}

IMAGOdb.timelines.CYRUS_CRESTFALL = {
    {
        era = "WC2",
        text = [[Served as a knight under Lord Admiral Daelin Proudmoore during the Second War. Barely survived a battle against Varok Saurfang.]],
    },
    {
        era = "WC3",
        text = [[Was prohibited from following Daelin to Theramore and forced against his wishes to become harbormaster. Was tasked to raise Taelia Fordragon.]],
    },
    {
        era = "BfA",
        text = [[Tasked Taelia and hired rogue Flynn Fairwind with rescuing the Champion of the Alliance from Tol Dagor. Used his authority to allow the Alliance to dock in Boralus Harbor and invited Genn Greymane into his office to use it as a war room. Continued to serve Kul Tiras while aiding the Alliance as the two factions became united again.]],
    },
    {
        era = "Midnight",
        text = [[Shared war stories in the Arcantina.]],
    }
}

IMAGOdb.timelines.MISHA = {
    {
        era = "Pre-WC3",
        text = [[Was found by Rexxar as a young cub beside her dead mother. Rexxar named her Misha, and she soon began following her new friend wherever he went.]],
    },
    {
        era = "WC3",
        text = [[Fought side by side with Rexxar against Daelin Proudmoore in the aftermath of the Third War.]],
    },
    {
        era = "Pre-Classic",
        text = [[Carried the wounded orc scout Byrok on her back to Orgrimmar.]],
    },
    {
        era = "Classic",
        text = [[Roamed the wilderness of Desolace with Rexxar.]],
    },
    {
        era = "TBC",
        text = [[Helped Rexxar defend Thunderlord Stronghold in the Blade's Edge Mountains.]],
    },
    {
        era = "Legion",
        text = [[Officially joined the Unseen Path alongside Rexxar and occasionally helped the Huntmaster on missions.]],
    },
    {
        era = "Pre-SL",
        text = [[Ventured across Kalimdor with Rexxar and Zekhan and mourned the loss of Huelo, Rexxar's late wolf companion.]],
    },
    {
        era = "DF",
        text = [[Fought at Rexxar's side in the Ohn'ahran Plains and the Emerald Dream. Attended the first orcish Kosh'harg on Azeroth.]],
    },
    {
        era = "Midnight",
        text = [[Relaxed in front of the fireplace in the Arcantina and even let the Champion pet her.]],
    }
}

IMAGOdb.timelines.LORD_DARIUS_CROWLEY = {
    {
        era = "WC2",
        text = [[Convinced King Genn Greymane to send Gilnean troops to aid the newly-formed Alliance of Lordaeron against the orcish Horde. Strongly opposed Gilneas leaving the Alliance after the war.]],
    },
    {
        era = "WC3",
        text = [[Went against Genn's orders and sent troops to the aid of Jaina Proudmoore when the former ally asked for help during the Third War.]],
    },
    {
        era = "Pre-Classic",
        text = [[After King Genn refused to aid Lordaeron during the fallout of Arthas' betrayal and constructed the Greymane Wall to further isolate Gilneas, Darius started the Northgate Rebellion. He saw his former friend as a tyrant and led the rebels into the capital city. The rebellion failed and Crowley and his loyalists were thrown into prison as traitors.]],
    },
    {
        era = "Cata",
        text = [[Was freed by Genn when both the Forsaken and the worgen besieged Gilneas. Was prepared to die, ensuring the evacuation of civilians, but became afflicted with the worgen curse instead. Made contact with the night elves, but stayed in Gilneas while Genn's people sought to rejoin the Alliance. Formed the Gilneas Liberation Front but had to retreat when Sylvanas took the city after many battles.]],
    },
    {
        era = "Legion",
        text = [[Joined Genn and Tess Greymane aboard the Skyfire and aided the Alliance on the Broken Isles. Worked with Odyn's Valarjar to combat the Burning Legion.]],
    },
    {
        era = "BfA",
        text = [[Made new attempts to liberate Gilneas from Forsaken occupation after the Battle of Lordaeron. Later joined the Alliance during the Battle at the Gates of Orgrimmar.]],
    },
    {
        era = "DF",
        text = [[Fought the Scarlet Crusade and drove them out of Gilneas, following the Forsaken's show of goodwill by withdrawing their troops. Was finally able to breathe freely again and was glad to see Gilneas back in Alliance control.]],
    },
    {
        era = "Midnight",
        text = [[Spoke proudly of his daughter, Lorna, and reminisced about old times with his former enemy, Eitrigg, in the Arcantina.]],
    }
}

IMAGOdb.timelines.KHADGAR = {
    {era = "TWW", text = [[Was crippled in Xal'atath's destruction of Dalaran, losing the use of his legs. Was later freed by Alleria when she damaged the Dark Heart. Recovered thanks to Anduin Wrynn. Honored the fallen mages of Dalaran on the Isle of Dorn.]]},
}

IMAGOdb.timelines.MAGNI_BRONZEBEARD = {
    {era = "TWW", text = [[Worked alongside the earthen of Dornogal to combat Xal'atath's forces. With his grandson Dagran uncovered the High Speaker's treachery in the Ringing Deeps. Was restored to flesh by Azeroth. Tried his hardest to reconnect with his daughter Moira and was accepted back by his family.]]},
}
