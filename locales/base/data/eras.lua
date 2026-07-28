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
IMAGOdb.eras["midnight"].antagonist = "Xal'atath"
IMAGOdb.eras["midnight"].conflict   = "Defense of the Sunwell"
IMAGOdb.eras["midnight"].year       = 2026

-- TAB 1: OVERVIEW — Zusammenfassung + Fast Facts
IMAGOdb.eras["midnight"].summary =
    "Xal'atath's plans have come to fruition and the blood elves of Silvermoon bear witness to a massive " ..
    "Voidstorm breaching the skies above the Sunwell. The Harbinger of the Void seeks to corrupt its holy " ..
    "waters and it falls on the Defenders of Quel'Thalas, as well as an army of paladins and priests, to " ..
    "defend it at all costs."

IMAGOdb.eras["midnight"].fastFacts = {
    cosmicForces = "The Void vs. the Light",
    casualties   = "- Alleria and Turalyon - Lost in the Darkwell\n- Lothraxion - Consumed by light-blinded rage and killed by his allies",
    worldScar    = "The Sunwell's corruption and reformation as the Dawnwell",
    bigQuestion  = "Will the Sunwell endure as Quel'Thalas' lifeline - or become the Void's most devastating weapon against all of Azeroth?",
}

-- TAB 2: CAMPAIGNS & REGIONS — Startzonen mit Karten-Overlays
IMAGOdb.eras["midnight"].campaigns = {
    {
        heading      = "Call of the Light",
        zoneName     = "Isle of Quel'Danas",
        flavorTeaser = "Call of the Light",
        logoPath     = "Interface\\AddOns\\IMAGO\\media\\Eras\\Campaigns\\MN_CallOfTheLight.png",
        logo_w       = 1280, logo_h = 720,
        npcLinks     = {"turalyon"},
        text         = "The Voidstorm was unleashed upon the Isle of Quel'Danas, forcing the blood elves of Silvermoon to fight " ..
                       "for survival against the full might of Xal'atath's army - the Devouring Host. The Sunwell itself aided " ..
                       "its people when it summoned an army of paladins and priests, led by High Exarch {npc:turalyon}, to wield " ..
                       "the Light against the Darkness. In the end, the Sunwell erupted in a beam of holy energy, holding the " ..
                       "encroaching Void at bay.",
        loreBits     =
            "After her victory on K'aresh, Xal'atath unleashed the Voidstorm, and the skies over Silvermoon City turned to darkness. " ..
            "Lady Liadrin and Lor'themar Theron rallied the blood elven armies on the Isle of Quel'Danas to defend the Sunwell from " ..
            "the Harbinger and her Devouring Host. Liadrin knew that the Void would overwhelm them and prayed to the Light for aid " ..
            "despite Lor'themar's protests to focus on the battle.\n\n" ..
            "Liadrin's plea was answered, and priests and paladins from all across Azeroth were summoned in an instant by the Sunwell " ..
            "itself. High Exarch Turalyon quickly assumed command of this Vanguard of the Light and devised a strategy while the Champion " ..
            "assisted the new arrivals in the field. They teamed up with Arator, Turalyon's son, and the young Windrunner noticed that " ..
            "something felt wrong about the Light but brushed the feeling aside for now.\n\n" ..
            "Lor'themar focused on evacuating the remaining civilians, while Turalyon commanded his forces to crush the Devouring Host " ..
            "without restraint. The blood elf leader disapproved of the High Exarch's methods and Arator seemed at odds with his father " ..
            "as well. Nonetheless, together they managed to drive the Void from Parhelion Plaza and took out commanders farther out on " ..
            "the Isle of Quel'Danas.\n\n" ..
            "All seemed to go well until Xal'atath arrived on the battlefield. The defenders were quickly overrun by what appeared to be " ..
            "an endless army and an oppressive darkness settled over the land, forcing both the Vanguard and the elves to retreat. " ..
            "They were driven back to the Sunwell and prepared for a desperate last stand.\n\n" ..
            "The Sunwell suddenly erupted in a mighty beam of Light. The blast eradicated the void presence and directly shot up into " ..
            "the sky to combat the ever-encroaching storm above. For now, Xal'atath had been halted and volunteers remained at Sunwell " ..
            "Plateau to bolster the well with their own Light.\n\n" ..
            "|cFFc8a84bSide Quests|r\n\n" ..
            "|cFFe0c06aTwilight Ascension:|r\n" ..
            "Before Xal'atath's attack on Silvermoon, Magister Umbric and Grand Magister Rommath investigated a resurgence of the " ..
            "Twilight's Blade cult. The former friends reluctantly worked together to thwart the cult's efforts in the Twilight Highlands.\n\n" ..
            "|cFFe0c06aUnited in the Light:|r\n" ..
            "Every paladin and priest who answered the Sunwell's call did their part to combat the Void. Salandria defended the ships " ..
            "evacuating the civilian blood elves, Prophet Velen single-handedly held the line at Dawnstar Village and made sure the " ..
            "archives were kept safe, and Calia Menethil safeguarded the children caught off guard during their studies.",
    },
    {
        heading      = "Lightblooms and Twilight Blades",
        zoneName     = "Eversong Woods",
        flavorTeaser = "Lightblooms and Twilight Blades",
        logoPath     = "Interface\\AddOns\\IMAGO\\media\\Eras\\Campaigns\\MN_LightbloomsAndTwilightBlades.png",
        logo_w       = 1280, logo_h = 720,
        npcLinks     = {"arator", "magister_umbric", "lord_antenorian", "zuljan"},
        text         = "Regrouping in Silvermoon City, the blood elves and the Vanguard of the Light faced multiple challenges " ..
                       "at once. {npc:arator} and {npc:magister_umbric} discovered that the Twilight's Blade cult had infiltrated " ..
                       "Tranquilien and set out to kill the cult's leader – {npc:lord_antenorian}. Rampant plant growth fueled by " ..
                       "the Light of the Sunwell began harming the lands around the capital. At the borders of Quel'Thalas and " ..
                       "Zul'Aman, Amani trolls led by {npc:zuljan} clashed with the elves in a skirmish.",
        loreBits     =
            "Even after achieving the small victory at the Isle of Quel'Danas together, tensions soon rose between Lor'themar and " ..
            "Turalyon as the Vanguard of the Light began to comport themselves not as guests in Silvermoon City, but as an authority. " ..
            "Internal squabbles would have to wait, however, as reports were coming in from Eversong Woods that the wildlife had begun " ..
            "to act strangely. Arator Windrunner volunteered to accompany the Champion and they soon encountered a phenomenon known as " ..
            "\"The Lightbloom\". The Sunwell's eruption had immensely accelerated plant growth, causing vegetation to spread " ..
            "uncontrollably while driving the surrounding wildlife into violent frenzies. Orweyna joined them briefly, as she had felt " ..
            "similar disturbances in her homeland of Harandar.\n\n" ..
            "Arator's warning about the Light's effect on nature was brushed aside by Lor'themar and Turalyon, who sent young Windrunner " ..
            "to Tranquilien next. The Voidstorm was deemed the most pressing issue, and Magister Umbric's expertise was needed. The " ..
            "exiled leader of the ren'dorei was not allowed into Silvermoon City proper, but was eager to provide his research for the cause.\n\n" ..
            "Tranquilien's mayor Lord Antenorian revealed himself a traitor and tried to overtake the village with the Twilight's Blade " ..
            "Cult. Arator, Umbric, and the Champion repelled the assault before hunting him down in the ruins of Deatholme. With the " ..
            "assistance of Valeera Sanguinar, they finally slew the traitor. Umbric's research was destroyed in all of the chaos.\n\n" ..
            "There was little time to celebrate. Fresh reports of Lightbloom activity arrived from the village of Suncrown. Arator and " ..
            "the Champion arrived to find the entire settlement swallowed by unnatural growth and mutated wildlife glowing with the " ..
            "Light. Rescuing whomever they still could alongside Lady Liadrin, they joined Silvermoon's leadership outside of the " ..
            "village under a protective runestone. Lor'themar concluded that the Amani Trolls were behind the attack, as a group of " ..
            "them had been spotted in Eversong Woods by Halduron Brightwing.\n\n" ..
            "Arator remained unconvinced. While Lor'themar and Turalyon rallied the Vanguard of the Light, the Farstriders, and the " ..
            "Magisters for a counteroffensive against Zul'Aman, the young paladin set out to investigate on his own. He found out that " ..
            "the trolls were as much under threat by the Void as the elves were, and had only crossed the borders of Quel'Thalas to " ..
            "use the magically infused wood of the Lightbloom as weapons against the Twilight's Blade.\n\n" ..
            "He came too late to prevent the fighting. Driven by ages-old hatred towards the Amani, Lor'themar had begun the assault. " ..
            "The small Amani warband, led by Zul'jan, was quickly overwhelmed and Turalyon stepped forward to deliver the final blow " ..
            "to the defeated enemy. Arator threw himself between his father and Zul'jan, taking the full force of the strike and was " ..
            "left scarred and utterly disillusioned.\n\n" ..
            "|cFFc8a84bSide Quests|r\n\n" ..
            "|cFFe0c06aFel and Fear:|r\n" ..
            "Demon hunter Belath Dawnblade uncovered an illegal smuggling operation and the use of fel magic in the treacherous streets " ..
            "of Murder Row. Alongside the Champion, he did what demon hunters do best and extinguished all traces of demon worship and fel fire.\n\n" ..
            "|cFFe0c06aLesser Evil:|r\n" ..
            "The downtrodden and criminal elves of Murder Row were kidnapped, exploited, and murdered by a power-hungry magister " ..
            "seeking to increase his own strength. In the end, justice was delivered by the vigilante rogues of the Row and the " ..
            "Champion of Azeroth, though the political injustices of Silvermoon remained unchanged.\n\n" ..
            "|cFFe0c06aPaladin Rescue:|r\n" ..
            "Taelia Fordragon and Salandria teamed up to rescue fellow paladins who had been captured while aiding the Magisters " ..
            "against the Twilight's Blade. They dealt a significant blow to the cult, even managing to kill one of its leaders.",
    },
    {
        heading      = "De Amani never die",
        zoneName     = "Zul'Aman",
        flavorTeaser = "De Amani never die",
        logoPath     = "Interface\\AddOns\\IMAGO\\media\\Eras\\Campaigns\\MN_DeAmaniNeverDie.png",
        logo_w       = 1280, logo_h = 720,
        npcLinks     = {"lady_liadrin", "zaljarra", "zuljan"},
        text         = "In need of allies rather than more enemies, {npc:lady_liadrin} and the Champion assisted the Amani " ..
                       "trolls in combating their mutual enemy, the Twilight's Blade. They joined Chieftain {npc:zaljarra} in " ..
                       "her endeavor to become hash'ey and, in the process, successfully brought the loa back to Zul'Aman. As " ..
                       "allies, they drove the Void cult off troll lands and united the tribes under their new hash'ey. " ..
                       "{npc:zuljan}, brother of Zul'jarra, disapproved of relying on the loa but fought alongside her nonetheless.",
        loreBits     =
            "To avoid further bloodshed, Lady Liadrin attempted diplomacy with Zul'jan. Negotiations appeared to break down when " ..
            "they were ambushed by the Twilight's Blade cult under Mor'duun's command. Liadrin and the Champion joined the Amani " ..
            "forces against their mutual enemy and uneasily fought side by side at the very place where the last great battle " ..
            "between the two races had occurred. They successfully drove off the cult and Chieftain Zul'jarra invited Liadrin " ..
            "and the Champion into Amani'Zar village in a show of good faith.\n\n" ..
            "The other tribes of Zul'Aman were assembled but unity against the Void was not achieved. Liadrin and the Champion " ..
            "learned that the loa who had been protecting and empowering the tribes for centuries had withdrawn their support " ..
            "after the Amani warlord Zul'jin and Hex-Lord Malacrass had enslaved and drained their gods of their power during " ..
            "their last attempt to defeat the blood elves. Without them, the Amani felt hopeless and didn't trust young Zul'jarra " ..
            "to lead them. Loa Speaker Kinduru proposed that Zul'jarra undergo the trials to become hash'ey - a champion of the loa.\n\n" ..
            "Zul'jarra agreed and took Liadrin and the Champion with her to serve as her hash'ura. They climbed the high peak to " ..
            "Akil'zon's temple, collecting gnarldin heads on the way to offer as tribute. Zul'jarra faced the loa of her tribe " ..
            "and succeeded in earning her favor by throwing herself off the cliffs and putting her faith in the eagle god. " ..
            "Liadrin was baffled but came to admire Zul'jarra's bravery.\n\n" ..
            "From there, they continued their journey to the Temple of Halazzi - the loa of the Hunt. They had to navigate " ..
            "their way through an obscuring mist and found the Witherbark tribe under attack from the Vilebranch. They aided " ..
            "them and eventually found the lynx loa. Even though he too had abandoned the Amani, he had continued to watch " ..
            "over his loyalists among the Witherbark tribe. Impressed by Zul'jarra's cunning in finding him, he granted her his blessing.\n\n" ..
            "Jan'alai, Loa of Fire, was waiting to be reborn after her death at the hands of Malacrass. Zul'jarra ignited the " ..
            "embers of her temple and fueled the fire in her own heart by confronting her biggest fears and hatreds. Jan'alai " ..
            "granted Zul'jarra her blessing but reminded the young chieftain that she still felt bitterness about the manner " ..
            "of her death and Zul'jarra vowed to not repeat the sins of her grandfather.\n\n" ..
            "Shaken by the trials behind them, the trio regrouped in Amani'Zar, only to find that Zul'jan had led a war party " ..
            "against the Twilight's Blade against his sister's orders. The siblings argued, but Zul'jarra soon departed for " ..
            "her last trial. She faced the Loa of War, Nalorakk, in combat and earned his blessing as well. With the loa at " ..
            "their backs, the other tribes rallied behind Zul'jarra in a united stand against the Void.\n\n" ..
            "Zul'jan was already fighting the cult and reinforcements were a welcome sight. Victory against the Twilight's " ..
            "Blade was hard-won, but in the end, Mor'duun died at the Amani's hands. Zul'jarra was formally declared hash'ey " ..
            "and invited Liadrin to stay in Zul'Aman as the two women had become friends through shared hardship. Zul'jan, " ..
            "meanwhile, didn't celebrate. He couldn't trust the loa not to abandon his people again and knew he had to find " ..
            "another way to eventually bring the Amani back to their former glory.\n\n" ..
            "|cFFc8a84bSide Quests|r\n\n" ..
            "|cFFe0c06aA Venomous History:|r\n" ..
            "Revantusk and Witherbark loyalists found a way to restore their shared spider loa, Shadra, to life after her soul " ..
            "had suffered in the Maw. With the aid of Halazzi and the Champion, Shadra was reborn and joined the fight against the Void.\n\n" ..
            "|cFFe0c06aThe Voice of Nalorakk:|r\n" ..
            "The Spiritpaw furbolg used to live peacefully in Zul'Aman until the Bear Loa Nalorakk began speaking directly to " ..
            "them. They became corrupted and aggressive and the Champion uncovered the so-called loa to be a creature of the " ..
            "Void. They slew it and freed the furbolg from its manipulations.\n\n" ..
            "|cFFe0c06aBloodstains:|r\n" ..
            "After Mor'duun's defeat in Atal'Aman, the historic city remained steeped with dark energies. Echoes of battles " ..
            "past began to pose a danger to the returning trolls. The Champion fought adventurers of the past who had confronted " ..
            "Zul'jin all these years ago, and probably relived their own struggles in this place.",
    },
    {
        heading      = "A goddess vanished",
        zoneName     = "Harandar",
        flavorTeaser = "A goddess vanished",
        logoPath     = "Interface\\AddOns\\IMAGO\\media\\Eras\\Campaigns\\MN_AGoddessVanished.png",
        logo_w       = 1280, logo_h = 720,
        npcLinks     = {"halduron_brightwing", "orweyna", "rootwarden_ruia"},
        text         = "With the Lightbloom still threatening Quel'Thalas, {npc:halduron_brightwing} and the Champion accompany " ..
                       "{npc:orweyna} to her homeland of Harandar, where the infection had also begun to spread. They gathered " ..
                       "Alndust, magical remnants from the haranir's missing goddess' dreams, and managed to use it to combat " ..
                       "the Lightbloom. {npc:rootwarden_ruia} betrayed the Hara'ti by willingly aiding the Light's infection and " ..
                       "was defeated by an alliance of haranir and blood elves. The reclusive haranir took their first steps " ..
                       "outside their homeland and joined the fight against Xal'atath.",
        loreBits     =
            "The Farstriders under Ranger General Halduron Brightwing were still keeping the rampaging Lightbloom in check but " ..
            "began to grow desperate as nothing seemed to be able to stop the infection. Alongside the Champion, Halduron thus " ..
            "accompanied Orweyna to her homeland of Harandar. They met with the Elders to petition for aid but were met with " ..
            "resistance. The Elders were not used to or fond of outsiders in their lands and Rootwarden Ruia was the most vocal " ..
            "antagonist, even dismissing the Lightbloom as inconsequential. In the end, they were granted permission to stay in " ..
            "Harandar under the condition that they pass the tests in the Den of Echoes.\n\n" ..
            "Within the Den they witnessed the history of the haranir by following the visions of the Den's magical paintings. " ..
            "They came to understand that the haranir were once roaming the surface of Azeroth but were the first to hear the " ..
            "Radiant Song. They had followed it deep underground, braving servants of the Titans and minions of the Old Gods on " ..
            "their way until they reached Harandar. The goddess they sought, who they called Aln'hara instead of Azeroth, had " ..
            "long vanished from Harandar.\n\n" ..
            "They awoke in Har'mara after passing the test and were greeted by Elder Hagar, the first supportive leader of the " ..
            "Hara'ti. Ruutani, infected by the Lightbloom, attacked the village and by chance Orweyna and Halduron discovered " ..
            "a weakness to the infection: Alndust. The Elders would not part with what they had, so while Halduron brought the " ..
            "news back to Silvermoon's magisters, Orweyna and the Champion ventured to the Rift of Aln. Here, the last cries " ..
            "of their goddess echoed and her song induced despair and madness. Amarakk helped them stay sane and combat fearsome " ..
            "monstrosities that had formed from Alndust - the essence of Aln'hara's dreams.\n\n" ..
            "The first tests of wielding Alndust against the Lightbloom were a success and they managed to halt the spread of " ..
            "the radiant growth in Ruia's village of Har'alnor. Curiously, Ruia was nowhere to be found. Halduron returned with " ..
            "grave news: The spread in Eversong Woods had accelerated and was threatening to take over all of Quel'Thalas.\n\n" ..
            "Without Alndust, the Farstriders were overrun, even with Orweyna's help. Ruia - now calling himself Lightwarden - " ..
            "revealed himself infected by the Light, and had willingly spread the bloom in both Harandar and Quel'Thalas. Grand " ..
            "Magister Rommath arrived on the scene, prepared to burn down the entirety of Eversong Woods to halt the threat. " ..
            "Before he could do so, the Elders of the Hara'ti joined the defenders, and together, they stopped the Lightbloom " ..
            "and defeated Ruia.\n\nThe haranir declared to leave their isolationist way of life behind and joined the fight against the Void.\n\n" ..
            "|cFFc8a84bSide Quests|r\n\n" ..
            "|cFFe0c06aA Goblin in Harandar:|r\n" ..
            "After having become friends during their adventures in Undermine, Gazlowe fulfilled his promise to Orweyna and " ..
            "visited her in her homeland. He enjoyed seeing the culture so vastly different from his own.\n\n" ..
            "|cFFe0c06aCultivating Hope:|r\n" ..
            "Elder Hagar asked the Champion to aid her. She had formerly been the Rootwarden of Teldrassil and although the " ..
            "tree had long since died, she still held out hope that the roots might one day grow back. The Champion helped her " ..
            "tend to the charred roots and remembered the War of Thorns and the Burning of Teldrassil.\n\n" ..
            "|cFFe0c06aThe Grudge Pit:|r\n" ..
            "The fungarians of Harandar passed their time in a fighting ring called the Grudge Pit. The Champion was invited " ..
            "to join the brawl and trained a team of fungarian combatants to claim ultimate victory in the Pit.",
    },
    {
        heading      = "Arator's Journey",
        zoneName     = "The Arcantina",
        flavorTeaser = "Arator's Journey",
        logoPath     = "Interface\\AddOns\\IMAGO\\media\\Eras\\Campaigns\\MN_AratorsJourney.png",
        logo_w       = 1280, logo_h = 720,
        npcLinks     = {"alonsus_faol", "arator", "turalyon"},
        text         = "{npc:alonsus_faol} tasked the Champion and {npc:arator} with gathering various relics of the Light to " ..
                       "reinvigorate the weakening defenders of the Sunwell. Arator was still reeling from his last clash with " ..
                       "his father, and Alonsus helped him understand what it meant to be a paladin. His faith renewed, the " ..
                       "young Windrunner then accompanied the Sons of Lothar to reforge {npc:turalyon}'s shield. Hoping to " ..
                       "connect with his father again, Arator kept the shield for himself when Turalyon rejected it.",
        loreBits     =
            "Archbishop Alonsus Faol had noticed Arator Windrunner's distress and waning faith in the Light and decided to " ..
            "solve two problems at once. He invited the young paladin and the Champion to the Sunwell and traveled with them " ..
            "to Light's Hope Chapel. The defenders of the Sunwell had been channeling the Light without pause to hold the " ..
            "Voidstorm at bay and were growing weaker. It fell on the trio to gather holy relics infused with the Light to " ..
            "empower them once more, and Alonsus used that time to help Arator understand what had made him choose the path " ..
            "of the Light in the first place.\n\n" ..
            "Light's Hope Chapel was under siege from the undead of the Plaguelands, and without the paladins, the Knights " ..
            "of the Ebon Blade had stepped up to defend it. Arator collected the relics of famous paladin heroes from the " ..
            "past, baffled that almost all of them were trinkets and baubles instead of mighty weapons.\n\n" ..
            "They went to the Scarlet Monastery next and had to fight their way through the zealous Scarlet Crusade. Arator " ..
            "realized that the Light wasn't good or bad; it fell on the wielder how to use it.\n\n" ..
            "After returning the artifacts to Prophet Velen and granting the defenders much-needed time and resources, Alonsus " ..
            "invited his two companions to Hammerfall. They helped out with mundane but vital tasks while the archbishop " ..
            "assembled the Sons of Lothar - Turalyon's friends and war companions during the Second War.\n\n" ..
            "Arator learned of his father's battles and the pain he still carried from the losses of war and, alongside the " ..
            "Sons of Lothar, managed to restore Turalyon's shield. He tried to give it back to his father to remind him of " ..
            "the paladin he once was but Turalyon couldn't accept it. The old commander was horrified at what he had done to " ..
            "his son during the battle against the trolls, and was certain that there were some things even Arator would not " ..
            "be able to redeem.\n\n" ..
            "Alonsus was disappointed, but happy that at least Arator had regained his faith and the Sons of Lothar invited " ..
            "the young paladin and the Champion to the Arcantina - a magical tavern inside a pocket dimension - and shared a " ..
            "drink and some stories. Arator decided to keep his father's shield for himself.\n\n" ..
            "|cFFc8a84bSide Quests|r\n\n" ..
            "|cFFe0c06aDo You Know This Evil:|r\n" ..
            "There was a commotion on the Shining Span - the bridge leading to the Sunwell Ramparts. Magister Umbric, " ..
            "prohibited from returning to Silvermoon, had done so anyway out of desperation. He wanted to get close to " ..
            "the Voidstorm to study it, but was apprehended and almost executed on the spot by the Vanguard of the Light. " ..
            "In the end, he was let go to continue his research.\n\n" ..
            "|cFFe0c06aTales of the Arcantina:|r\n" ..
            "Many familiar faces greeted the Champion when they shared a drink with the Sons of Lothar in the magical " ..
            "tavern. Together they revisited locations such as Nagrand, the Firelands, or even Icecrown Citadel and helped " ..
            "make the Arcantina an even cozier place filled with fond memories.",
    },
    {
        heading      = "Breaching the Voidstorm",
        zoneName     = "The Voidstorm",
        flavorTeaser = "Breaching the Voidstorm",
        logoPath     = "Interface\\AddOns\\IMAGO\\media\\Eras\\Campaigns\\MN_BreachingTheVoidstorm.png",
        logo_w       = 1280, logo_h = 720,
        npcLinks     = {"magister_umbric", "arator", "lothraxion", "alleria_windrunner", "decimus"},
        text         = "{npc:magister_umbric} found a way to infiltrate the Voidstorm and the ren'dorei took the fight to " ..
                       "Xal'atath directly. Accompanied by {npc:arator} and {npc:lothraxion}, they reunited with " ..
                       "{npc:alleria_windrunner} and formed an uneasy alliance with the domanaar {npc:decimus}. They confronted " ..
                       "Xal'atath's minions and struck a heavy blow to her forces, but the oppressive darkness of the Voidstorm " ..
                       "made Lothraxion's zeal shine brighter than ever. When he turned against his own allies, the dreadlord was slain.",
        loreBits     =
            "The Voidstorm was growing stronger and waves of magical darkness began to shake the walls of Silvermoon. Even " ..
            "Turalyon admitted that the Vanguard of the Light needed help and thus, Magister Umbric was given free rein to " ..
            "finish his research. Luckily, the void elf needed but one thing: the Cynosure of Twilight - an artifact kept " ..
            "in Magister's Terrace. After thwarting Rommath's attempts to keep him out and overcoming a brief setback caused " ..
            "by invading void creatures, Umbric finally managed to open a small portal into the Voidstorm.\n\n" ..
            "Accompanied by Arator, the Champion and Lothraxion, Umbric and his ren'dorei set foot into Xal'atath's domain. " ..
            "They were assaulted by an oppressive darkness unlike any they've ever witnessed before but endured it for now. " ..
            "They immediately established a small base of operations and took the fight to the Void. Alleria Windrunner, " ..
            "still hunting the Harbinger, found them and reunited with her son.\n\n" ..
            "They found out about a method called Shadowgrafting that was used by the Devouring Host to force creatures " ..
            "into obedience. They developed a similar weapon and captured a domanaar named Decimus to extract more information " ..
            "about the enemy. He told them of a powerful weapon harbored by Nexus-King Salhadaar: the dark naaru, T'era. " ..
            "Alleria, Arator and Lothraxion set out to free the once-holy being, but were almost killed in the attempt. " ..
            "Desperate, Alleria unleashed L'ura, the dark naaru she herself had absorbed, and T'era was put to eternal rest.\n\n" ..
            "Pressing him for more information, Decimus revealed a weakness in the Devouring Host's operations in the " ..
            "Voidstorm. He would help the mortal heroes turn off the ethereal pylon network and thus give them the possibility " ..
            "to open portals for the entire Vanguard of the Light. Conveniently, this would mean taking out a few of Decimus' " ..
            "rivals, but Alleria and Arator agreed, lacking any other options.\n\n" ..
            "Lothraxion fought alongside them, but began seeing enemies all around. He didn't trust Decimus, didn't trust the " ..
            "ren'dorei and began to recklessly endanger his allies' lives if it meant success. In the end, he set out to tear " ..
            "down the Nexus-Points holding the Voidstorm together, despite knowing that the resulting surge of energy would " ..
            "obliterate Silvermoon instantly. Alleria tried to reason with her old friend, but had to kill the light-blinded " ..
            "nathrezim to preserve her homeland.\n\n" ..
            "Decimus fulfilled their promise and turned off the pylons, and in mere moments, High Exarch Turalyon led his " ..
            "army into the Voidstorm, ready to assault Xal'atath's stronghold and put an end to her schemes once and for all.\n\n" ..
            "|cFFc8a84bSide Quests|r\n\n" ..
            "|cFFe0c06aThe Nethersent:|r\n" ..
            "The domanaar captured creatures and people from many different worlds in the Great Dark Beyond and forced them " ..
            "to fight for their amusement. Among them was a group of draenei not from Azeroth calling themselves 'the " ..
            "Nethersent' and the Champion aided them in returning home.\n\n" ..
            "|cFFe0c06aShadow Puppets:|r\n" ..
            "Callum Ashvane was captured and forced to kill his allies by the domanaar Imperia. In an attempt to rescue her " ..
            "loved one, the blood knight Anais gave her life and when Callum died defying his captor, the two paladins " ..
            "reunited in the Light.\n\n" ..
            "|cFFe0c06aA Voice in the Dark:|r\n" ..
            "Riftwalker Alayshen and the Champion uncovered old tablets hinting at the history of the Voidstorm. They " ..
            "encountered Akintunde the Unstoppable, a spectre claiming to have once destroyed the great civilizations with " ..
            "a mighty weapon when this world was still whole and known as Predacea. The Champion laid the spirit to rest " ..
            "and vowed to let this new dangerous knowledge die with it.",
    },
    {
        heading      = "Behold, Midnight falls upon us",
        zoneName     = "March on Quel'Danas",
        flavorTeaser = "Behold, Midnight falls upon us",
        logoPath     = "Interface\\AddOns\\IMAGO\\media\\Eras\\Campaigns\\MN_BeholdMidnightFallsUponUs.png",
        logo_w       = 1280, logo_h = 720,
        npcLinks     = {"alleria_windrunner", "turalyon", "arator", "lorthemar_theron"},
        text         = "The Vanguard of the Light breached the Voidstorm and assaulted Xal'atath in her own stronghold – the " ..
                       "Voidspire. Catastrophe ensued when {npc:alleria_windrunner} fell to the Harbinger's blade and the dark " ..
                       "naaru L'ura was set free. With the Sunwell corrupted and Alleria and {npc:turalyon} lost to the darkness, " ..
                       "it fell on {npc:arator} and {npc:lorthemar_theron} to unite the elven people and drive back the Void from " ..
                       "Silvermoon. The Sunwell was cleansed and reborn as the Dawnwell – less powerful, but less dangerous as " ..
                       "well. Xal'atath, however, had moved through the well to depths unknown.",
        loreBits     =
            "High Exarch Turalyon and Magister Umbric assembled their forces in the heart of the Voidstorm. Before taking " ..
            "the fight to Xal'atath directly, they needed to clear the way, and they did so without mercy for the Devouring " ..
            "Host. Alleria, meanwhile, worked alone to track and take out key targets behind enemy lines. When the coast was " ..
            "clear, she reunited with Arator and Turalyon and found out what had happened between them during the Amani " ..
            "skirmish in Eversong Woods. She was furious with Turalyon, but discussions had to wait.\n\n" ..
            "The Vanguard of the Light, alongside Magister Umbric, Alleria, and the Champion, took the fight to Xal'atath's " ..
            "stronghold. One by one, Xal'atath's forces fell before them, including Nexus-King Salhadaar, but the higher they " ..
            "climbed the spire, the more tensions flared up. Many paladins of the Vanguard had become so blinded by the Light, " ..
            "and in their righteous fury they couldn't separate friends from foes. When Turalyon ordered them to stand down " ..
            "after they antagonized Umbric and Alleria, a fight ensued and a lot of once-noble paladins died that day.\n\n" ..
            "At the top of the Voidspire, Alleria confronted Xal'atath without hesitation. She had hunted her for a long time " ..
            "and now, in their final confrontation, Alleria lost. Overwhelmed by the voices in her head, she attacked her own " ..
            "allies and the Harbinger exploited her weakness, wielding the Blade of the Black Empire to violently cut L'ura " ..
            "from the elf. As the spire exploded in a surge of Void energy, Umbric managed to teleport himself, Arator and " ..
            "the Champion to safety, but Alleria and Turalyon vanished in the darkness.\n\n" ..
            "The Sunwell was corrupted, and the Magisters rescued the defenders stationed by it at the last second. Silvermoon " ..
            "was drenched in darkness and all seemed lost. Arator, having already lost his parents, wouldn't lose hope as " ..
            "well. He convinced Lor'themar to seek out the night elves and the Silver Covenant of Dalaran to unite the elven " ..
            "people under one goal. Lacking other options, the regent lord agreed and managed to convince both formerly " ..
            "antagonistic factions to join in the reclamation of Quel'Danas. Lor'themar's wife, First Arcanist Thalyssra, " ..
            "lent her full support from Suramar as well.\n\n" ..
            "United, the elves stormed the Darkwell and defeated Xal'atath's forces during the Battle of the Bridge. Vereesa, " ..
            "Arator and the Champion managed to kill L'ura but were left on the verge of hopelessness when Xal'atath arrived. " ..
            "Rescue came unexpectedly from Sylvanas Windrunner - saving her family from doom and even giving the Harbinger " ..
            "pause. Xal'atath left through the Darkwell, down into depths unknown and Sylvanas returned to the Maw.\n\n" ..
            "Victory had been achieved together and it was in no small part due to Magister Umbric and the ren'dorei's help. " ..
            "Even Grand Magister Rommath had to admit as much and revoked the ren'dorei's exile from Quel'Thalas. Reluctantly, " ..
            "he also officially sanctioned his former friend's studies of the Void, much to Umbric's joy. Meanwhile, the high " ..
            "elves of the Silver Covenant under Vereesa Windrunner entered into a compact with the Sunreavers, under Aethas " ..
            "Sunreaver. The former enemies agreed that peace was now the best path forward, but that old hatreds would not be " ..
            "easily forgotten.\n\n" ..
            "With the Void extinguished from Silvermoon, it was decided that the Sunwell, as it had been before, was too " ..
            "dangerous to be restored again. Thus, all elven nations contributed a token offering, and the font was reborn " ..
            "as the Dawnwell - a symbolic monument to commemorate unity and survival.",
    },
}

-- TAB 3: PATCHES & NEW HORIZONS — Chronologische Patch-Timeline
IMAGOdb.eras["midnight"].patches = {
    {
        version  = "12.0.7",
        title    = "A Rejection of Unity",
        logoPath = "Interface\\AddOns\\IMAGO\\media\\Eras\\Patches\\MN_Patch_12.0.7.png",
        logo_w   = 1280, logo_h = 720,
        newZones = {"Naigtal", "Val"},
        npcLinks = {"orweyna", "zuljan", "loa_speaker_kinduru"},
        text     = "{npc:orweyna} invited the leaders of Azeroth's elves and trolls to Harandar to reveal a " ..
                   "controversial truth: elves and trolls used to be one people. Infuriated, {npc:zuljan} left " ..
                   "the meeting and set out to reclaim a weapon of old for the Amani, a creature called Ula'tek. " ..
                   "Accompanied by his uncle, {npc:loa_speaker_kinduru}, and a mysterious spirit bound within a " ..
                   "cursed mask, he descended ever deeper into rage. In an accident, he killed his uncle and " ..
                   "followed the spirit, who revealed himself as Hex Lord Malacrass, to find Ula'tek.",
        loreBits =
            "Orweyna once more greeted the Champion and Lor'themar Theron in Silvermoon to invite them to a " ..
            "meeting of the elven and troll leaders in Harandar. They agreed and met representatives of nearly " ..
            "every elven and troll nation in the heart of the haranir capital: Queen Talanji and her escort of " ..
            "Zandalari, Rokhan and his Darkspear, Shandris, Umbric and Vereesa who spoke for the elves of the " ..
            "Alliance, Thalyssra and her nightborne escort. Finally, Zul'jan arrived instead of his sister and " ..
            "tensions were high.\n\n" ..
            "Elder Hagar revealed to all present that elves and trolls were once the same people: the original " ..
            "haranir before they ventured below the surface. It was meant as an act of kindness, to show former " ..
            "enemies that there was a shared heritage that could unite them. It had the opposite effect and " ..
            "Zul'jan took it worst of all. Furious, he stormed off, followed by Orweyna and Kinduru. The haranir " ..
            "scout then showed the young troll a vision of old, when the Amani summoned a creature named Ula'tek " ..
            "from the Rift of Aln to defeat the C'Thraxxi general Kith'ix.\n\n" ..
            "Determined to uncover the truth about Ula'tek, Zul'jan returned to Zul'Aman and together with the " ..
            "hash'ura Champion and his uncle, went through every old scroll in Amani'Zar village. They didn't " ..
            "find what they were looking for, but discovered a possessed mask, containing the spirit of a troll, " ..
            "among Kinduru's possessions. The troll spirit inside the mask claimed to know about Ula'tek but " ..
            "since his memory was still foggy, the trio first empowered it with various artifacts and recovered " ..
            "the scrolls of Hex-Lord Malacrass from the Vilebranch trolls.\n\n" ..
            "All clues then led to a key to Ula'tek in the shape of a dagger. Sensing the dark energies inside " ..
            "it, Kinduru tried to warn his nephew, but it was too late. The dagger triggered a magical explosion " ..
            "that left the Champion unconscious and Kinduru dead. Horrified at what had happened, Zul'jan knew " ..
            "he couldn't stop what he had begun. The spirit in the mask revealed himself to be Hex-Lord Malacrass " ..
            "himself, who had been thought dead, and the two left to claim Ula'tek's power.\n\n" ..
            "In Amani'Zar, Zul'jarra held a funeral for her uncle and vowed to save Zul'jan from the destructive " ..
            "path he was following. Orweyna, feeling partly responsible for what had happened, promised to help " ..
            "her as best as she could.\n\n" ..
            "|cFFc8a84bSide Quests|r\n\n" ..
            "|cFFe0c06aA Trip through the Stars:|r\n" ..
            "Remnants of Xal'atath's army had been assaulting Quel'Thalas and Zul'Aman and to stop the " ..
            "incursions, Riftblade Maella and Decimus teamed up to strike at the enemy directly. They dismantled " ..
            "ethereal operations on the planet of Naigtal, and thinned the domanaar numbers on Val.\n\n" ..
            "|cFFe0c06aThe Omnium Folio:|r\n" ..
            "Working together again, Grand Magister Rommath and Magister Umbric restored a powerful magical " ..
            "device called the Sunstrider Omnium. With it, they studied the magical effects of the new Dawnwell " ..
            "on the leylines.",
    },
}

-- TAB 4: KEY FIGURES — Hybrid (slug + era-spezifischer Blurb)
IMAGOdb.eras["midnight"].keyFigures = {
    { slug="lorthemar_theron", arcLabel="Last Bastion of Defense",                    blurb="The leader of the blood elves was in charge of the defense of Quel'Thalas. He compromised and fought hard, and eventually saw his nation survive." },
    { slug="lady_liadrin",     arcLabel="Mender of Bridges",                          blurb="Summoned the Vanguard of the Light and forged a tentative alliance with the Amani, breaking a cycle of hatred that lasted for thousands of years." },
    { slug="arator",           arcLabel="The Redeemer",                               blurb="Stepped out of his parents' shadows as a beacon of hope in his own right, rather than simply the son of legends." },
    { slug="turalyon",         arcLabel="Commander, Father, Light-blinded Paladin",   blurb="As commander of the Vanguard of the Light, Turalyon's unwavering faith became both his greatest strength and his greatest flaw. Trying to balance duty and family, he nearly lost both." },
    { slug="xalatath",         arcLabel="Bringer of the End",                         blurb="She achieved everything she came for. With the Sunwell corrupted, Xal'atath moved one step closer to Azeroth's end." },
    { slug="magister_umbric",  arcLabel="The Wayward Mage",                           blurb="Determined to get back into Silvermoon's good graces, Umbric used his mastery of the Void to take the battle to Xal'atath, fighting her at her own game." },
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
