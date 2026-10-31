-- ============================================================
-- IMAGO — locales/base/data/eras.lua  (enUS fallback)
-- 4-tab schema: summary, fastFacts, campaigns, patches, keyFigures
-- NPC links via {npc:slug_midnight} in texts (rendered in purple).
-- ============================================================

-- ============================================================
-- MIDNIGHT  (complete data)
-- ============================================================
IMAGOdb.eras["midnight"].name       = "World of Warcraft: Midnight"
IMAGOdb.eras["midnight"].logoPath   = "Interface\\AddOns\\IMAGO\\Media\\Eras\\Logos\\midnight_logo.tga"
IMAGOdb.eras["midnight"].bgPath     = "Interface\\AddOns\\IMAGO\\Media\\Eras\\Backgrounds\\midnight_bg.tga"
IMAGOdb.eras["midnight"].region     = "Quel'Thalas"
IMAGOdb.eras["midnight"].antagonist = "Xal'atath"
IMAGOdb.eras["midnight"].conflict   = "Defense of the Sunwell"
IMAGOdb.eras["midnight"].year       = 2026

-- TAB 1: OVERVIEW — summary + fast facts
IMAGOdb.eras["midnight"].summary =
    "Xal'atath's plans have come to fruition and the blood elves of Silvermoon bear witness to a massive " ..
    "Voidstorm breaching the skies above the Sunwell. The Harbinger of the Void seeks to corrupt its holy " ..
    "waters and it falls on the Defenders of Quel'Thalas, as well as an army of paladins and priests, to " ..
    "defend it at all costs."

IMAGOdb.eras["midnight"].fastFacts = {
    cosmicForces = "The Void vs. the Light",
    casualties   = "- Alleria and Turalyon: Lost in the Darkwell\n- Lothraxion: Consumed by light-blinded rage and killed by his allies",
    worldScar    = "The Sunwell's corruption and reformation as the Dawnwell",
    bigQuestion  = "Will the Sunwell endure as Quel'Thalas' lifeline - or become the Void's most devastating weapon against all of Azeroth?",
}

-- TAB 2: CAMPAIGNS & REGIONS — starting zones with map overlays
IMAGOdb.eras["midnight"].campaigns = {
    {
        heading      = "Call of the Light",
        zoneName     = "Isle of Quel'Danas",
        flavorTeaser = "Call of the Light",
        logoPath     = "Interface\\AddOns\\IMAGO\\media\\Eras\\Campaigns\\MN_CallOfTheLight.png",
        logo_w       = 1280, logo_h = 720,
        npcLinks     = {"turalyon_midnight"},
        text         = "The Voidstorm was unleashed upon the Isle of Quel'Danas, forcing the blood elves of Silvermoon to fight " ..
                       "for survival against the full might of Xal'atath's army - the Devouring Host. The Sunwell itself aided " ..
                       "its people when it summoned an army of paladins and priests, led by {npc:turalyon_midnight}, to wield " ..
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
        npcLinks     = {"arator_midnight", "magister_umbric_midnight", "lord_antenorian_midnight", "zuljan_midnight"},
        text         = "Regrouping in Silvermoon City, the blood elves and the Vanguard of the Light faced multiple challenges " ..
                       "at once. {npc:arator_midnight} and {npc:magister_umbric_midnight} discovered that the Twilight's Blade cult had infiltrated " ..
                       "Tranquilien and set out to kill the cult's leader – {npc:lord_antenorian_midnight}. Rampant plant growth fueled by " ..
                       "the Light of the Sunwell began harming the lands around the capital. At the borders of Quel'Thalas and " ..
                       "Zul'Aman, Amani trolls led by {npc:zuljan_midnight} clashed with the elves in a skirmish.",
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
        npcLinks     = {"lady_liadrin_midnight", "zaljarra_midnight", "zuljan_midnight"},
        text         = "In need of allies rather than more enemies, {npc:lady_liadrin_midnight} and the Champion assisted the Amani " ..
                       "trolls in combating their mutual enemy, the Twilight's Blade. They joined Chieftain {npc:zaljarra_midnight} in " ..
                       "her endeavor to become hash'ey and, in the process, successfully brought the loa back to Zul'Aman. As " ..
                       "allies, they drove the Void cult off troll lands and united the tribes under their new hash'ey. " ..
                       "{npc:zuljan_midnight}, brother of Zul'jarra, disapproved of relying on the loa but fought alongside her nonetheless.",
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
        npcLinks     = {"halduron_brightwing_midnight", "orweyna_midnight", "rootwarden_ruia_midnight"},
        text         = "With the Lightbloom still threatening Quel'Thalas, {npc:halduron_brightwing_midnight} and the Champion accompany " ..
                       "{npc:orweyna_midnight} to her homeland of Harandar, where the infection had also begun to spread. They gathered " ..
                       "Alndust, magical remnants from the haranir's missing goddess' dreams, and managed to use it to combat " ..
                       "the Lightbloom. {npc:rootwarden_ruia_midnight} betrayed the Hara'ti by willingly aiding the Light's infection and " ..
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
        npcLinks     = {"alonsus_faol_midnight", "arator_midnight", "turalyon_midnight"},
        text         = "{npc:alonsus_faol_midnight} tasked the Champion and {npc:arator_midnight} with gathering various relics of the Light to " ..
                       "reinvigorate the weakening defenders of the Sunwell. Arator was still reeling from his last clash with " ..
                       "his father, and Alonsus helped him understand what it meant to be a paladin. His faith renewed, the " ..
                       "young Windrunner then accompanied the Sons of Lothar to reforge {npc:turalyon_midnight}'s shield. Hoping to " ..
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
        npcLinks     = {"magister_umbric_midnight", "arator_midnight", "lothraxion_midnight", "alleria_windrunner_midnight", "decimus_midnight"},
        text         = "{npc:magister_umbric_midnight} found a way to infiltrate the Voidstorm and the ren'dorei took the fight to " ..
                       "Xal'atath directly. Accompanied by {npc:arator_midnight} and {npc:lothraxion_midnight}, they reunited with " ..
                       "{npc:alleria_windrunner_midnight} and formed an uneasy alliance with the domanaar {npc:decimus_midnight}. They confronted " ..
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
        npcLinks     = {"alleria_windrunner_midnight", "turalyon_midnight", "arator_midnight", "lorthemar_theron_midnight"},
        text         = "The Vanguard of the Light breached the Voidstorm and assaulted Xal'atath in her own stronghold – the " ..
                       "Voidspire. Catastrophe ensued when {npc:alleria_windrunner_midnight} fell to the Harbinger's blade and the dark " ..
                       "naaru L'ura was set free. With the Sunwell corrupted and Alleria and {npc:turalyon_midnight} lost to the darkness, " ..
                       "it fell on {npc:arator_midnight} and {npc:lorthemar_theron_midnight} to unite the elven people and drive back the Void from " ..
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

-- TAB 3: PATCHES & NEW HORIZONS — chronological patch timeline
IMAGOdb.eras["midnight"].patches = {
    {
        version  = "12.0.7",
        title    = "A Rejection of Unity",
        logoPath = "Interface\\AddOns\\IMAGO\\media\\Eras\\Patches\\MN_Patch_12.0.7.png",
        logo_w   = 1280, logo_h = 720,
        newZones = {"Naigtal", "Val"},
        npcLinks = {"orweyna_midnight", "zuljan_midnight", "loa_speaker_kinduru_midnight"},
        text     = "{npc:orweyna_midnight} invited the leaders of Azeroth's elves and trolls to Harandar to reveal a " ..
                   "controversial truth: elves and trolls used to be one people. Infuriated, {npc:zuljan_midnight} left " ..
                   "the meeting and set out to reclaim a weapon of old for the Amani, a creature called Ula'tek. " ..
                   "Accompanied by his uncle, {npc:loa_speaker_kinduru_midnight}, and a mysterious spirit bound within a " ..
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

-- TAB 4: KEY FIGURES — hybrid (slug + era-specific blurb)
IMAGOdb.eras["midnight"].keyFigures = {
    { slug="lorthemar_theron_midnight", arcLabel="Last Bastion of Defense",                    blurb="The leader of the blood elves was in charge of the defense of Quel'Thalas. He compromised and fought hard, and eventually saw his nation survive." },
    { slug="lady_liadrin_midnight",     arcLabel="Mender of Bridges",                          blurb="Summoned the Vanguard of the Light and forged a tentative alliance with the Amani, breaking a cycle of hatred that lasted for thousands of years." },
    { slug="arator_midnight",           arcLabel="The Redeemer",                               blurb="Stepped out of his parents' shadows as a beacon of hope in his own right, rather than simply the son of legends." },
    { slug="turalyon_midnight",         arcLabel="Commander, Father, Light-blinded Paladin",   blurb="As commander of the Vanguard of the Light, Turalyon's unwavering faith became both his greatest strength and his greatest flaw. Trying to balance duty and family, he nearly lost both." },
    { slug="xal_atath_midnight",        arcLabel="Bringer of the End",                         blurb="She achieved everything she came for. With the Sunwell corrupted, Xal'atath moved one step closer to Azeroth's end." },
    { slug="magister_umbric_midnight",  arcLabel="The Wayward Mage",                           blurb="Determined to get back into Silvermoon's good graces, Umbric used his mastery of the Void to take the battle to Xal'atath, fighting her at her own game." },
}

-- ============================================================
-- THE WAR WITHIN  (complete data)
-- ============================================================
IMAGOdb.eras["tww"].name       = "World of Warcraft: The War Within"
IMAGOdb.eras["tww"].logoPath   = "Interface\\AddOns\\IMAGO\\Media\\Eras\\Logos\\the_war_within_logo.tga"
IMAGOdb.eras["tww"].bgPath     = "Interface\\AddOns\\IMAGO\\Media\\Eras\\Backgrounds\\the_war_within_bg.tga"
IMAGOdb.eras["tww"].region     = "Khaz Algar"
IMAGOdb.eras["tww"].antagonist = "Xal'atath, Harbinger of the Void"
IMAGOdb.eras["tww"].conflict   = "The Radiant Song's Warnings"
IMAGOdb.eras["tww"].year       = 2024

-- TAB 1: OVERVIEW
IMAGOdb.eras["tww"].summary =
    "The Radiant Song has been heard all across Azeroth, calling her champions to the remote shores of " ..
    "Khaz Algar. There, beneath the ancient earthen city of Dornogal, Xal'atath, Harbinger of the Void, " ..
    "gathers a formidable army in the depths below. The mysterious Dark Heart rests in her possession, " ..
    "and the Champions of Azeroth, alongside their allies, follow her to the deep places of the earth " ..
    "to seize the artifact before her plans come to fruition."

IMAGOdb.eras["tww"].fastFacts = {
    bigQuestion  = "Can Xal'atath be stopped before her mysterious plan comes to fruition?",
    cosmicForces = "The Void seeking to topple the cosmic balance",
    casualties   = "- Renzik \"the Shiv\": Gave his life for a better Undermine\n- Locus-Walker: Betrayed and killed by Xal'atath\n- Jastor Gallywix: Died after the goblins of Undermine rose up against his tyranny",
    worldScar    = "- With Xal'atath's victory, the threat of the Void promises to devour Azeroth soon.\n- K'aresh might be restored in time.\n- The revelation of the Manifold hints at a great Titan conspiracy.",
}

-- TAB 2: CAMPAIGNS & REGIONS
IMAGOdb.eras["tww"].campaigns = {
    {
        heading      = "Farewell, City of Magic",
        zoneName     = "Visions of Azeroth",
        flavorTeaser = "Farewell, City of Magic",
        npcLinks     = {"alleria_windrunner_tww", "anduin_wrynn_tww", "magni_bronzebeard_tww"},
        text         = "Veteran heroes of Azeroth, such as {npc:alleria_windrunner_tww}, {npc:anduin_wrynn_tww} and {npc:magni_bronzebeard_tww} " ..
                       "assembled in Dalaran following the radiant visions that they have all been " ..
                       "witnessing. After following the visions to Khaz Algar, the heroes on the flying city were " ..
                       "quickly besieged by Xal'atath and her nerubian allies. Archmage Khadgar tried to fight her " ..
                       "off but was consumed by the Dark Heart and the city was obliterated.",
        loreBits     = [[The mysterious Radiant Song had only grown stronger in intensity, and Thrall needed to take action. He traveled to Silithus, recruiting a still-grieving Anduin Wrynn, and sought out the Speaker of Azeroth: Magni Bronzebeard. When he contacted the world soul directly, hoping to find out the meaning behind the cryptic visions, the strain of Azeroth's tormented outcries proved too much, and Magni fell into a coma.

Alongside Jaina Proudmoore, Thrall and Anduin took Magni to Dalaran, where the mages of the Kirin Tor could see to his recovery. His next of kin, namely his daughter Moira and grandson Dagran, arrived as well after hearing the news. Despite her strained relationship with his father, Moira still wished for his well-being, if only for her son's sake. Her wishes were answered, and Magni woke up, revealing the destination Azeroth had showed him: the distant island of Khaz Algar.

The recently returned Archmage Drenden tasked the Champion with realigning the defensive wards around the floating city before the teleport was performed. When they arrived, everyone but Alleria Windrunner was excited by the new wondrous lands that awaited them. She had received visions different from the Radiant Song, and found out that Drenden had been dead for years. Xal'atath had infiltrated the Kirin Tor and now summoned her nerubian allies through Dalaran's weakened wards.

Alleria, Anduin and the Champion immediately evacuated everybody they could while trying to fight off the endless swarms of nerubians. Meanwhile, Khadgar, leader of the Kirin Tor, confronted Xal'atath directly. He would defend Dalaran and the world with his life, and a fight ensued when he noticed the Void entity absorb the magical city's arcane energies. In a last-ditch effort, Khadgar teleported Alleria to safety and was engulfed in an enormous explosion that turned Dalaran into rubble.]],
    },
    {
        heading      = "New Earthen Allies",
        zoneName     = "The Isle of Dorn",
        flavorTeaser = "New Earthen Allies",
        npcLinks     = {},
        text         = "The survivors washed up on the shores of the Isle of Dorn and made contact with the earthen " ..
                       "of Dornogal. Together, they fended off Xal'atath's invading forces. It became apparent that " ..
                       "the earthen were divided between the still-loyal followers of the Titans and the unbound, " ..
                       "who didn't wish to follow their assigned edicts anymore. Moira Thaurissan was able to unite " ..
                       "the two factions again, earning their trust. Finally, they restored the collapsed Coreway — " ..
                       "a passage leading deep underground.",
        loreBits     = [[In the fallen ruins of Dalaran, the Champion awakened dazed and buried beneath rubble, just in time to defend themselves from incoming nerubians determined to finish the job. Jaina Proudmoore and Thrall rallied the survivors but were ambushed by Queensguard Zirix. In their battered state, they would have struggled against the new onslaught, but help came unexpectedly in the form of Algarian Stormriders led by Stormward Baelgrim, who drove the nerubians into retreat. When the earthen natives saw Magni, they called him "thraegar" and showed him reverence.

Baelgrim invited the survivors to their capital, Dornogal, but the new allies had to fight side by side again when they saw the nerubians wreak havoc in the city. Although they beat the creatures back underground, the Coreway – a massive passage leading to the earthen settlements underground – collapsed in the attack. Jaina and Thrall knew their forces were outnumbered and left for the Eastern Kingdoms to call on reinforcements from the Horde and the Alliance.

Dagran befriended Machine Speaker Brinthe and was made aware of the slow collapse of the earthen people. Their titan-made machines, which kept them alive, were beginning to break down and with their creators gone for such a long time, many earthen had left the capital and their titan-given edicts behind to live a life of their own choosing. While repairs on the Coreway commenced, Moira Thaurissan declared that she would find the leader of these unbound earthen and bring her back to her people.

Moira, Baelgrim and the Champion found Adelgonn in Freywold Village. They helped her defend her people against the nerubians, who did not relent in the slightest. They evacuated the injured to Dornogal and helped out Alleria Windrunner on the way, who had engaged Queensguard Zirix to find out where Xal'atath had been hiding since the fall of Dalaran.

Adelgonn rejoined the Council of Dornogal and lent her workers to the restoration effort of the Coreway. Meanwhile, Baelgrim and the Champion uncovered treachery in the ranks of the Stormriders and took out the Void collaborators. They needed to take the fight to the nerubians, and together with Alleria, they lured Zirix into a trap at the Cinderbrew Meadery. Baelgrim heroically gave his life to end the threat.

Back in Dornogal, the united earthen people were finishing up repairs on the Coreway – the way forward was clear.

|cFFc8a84bSide Quests|r

|cFFe0c06aMerrix and Steelvein:|r
The Champion tracked down a smuggler and troublemaker among the earthen calling himself 'Steelvein'. It turned out that Councilward Merrix, leader of the Peacekeepers, was none other than said culprit himself. In order to protect all of his people, including the Unbound, he had to break his edicts in order to fulfill them.

|cFFe0c06aRemember Me, Earthen:|r
The old caretaker Korgran felt his functions slowly shutting down. His assistant Urtago and the Champion helped him die with dignity and in peace. He looked at the ocean one last time before closing his eyes forever.

|cFFe0c06aHidden Edicts:|r
Dagran II and Brinthe worked together to uncover ancient earthen history. They learned of the titan keepers Dornic and Galan and that they hid something on Dornogal. They were left with more questions than answers, but Dagran was still enthusiastic about his first archaeological find.]],
    },
    {
        heading      = "The Machine Speaker and the Void",
        zoneName     = "The Ringing Deeps",
        flavorTeaser = "The Machine Speaker and the Void",
        npcLinks     = {"magni_bronzebeard_tww"},
        text         = "Following the nerubians down to the workers' city of Gundargaz, the Champions witnessed the " ..
                       "great underground machines, most of which were now shut down due to neglect and an absent " ..
                       "workforce. They helped the kobolds of the Ringing Deeps rebel against the Candle King. " ..
                       "{npc:magni_bronzebeard_tww} and Dagran uncovered that the High Speaker had been working with Xal'atath all along. " ..
                       "They managed to stop him from corrupting the new earthen in the Awakening Machine and {npc:magni_bronzebeard_tww} " ..
                       "was turned back into flesh by Azeroth. The new earthen joined their kin.",
        loreBits     = [[Alongside Brinthe, Moira, Magni, and Dagran, the Champion descended into the Ringing Deeps through the Coreway. New trouble awaited them mere minutes after arriving at Ironhaul Station – the transport hub between Dornogal and the miners' city of Gundargaz. The Machine Speakers were suffering from nerubian and kobold attacks and strange, maddened earthen had been spotted as well. High Speaker Eirich dismissed these concerns, as a threat far greater occupied his time: the Awakening Machine, inactive for millennia due to neglect, which could awake the earthen in stasis and put an end to the civilization's decline.

The Champion and their allies split up in Gundargaz to solve the earthen's problems themselves. Together with Brinthe, the Champion evacuated the earthen workers north of town as a goblin incursion was underway. They found and freed Skitter, a kobold who had not been keen on supporting her new ruler, the feared Candle King. They joined forces, started a revolution, and managed to defeat the warmonger. The kobolds and earthen of Gundargaz made peace and even began mutual trade.

Dagran and his grandfather Magni, meanwhile, were investigating the dark rumors coming out of the small mining settlement of Taelloch. They found the town shrouded in an eerie fog and witnessed a distressed worker transform into a skardyn – an earthen corrupted and maddened by the Void. Magni risked his own life to keep Dagran safe in the fighting that ensued. He knew he could never fully mend the rift he had created between himself and his daughter, and he would be damned if he now lost his only grandson as well. With the Champion ensuring their survival, the trio uncovered that High Speaker Eirich was working with Xal'atath. He was indeed going to reawaken the slumbering earthen in the Machine, and he would reawaken them as skardyn.

Moira and Brinthe assembled the united forces of the Ringing Deeps and Dornogal above and all together they pushed through the High Speaker's loyalists. They came too late, however, as Eirich had already begun the tainted process of awakening and escaped through a Void portal. The innocent earthen seemed lost, but Magni, Speaker of Azeroth, reached out to the world soul and erupted into bright light that cleansed the corruption. When the light faded, Magni had turned into stone. Dagran broke out into tears and Moira realized that they had just lost their second chance to become a family again. Then the stone broke, and Magni burst forth as a dwarf of flesh and blood. Azeroth had let him go from her service and the three embraced.

The confused newly-awakened earthen glimmered in Azeroth's magic and decided to follow their own path in life.

|cFFc8a84bSide Quests|r

|cFFe0c06aKobold Culture and Integration:|r
Several kobolds found shelter in Gundargaz and did their utmost to integrate into the strange, new society of stonefolk. They tried to help with maintenance tasks and crafted wax statues of their heroic saviors.

|cFFe0c06aAbysmal Extraction:|r
The goblins of Opportunity Point were using tourists as unpaid miners while advertising the operation as a luxury spa and resort. The Champion dutifully helped the goblins by pruning the local wildlife and corrosive slimes of the area.

|cFFe0c06aFearbreaker:|r
Magni Bronzebeard's legendary hammer, Fearbreaker, had been lost during Dalaran's fall. Moira recovered it, proving that she was a worthy Bronzebeard through and through. Magni, happy that his daughter could see herself as part of his family again, left Fearbreaker to her.]],
    },
    {
        heading      = "A Star of Light and Shadow",
        zoneName     = "Hallowfall",
        flavorTeaser = "A Star of Light and Shadow",
        npcLinks     = {"anduin_wrynn_tww", "faerin_lothar_tww", "alleria_windrunner_tww"},
        text         = "{npc:anduin_wrynn_tww} met {npc:faerin_lothar_tww} and made contact with the Hallowfall Arathi. " ..
                       "Besieged from all sides by nerubians and kobyss, the Arathi never lost hope in the light " ..
                       "of their star, Beledar, the crystal illuminating the cave, even when it switched to darkness " ..
                       "periodically. Anduin faced a personal crisis when he couldn't reconnect with the Light but " ..
                       "helped defeat Xal'atath's forces nonetheless. {npc:alleria_windrunner_tww} joined them, having " ..
                       "picked up the Harbinger's trail once more. All three followed it further underground.",
        loreBits     = [[Anduin Wrynn had followed rumors of another civilization in Khaz Algar's depths, after overhearing the earthen of Dornogal calling him an "Arathi". He met up with the Champion and together, they found a massive, open cave illuminated by a crystal shining with the Light. Cathedrals and airships marked human influence and they discovered that the inhabitants of Hallowfall were from the unheard-of Arathi Empire – a name formerly reserved for the original human kingdom in the Eastern Kingdoms.

The Arathi were wary of outsiders, but a particularly friendly young paladin named Faerin Lothar took the two newcomers under her wing. Anduin and the Champion helped her push back an onslaught of nerubians at the Aegis Wall – the border to Queen Ansurek's kingdom of Azj-Kahet. Alleria Windrunner arrived and killed the nerubian leader, deciding the battle in favor of the Arathi. She was, unsurprisingly, pursuing the spidery creatures to find Xal'atath. Faerin, meanwhile, ignited the dawntower, to shield the settlement with the power of the Light.

It was in this moment, however, that the radiant crystal Beledar shifted into darkness. The whole of Hallowfall became hostile without the Light and creatures of Void and Shadow jumped at them from every corner. They rescued whomever they could as the Arathi civilians were attacked from all sides. Anduin almost broke down during the ordeal. His own Light had left him after what had happened in the Shadowlands, and seeing hope vanish here as well, proved almost too much for him.

Another massive surge of Void energy extinguished the Sacred Flames nearby. Faerin, Anduin and the Champion tracked it to a corrupted dawntower. The Order of the Night revealed itself – Arathi who had become hopeless against the insurmountable odds they had faced here each day, and had joined Xal'atath – and a fight ensued. They won and restored the dawntower. In that moment, Beledar shifted again and with the Light returning, so too did Anduin's hope.

Rejoined by Alleria Windrunner, the four comrades arrived in Mereldar, the Arathi's capital. There, they rallied General Steelstrike and once again came to blows against the combined forces of the Order of the Night, the nerubians, and the kobyss. Alleria managed to break the cult leader's magical shield and after a rousing speech from Faerin, the Arathi defeated their enemies. Deciding to no longer play defensively, the group boarded the Reckoning, and set course for Azj-Kahet.

|cFFc8a84bSide Quests|r

|cFFe0c06aThe Last Mage of Hallowfall:|r
The Arathi had been isolated, surrounded, and cut off from their homeland for years now. The last surviving mage, Wenren, asked the Champion for aid to create a portal back home. He almost succeeded, but was tragically murdered by the Order of the Night, denying the Arathi any hope of return for now.

|cFFe0c06aThe Priory:|r
The Champion assisted the paladin brothers Braunpyke and traveled to the Priory of the Sacred Flame after one of them fell to the kobyss. Noticing the bodies of the dead going missing, the Champion investigated the Priory and was confronted by fanatical Arathi performing light-necromancy and wanting to bring Hallowfall back to the stricter virtues of the Arathi Empire.

|cFFe0c06aCrushing Depths:|r
The Champion found a peculiar fish in a kobyss settlement, who telepathically asked for help and revenge in hushed whispers. Naturally, the Champion did as the suspicious creature asked and after killing the kobyss and hearing ominous prophecies of black blood, the Champion released the fish into deeper waters. There, the creature transformed into a tentacled leviathan and warned the Champion to not bring the Light to the depths below.]],
    },
    {
        heading      = "Spiders, Spiders Everywhere",
        zoneName     = "Azj-Kahet",
        flavorTeaser = "Spiders, Spiders Everywhere",
        npcLinks     = {"anduin_wrynn_tww", "alleria_windrunner_tww", "faerin_lothar_tww", "orweyna_tww"},
        text         = "{npc:anduin_wrynn_tww}, {npc:alleria_windrunner_tww} and {npc:faerin_lothar_tww} met {npc:orweyna_tww} and " ..
                       "the haranir when they crash-landed in the spider kingdom of Azj-Kahet. Ruled by Queen " ..
                       "Ansurek under Xal'atath's influence, the kingdom was teeming with a dangerous substance " ..
                       "called the Black Blood. The Champions helped the renegade royal Weaver in her rebellion " ..
                       "against the queen but had to flee the capital when Alleria's thirst for revenge against " ..
                       "Xal'atath almost got them killed.",
        loreBits     = [[The Reckoning was immediately beset by a massive swarm of nerubians. Anduin heroically stayed behind to stop the spider creatures from destroying the airship but it bought his friends only little time. Faerin, Alleria, and the Champion couldn't prevent a crash-landing and while the lamplighter rallied and saved as many of her people as she could, Alleria set off alone to search for Anduin. A mysterious woman calling herself a "haranir" saw the fighting from afar and decided to help the heroes in need.

While Faerin regrouped, the Champion traveled alongside the mysterious stranger for a while. She called herself Orweyna and had been investigating the Black Blood – a sinister substance that permeated Azj-Kahet and slowly drove those who touched it to madness. The two strangers split up at the sight of the City of Threads and the Champion was approached by a curious little spider carrying a scroll. They followed the tiny messenger to the Weaver's Lair and forged a cautious alliance with Widow Arak'nai, a powerful nerubian who openly defied Queen Ansurek.

The Champion was sent to Siegehold to gather information on Queen Ansurek's army. They rescued survivors captured during Dalaran's fall, briefly teamed up with Flynn Fairwind, and noticed a more humanoid-looking group of nerubians giving everybody orders. They met General Anub'azal, former military leader of Ansurek's army, who harbored a great hatred against these new nerubians, the so-called Ascended.

Back at the Weaver's Lair, the Champion was sent to the City of Threads to meet Arak'nai's contact, Queen Ansurek's closest advisor, Executor Nizrek. Unhappy with how the queen allied herself with the Void, Nizrek had used his influence to get a hold of Anduin Wrynn, who was alive and well in the nerubian's quarters. Alleria found them and they decided to pay witness to Queen Ansurek's speech that was taking place in the city at this time. Hidden carefully, Alleria grew furious as Ansurek declared that every nerubian would soon embrace the Void and ascend. Xal'atath was at her side, and the elven ranger loosened an arrow despite Anduin's orders not to. She missed and Queen Ansurek demanded the intruders' deaths.

The entire city was on their heels and while Anduin and the Champion jumped down a waterfall to their safety, Alleria stayed behind, determined to confront Xal'atath once and for all. She didn't even come close to defeating her enemy and the Harbinger tried to convince the ranger to embrace the Void and join her side. Alleria resisted but wasn't pursued when she finally fled as well. The three heroes returned to Dornogal while the Weaver cemented new alliances with the General and the Vizier to start a rebellion.

|cFFc8a84bSide Quests|r

|cFFe0c06aMelody of Madness:|r
The Champion rejoined Orweyna and several of her fellow haranir in their investigation of the Black Blood. They soon discovered that contact with the dark substance unveiled the horrors of a parallel plane known as the Unseeming, allowing its otherworldly denizens to see the intruder in turn. The experience disturbed even the battle-hardened Champion of Azeroth.

|cFFe0c06aPawns and Puppetry:|r
While in the City of Threads, the Champion saw strange puppets being sold in the streets that eerily resembled living creatures. They followed the trail to a nerubian entertainer merely calling himself the Puppetmaster, who abducted living creatures and transformed them into grotesque marionettes. The Champion was fortunate to escape his theater alive.

|cFFe0c06aHaggling with Mmarl:|r
Trade Prince Monte Gazlowe discovered another goblin operation of the Venture Company in the niffen settlement of Mmarl. He helped them out with their bug problem in exchange for information. As it turned out, these goblins operated from Undermine.]],
    },
    {
        heading      = "A Dark Heart Left Broken",
        zoneName     = "The War Within",
        flavorTeaser = "A Dark Heart Left Broken",
        npcLinks     = {"alleria_windrunner_tww", "anduin_wrynn_tww"},
        text         = "The reinforcements of the Horde and the Alliance arrived in Dornogal and quickly went on " ..
                       "the offensive against the nerubians. With the earthen, kobolds and Arathi at their side, " ..
                       "they made short work of their enemies in Hallowfall. {npc:alleria_windrunner_tww} confronted " ..
                       "Xal'atath and managed to damage the Dark Heart, causing the enraged Harbinger to retreat. " ..
                       "Khadgar was freed but found himself on the verge of death. {npc:anduin_wrynn_tww} " ..
                       "regained his faith and healed the fallen archmage. The rebellion against Queen Ansurek was a " ..
                       "success and the Weaver and Vizier were left in charge of Azj-Kahet.",
        loreBits     = [[An earthen stormrider gave the long-awaited signal: Ships from the Horde and Alliance had finally arrived on Khaz Algar's shores. Thrall and Jaina had succeeded in their tasks and together, the two factions began planning their offensive against Xal'atath's forces. While the armies under Lord Commander Turalyon and Lady Liadrin established their embassies in Dornogal, Thrall and the Champion learned that the stormrooks of Dornogal had vanished and the earthen were left without means to train more Stormriders – their most accomplished warriors.

Thrall used his shamanistic knowledge to aid Stormward Lufsela, Baelgrim's successor, in communing with the elemental creatures and Kurdran Wildhammer gave the new recruits their first flying lessons – much to his old friend Turalyon's annoyance when electrified gryphons swooped low over his army. Soon after, the earthen of Dornogal declared themselves unbound, allowing everyone to choose to follow the Titan's edicts or reject them altogether. In immediate response, a massive titanic guardian rose from the ocean to wipe out the disobedient earthen. The new Stormriders were aided by Alleria, Jaina, and the Champion and managed to destroy the construct.

Meanwhile in Azj-Kahet, Lillian Voss, the Champion and Y'tekhi followed the Weaver's new lead into Ansurek's Grand Splicer's laboratory. They discovered that the first Ascended nerubian was none other than Ansurek's mother who had been thought dead – Queen Neferess. She had mutated into a monster through forced experimentation. Xal'atath found them and controlled Y'tekhi to fight their allies. Lillian subdued her and the three escaped. The Champion then traveled to the Ringing Deeps, where they aided Dagran II and Brinthe to restore ancient battle golems to aid them in the fight ahead.

The time for the final battle was at hand and when Xal'atath's army launched an assault on the Aegis Wall in Hallowfall, the armies of Dornogal quickly joined the defending Arathi. Queen Neferess, among the attacking nerubians, briefly regained her consciousness and was rescued. Amidst the fighting, Alleria suddenly heard Khadgar's voice and realized that this swarm of nerubians was merely a diversion. Together with Anduin Wrynn, she confronted the Harbinger in the Priory of the Sacred Flame, damaged the Dark Heart, and forced Xal'atath to retreat. Khadgar was freed but so weakened by the ordeal that he took his last breath in Alleria's arms. In that moment, Beledar returned to the Light and Anduin found hope in himself again. He called on the Light and saved Khadgar from the brink of death.

The Weaver and the Vizier meanwhile put a stop to Queen Ansurek and successfully completed their rebellion. Ansurek died in her palace, forsaken by the very Harbinger she had devoted herself to. Xal'atath merely mocked her fallen ally for failing to withstand the outsiders.

|cFFc8a84bSide Quests|r

|cFFe0c06aThe Archive:|r
Dagran II and Brinthe uncovered an ancient titanic vault underneath Dornogal and restored records of Keeper Archaedas over time. They discovered that the Coreway was a direct passage to Azeroth's world soul – a world soul so mighty that all cosmic forces wanted to claim her for themselves. Brinthe openly cursed the Titans after realizing that their directives had robbed the earthen of their free will.

|cFFe0c06aThe General's Conviction:|r
General Anub'azal confronted his nemesis and usurper, General Zev'kall, in a duel to the death. He won, but succumbed to his injuries. Even though he didn't live to see Ansurek's downfall, Zev'kall's death gave the rebellion the advantage it needed to claim victory.]],
    },
}

-- TAB 3: PATCHES
IMAGOdb.eras["tww"].patches = {
    {
        version  = "11.0.7",
        title    = "Siren Isle",
        logoPath = "Interface\\AddOns\\IMAGO\\Media\\Eras\\Patches\\tww_11_0_7.tga",
        logo_w   = 400, logo_h = 300,
        newZones = {"The Siren Isle"},
        loreBits = [[An expedition of Hallowfall Arathi, awakened earthen, and Gazlowe's Greasemonkeys set out for the Siren Isle, accompanied by the Champion. A new song had lured them all to the small island and its source lay in its center: A giant humming crystal much like Beledar that extended for miles underground. The Arathi named it "Lorandel" and claimed it as holy, while the earthen wanted to study its properties. The goblins, naturally, sought to gain profit and the groups had difficulties working together.

The Champion, meanwhile, found ruins of a Kul Tiran mining operation, yet there was no human to be found. They recovered records claiming the island was haunted and the frequent, almost unnatural storms gave that assessment credence. An old vrykul vault hid singing tablets and the Champion found evidence of an entity called "Cyrce" who used to reside on the island. Weeks of further research yielded no new finds. The secrets of the Siren Isle remained buried deep for the time being.

On the shores of Khaz Algar, Archmage Aethas Sunreaver was desperately defending what little remained of Dalaran, in spite of his own dwindling health. The other mages of the Kirin Tor, while they had given up on Dalaran, could not stand to see their friend and comrade suffer and offered to aid him. Kalecgos recovered magical artifacts that were stolen by kobolds after the crash, and had to free himself from a pocket dimension inside a necklace left behind by Kel'Thuzad. Jaina Proudmoore destroyed dangerous artifacts the nerubians had taken from the magical floating city, including an arcane mana bomb. Afterwards, the surviving members of the Kirin Tor came together to honor their fallen brothers and sisters and accepted that Dalaran's age had come to an end.

Meanwhile in Hallowfall, Orweyna and her haranir were still investigating the Black Blood, yet when the Champion found them, Orweyna's companions left her to continue alone. Haranir, they said, were not supposed to talk to outsiders and they couldn't follow their friend's visions any longer. Orweyna understood, yet her goddess' voice beckoned her to continue. She saw machines drilling through rocks and the Champion led her toward Opportunity Point in the Ringing Deeps.

They teamed up with Monte Gazlowe and Renzik "the Shiv", who were investigating the goblins of the Opportunity Acquisitions for information about Undermine. Together with Orweyna, the team searched the mining facilities and uncovered who the leader of this operation truly was: Jastor Gallywix, Gazlowe's predecessor as Trade Prince of the Bilgewater Cartel, and persona non grata for both Horde and Alliance. With their investigation at an end for now, the group returned to Dornogal. Reluctantly, Orweyna accompanied them and began acquainting herself with her new allies.]],
        npcLinks = {"orweyna_tww"},
        text     = "Following the discovery of a new crystal, similar to Beledar, a team of Arathi, earthen and " ..
                   "goblins sailed to the Siren Isle. They found the inhabitants long dead and the island cursed " ..
                   "by an unnatural storm. On the Isle of Dorn, the surviving mages of the Kirin Tor honored the " ..
                   "fallen of Dalaran. Meanwhile, {npc:orweyna_tww} received new visions from her goddess, warning " ..
                   "her of an impending threat from the Undermine.",
    },
    {
        version  = "11.1",
        title    = "Undermine(d)",
        logoPath = "Interface\\AddOns\\IMAGO\\Media\\Eras\\Patches\\tww_11_1.tga",
        logo_w   = 400, logo_h = 300,
        newZones = {"Undermine"},
        loreBits = [[The way to Undermine was blasted open suddenly, when the cave walls of the Ringing Deeps near Opportunity Point were blown up from the inside. Gazlowe, Renzik, Orweyna, and the Champion uncovered a sprawling excavation site where goblins toiled under horrific conditions, driven to madness by exposure to the Black Blood. They dismantled as much as they could of the operation and teamed up with Grimla Fizzlecrank and Pamsy of the Venture Co. to gain access into Undermine. Gazlowe was reluctant to return to his former home but knew that Gallywix couldn't be trusted with the Black Blood.

Gazlowe, being Trade Prince of the Bilgewater Cartel, had left Laslo Overbite as his representative in the Undermine and was distraught when he heard of his demise at Gallywix's hands. The trail of the Black Blood led them to Baron Revilgaz and Gazlowe's friend Marin Noggenfogger who both seemed to comply with Gallywix's orders. When they suspected Ethereal involvement, they contacted Alleria Windrunner. While Gazlowe was getting ever more disillusioned by the state of his former home, Renzik was adamant that they needed to change things down here, regardless of what their investigation would bring up. The SI:7 agent had left this town years ago, but wanted to finally make a difference and not run away anymore.

Noggenfogger finally revealed the truth: Gallywix was fashioning powerful weapons infused with the Black Blood in exchange for repairing the Dark Heart for Xal'atath. To do that he had needed the other cartels' help and was still holding Noggenfogger's wife captive to force him to cooperate. In that moment, the entire group was ambushed by Shadowguard ethereals who had overheard them. They chased them but because they freed the hostages, the k'areshi found Gallywix first. With the completed Dark Heart in hand, they vanished once more. Since the ethereals certainly worked for Xal'atath, Alleria left the group to once more hunt the Harbinger, and Gazlowe was prepared to turn his back to the city as well.

Just as Renzik tried to convince him to stay, a single red targeting dot appeared on Gazlowe's chest. Without hesitation, Renzik threw himself between the bullet and his fellow goblin, sacrificing his own life. Gallywix had ordered his manic sharpshooter, Nikki the Fixer, to take out his rival, but it was only with Renzik's death, that Gazlowe finally decided to fight for Undermine. Soon, the entirety of its fed-up and exploited citizens marched towards the Gallagio.

Gallywix, retreating into his palace as he saw the angry mob, was relieved when Xal'atath arrived. She revealed that the ethereals had acted on their own and that the Dark Heart was now beyond her reach. She abandoned her ally, and former Trade Prince Jastor Gallywix perished soon after, buried under his own machines.

Gazlowe decided to stay in the Undermine, at least for a while longer. After scattering Renzik's ashes alongside with SI:7 leader Mathias Shaw – Renzik's only real friend – he formed a new ruling council together with Noggenfogger, Revilgaz and Grimla and vowed to change how things would be down here.

|cFFc8a84bSide Quests|r

|cFFe0c06aHard Ways at the Gallagio:|r
With Jastor Gallywix's death, the Gallagio was up for grabs and many goblins coveted it. The prime contender was Rosebud Gallywix and when he was murdered, it fell to the Champion to investigate the crime.

|cFFe0c06aThe Verdigrease Knight:|r
A band of kobolds in a cave named Campalot tasked the Champion with completing various heroic feats. When they did, they were granted knighthood and a seat at the Brown table. It was a great honor.

|cFFe0c06aThe Highst:|r
Skedgit Cinderbangs recruited the Champion for a heist with promise of great loot. Together with a money-loving shaman, his corrupt elementals, a handsome hobgoblin, and a very mediocre mage, they managed to land the gig. Instead of a fortune, however, Skedgit merely rescued her imprisoned grandmother, leaving the Champion empty-handed.]],
        npcLinks = {"orweyna_tww"},
        text     = "{npc:orweyna_tww} followed Monte Gazlowe and Renzik 'the Shiv' into Undermine after her visions " ..
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
        loreBits = [[After having joined the war effort on Khaz Algar, both King Danath Trollbane and Overlord Geya'rah received word from the Arathi Highlands. Outposts of the Horde and the Alliance had been raided and the capital needed its king. The Champion and Faerin Lothar, eager to visit her people's ancestral homeland, joined them.

When they arrived at Newstead, they found the peaceful farmstead overrun by a group of bandits calling themselves "the Red Dawn". After ensuring Newstead was secured once more, Faerin and the Champion went to confront Colonel Veronica Nials, left in charge of Stromgarde before Danath had left, while the king headed towards Hammerfall. A foul mood reigned in the city and with shortages of food and paranoia due to the strong Horde presence nearby, civil unrest hung in the air. Marran Trollbane, Danath's niece and former regent of Stromgarde, still inspired much support even from behind prison bars and sowed dissent towards everyone who wasn't human.

The Champion and Faerin knew they needed to inform Danath of his niece's apparent involvement and found more evidence of the Red Dawn's destructiveness on their way. Danath, as it turned out, had never arrived in Hammerfall. The Champion and Faerin distributed rations to the human refugees from the surrounding farmlands, while Eitrigg sent out armed outriders to search for the king. Without these warriors, however, Hammerfall's defenses were weakened significantly. The human refugees revealed themselves as Red Dawn and set Hammerfall to the torch. Even though they were defeated, the orcish stronghold suffered great losses and the Arathi Highlands were poised to become the stage of a new war.

The outriders returned with grave news: Danath had been kidnapped and evidence had been planted by the Red Dawn to frame the Horde. The group had to act fast and while Faerin rushed back to Stromgarde, Eitrigg and Geya'rah led a skirmish to the abandoned Horde war fortress of Ar'gorok, where they found and rescued the king.

Returning to the capital, they discovered that Colonel Nials had turned traitor, freed Marran and started a coup. Faerin engaged Danath's niece in a duel and proved superior. Defeated, the former regent said that Danath had put his own people second time and again to play hero and to fraternize with the Horde. Faerin was unmoved, but Danath forbade the killing blow and decided to send his niece and her followers into exile and stripped her of her title and name.

Faerin was glad to have made a difference in the land she had heard so much about as a child, but was left pensive and disillusioned after seeing what had become of it.]],
        npcLinks = {"faerin_lothar_tww"},
        text     = "Excited to learn of her heritage, {npc:faerin_lothar_tww} accompanied Danath Trollbane to his " ..
                   "kingdom of Stromgarde. They found themselves in the middle of a civil war, as Danath's " ..
                   "subjects were not happy living peacefully next to an orc stronghold and being subjected to " ..
                   "food shortages due to the war effort. Danath, {npc:faerin_lothar_tww} and Eitrigg managed to " ..
                   "quell the rebellion and exiled the main instigator, Marran Trollbane — Danath's niece.",
    },
    {
        version  = "11.2",
        title    = "Ghosts of K'aresh",
        logoPath = "Interface\\AddOns\\IMAGO\\Media\\Eras\\Patches\\tww_11_2.tga",
        logo_w   = 400, logo_h = 300,
        newZones = {"Tazavesh", "K'aresh"},
        loreBits = [[Alleria's mentor, Locus-Walker, had managed to track down the Dark Heart on the ethereal's devastated homeworld of K'aresh. The Shadowguard were using its power to return Dimensius – the void lord who destroyed the planet so many millennia ago - to full strength.

Locus-Walker teleported Alleria and the Champion to Tazavesh, the broker city built by the ethereals from the Shadowlands, to find refuge after K'aresh's fall. Now it was floating in the skies of the remains of the broken world. Apart from the brokers, Locus-Walker spoke of another ally he had made, someone who had warned him of an impending attack of the Shadowguard. Indeed, the flying city was soon besieged by their void-wielding foes but Alleria and the Champion were experienced enough by now to repel their attackers without much difficulty.

Owing their quick victory to Locus-Walker's new ally, Alleria's confidence turned into anger when her mentor introduced them. It turned out he was working alongside the Harbinger herself, Xal'atath. The being of the Void convinced her pursuer that without her, the heroes of Azeroth and K'aresh would stand no chance against a void lord and the universe would suffer as a result. Alleria, attuned to the forces of the Void, already felt Dimensius stirring, and had to admit Xal'atath was needed in this battle.

The Harbinger showed the Champion and Windrunner how to transmute into energy to withstand Dimensius' devouring presence through the use of so-called Reshii ribbons. They were incredibly rare and only a few remained on the shattered world below them. To obtain them, they aided Ve'nari in her ambitious attempt to restore life on K'aresh and Xal'atath used her usual silver tongue to ally with the Wastelanders - ethereals sworn to Nexus-King Salhadaar. The Harbinger convinced Soul-Scribe, leader of the Wastelanders, that the world-soul of K'aresh still remained alive and thus, the group obtained an army.

Dissent was sown in the fragile alliance, however, when Xal'atath revealed that it hadn't been Dimensius who destroyed K'aresh, but none other than Locus-Walker himself. In an attempt to kill the void lord, he had sacrificed his world and people and Alleria's trust in her mentor was shattered.

Nevertheless, the group stormed Manaforge: Omega and put an end to the Shadowguard ethereals, including Salhadaar. It took everyone's power combined to take a stand against the still-weakened Dimensius and without Xal'atath's interventions, the Champion would have perished then and there. Finally, they managed to trap the void lord inside the Dark Heart and Xal'atath stayed behind while the others escaped. It was, however, a ruse. With a fully-empowered Dark Heart, Xal'atath re-emerged, killed Locus-Walker, and left Alleria and the Champion behind to mourn and realize their defeat.

Yet a glimmer of hope remained after everything. To everyone's surprise, Xal'atath hadn't lied about K'aresh's fate. Soul-Scribe gave her life to renew the world-soul and Ve'nari vowed to protect it. The ethereals' world was broken and shattered, but it was still alive.

|cFFc8a84bSide Quests|r

|cFFe0c06aEcological Succession:|r
Ve'nari invested her considerable fortune from her dangerous endeavors in the Maw to construct massive eco-domes on her former homeland. The Champion helped her recruit experts from across Azeroth to establish an ecosystem of native flora and fauna under the domes. Bit by bit, Ve'nari would return life to her world, no matter the cost or how long it took.

|cFFe0c06aIn Search of Darkness:|r
In the void elven base of Shan'dorah, the ren'dorei under Magister Umbric held the line on K'aresh against the Shadowguard. Leona Darkstrider worked with Adarus Duskblaze to learn how to fight with the ferocity of a demon hunter. Adarus in turn learned about the Void, but was consumed by the whispers in the end.

|cFFe0c06aOf Boughs and Bonds:|r
The Champion helped the broker Om'fennad find his long-lost sister on K'aresh. While he had escaped to the Shadowlands after their world's fall, she had remained here. Oaths held much meaning in ethereal culture, and Om'fennad had broken his when he fled. Still, he found and reconciled with his sister in the end, and both honored their late mother together.]],
        npcLinks = {"alleria_windrunner_tww"},
        text     = "Locus-Walker brought {npc:alleria_windrunner_tww} to the broker city of Tazavesh with grave news: " ..
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
        loreBits = [[Arator the Redeemer asked for the Champion's assistance in Dornogal. His aunt Vereesa had been plagued by ominous visions, and the young paladin didn't know how to help her anymore. They met Vereesa amidst the ruins of Dalaran and while she mourned the city – the last reminder of her late husband Rhonin – a new vision triggered. She saw Silvermoon consumed by the Void, its paladin defenders burned alive, Lor'themar, the Champion, and her sister Alleria swallowed by a terrible darkness, and a maniacal Magister Umbric killing Grand Magister Rommath.

As if to prove her visions right, members of the Twilight's Hammer cult – now followers of Xal'atath and calling themselves the Twilight's Blade – ambushed the three. Even though they defeated the cultists, Arator knew that Silvermoon would soon become besieged by the Void. Alongside the Champion he set out to Tazavesh to find his mother. Magister Umbric told them where to find Alleria and the void elf vowed to return to his homeland as well to help defend it at all costs.

Arator's mother was, unsurprisingly, on the hunt. Xal'atath still had the Dark Heart and Alleria used Ve'nari's help to trap and interrogate the Harbinger's remaining forces on K'aresh to find out where she was hiding. She refused Arator's request to return to Silvermoon with him.

The young paladin didn't give up yet, however. Another Windrunner remained who had defended Silvermoon once before: Sylvanas, the Banshee Queen, former Ranger-General of Quel'Thalas. With Ve'nari's help, Arator traveled to the Maw and the Champion found themselves back in the hellscape where they had begun their journey through the Shadowlands years ago.

They found Sylvanas continuing her long journey toward redemption. She sought out and protected the souls of the people she had damned to this hell and slowly but surely, she was sending them all to the afterlives they truly deserved. Her penance was not done and Sylvanas, just like Alleria, refused Arator's request. If Silvermoon needed a Windrunner to defend her, Sylvanas urged Arator to be a Windrunner himself and fight for their family's ancestral home. Alongside the Champion, Arator returned to Dornogal empty-handed but renewed in purpose.

Meanwhile, Alleria Windrunner managed to find Xal'atath. Following her enemy through a void portal, she witnessed the Harbinger drain the Dark Heart of all its power. As the artifact fell to the ground, an enormous spire formed in the skies and tore a hole through space to unleash a terrible Voidstorm over Silvermoon.]],
        npcLinks = {"alleria_windrunner_tww"},
        text     = "Vereesa Windrunner began to have horrible visions of her homeland of Quel'Thalas destroyed " ..
                   "by the Void. Her nephew Arator believed her, and tried to rally his mother {npc:alleria_windrunner_tww} " ..
                   "and his aunt Sylvanas to join them in the defense of Silvermoon. Even though he had ventured " ..
                   "to K'aresh and even into the Maw to do so, he was denied by both. {npc:alleria_windrunner_tww}, " ..
                   "meanwhile, followed Xal'atath through the Void and witnessed her drain the Dark Heart of its " ..
                   "power, summoning a massive spire that tore open the skies over Silvermoon.",
    },
}

-- TAB 4: KEY FIGURES
IMAGOdb.eras["tww"].keyFigures = {
    { slug="alleria_windrunner_tww", arcLabel="The Obsessed Hunter",   blurb="Alleria hunted Xal'atath across Khaz Algar and far beyond. Her thirst for revenge bordered on dangerous obsession to the point of endangering herself and her allies." },
    { slug="xal_atath_tww",          arcLabel="The Harbinger",         blurb="The Harbinger systematically empowered the Dark Heart with various energy sources while delaying the Champions repeatedly. She notably never attacked Alleria directly and managed to turn her losses into ultimate victory." },
    { slug="anduin_wrynn_tww",       arcLabel="Broken, Then Reforged", blurb="Started out a broken man after the events of the war in the Shadowlands, but finally regained his faith in the Light and in himself." },
    { slug="khadgar_tww",            arcLabel="The Guardian",          blurb="Proved his pure nature once more when he risked his life without hesitation protecting Dalaran. The war on Khaz Algar robbed him of the use of his legs, yet not of his resolve." },
    { slug="magni_bronzebeard_tww",  arcLabel="A Second Chance",       blurb="Tried his hardest to redeem his past with his daughter Moira by becoming a good grandfather to Dagran. Fulfilled his duty to Azeroth and was accepted back by his family." },
    { slug="faerin_lothar_tww",      arcLabel="The Faithful Flame",    blurb="The young paladin hero inspired her people to not lose hope against the overwhelming odds. She herself was left disillusioned, however, after witnessing the civil unrest in Stromgarde." },
    { slug="orweyna_tww",            arcLabel="Servant of Fate",       blurb="The reclusive scout was hesitant to aid the Champions, but realized that she needed outside help to fulfill the will of her goddess." },
}

-- ============================================================
-- DRAGONFLIGHT — stub
-- ============================================================
IMAGOdb.eras["df"].name       = "Dragonflight"
IMAGOdb.eras["df"].region     = "Dragon Isles"
IMAGOdb.eras["df"].antagonist = "Fyrakk / The Incarnates"
IMAGOdb.eras["df"].conflict   = "The Reawakening of the Dragon Isles"

-- ============================================================
-- SHADOWLANDS — stub
-- ============================================================
IMAGOdb.eras["sl"].name       = "Shadowlands"
IMAGOdb.eras["sl"].region     = "The Shadowlands"
IMAGOdb.eras["sl"].antagonist = "The Jailer (Zovaal)"
IMAGOdb.eras["sl"].conflict   = "Death Unbound"

-- ============================================================
-- BATTLE FOR AZEROTH — stub
-- ============================================================
IMAGOdb.eras["bfa"].name       = "Battle for Azeroth"
IMAGOdb.eras["bfa"].region     = "Kul Tiras & Zandalar"
IMAGOdb.eras["bfa"].antagonist = "N'Zoth the Corruptor"
IMAGOdb.eras["bfa"].conflict   = "Alliance vs. Horde — and the Old Gods' Return"

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
IMAGOdb.eras["wod"].name       = "Warlords of Draenor"
IMAGOdb.eras["wod"].region     = "Draenor (Alternate)"
IMAGOdb.eras["wod"].antagonist = "Gul'dan / The Iron Horde"
IMAGOdb.eras["wod"].conflict   = "The Iron Horde's Crusade"

-- ============================================================
-- MISTS OF PANDARIA — stub
-- ============================================================
IMAGOdb.eras["mop"].name       = "Mists of Pandaria"
IMAGOdb.eras["mop"].region     = "Pandaria"
IMAGOdb.eras["mop"].antagonist = "Garrosh Hellscream / The Sha"
IMAGOdb.eras["mop"].conflict   = "War on Pandaria's Soul"

-- ============================================================
-- CATACLYSM — stub
-- ============================================================
IMAGOdb.eras["cata"].name       = "Cataclysm"
IMAGOdb.eras["cata"].region     = "Azeroth (Shattered)"
IMAGOdb.eras["cata"].antagonist = "Deathwing the Destroyer"
IMAGOdb.eras["cata"].conflict   = "The Shattering of the World"

-- ============================================================
-- WRATH OF THE LICH KING — stub
-- ============================================================
IMAGOdb.eras["wotlk"].name       = "Wrath of the Lich King"
IMAGOdb.eras["wotlk"].region     = "Northrend"
IMAGOdb.eras["wotlk"].antagonist = "Arthas Menethil, the Lich King"
IMAGOdb.eras["wotlk"].conflict   = "War Against the Scourge"

-- ============================================================
-- THE BURNING CRUSADE — stub
-- ============================================================
IMAGOdb.eras["tbc"].name       = "The Burning Crusade"
IMAGOdb.eras["tbc"].region     = "Outland"
IMAGOdb.eras["tbc"].antagonist = "Illidan Stormrage / Kil'jaeden"
IMAGOdb.eras["tbc"].conflict   = "The Dark Portal's Reopening"

-- ============================================================
-- CLASSIC / VANILLA — stub
-- ============================================================
IMAGOdb.eras["classic"].name       = "Classic Vanilla"
IMAGOdb.eras["classic"].region     = "Azeroth"
IMAGOdb.eras["classic"].antagonist = "Ragnaros / C'Thun / Kel'Thuzad"
IMAGOdb.eras["classic"].conflict   = "The Rise of the Heroes of Azeroth"
