-- ============================================================
-- IMAGO — locales/frFR/data/eras.lua
-- French overrides for Eras lore texts.
-- No overrides yet — enUS fallback is used.
-- ============================================================
-- ============================================================
-- IMAGO — locales/base/data/eras.lua  (enUS fallback)
-- 4-Tab-Schema: summary, fastFacts, campaigns, patches, keyFigures
-- NPC-Links via {npc:slug_midnight} in Texten (werden lila eingefärbt).
-- ============================================================

-- ============================================================
-- MIDNIGHT  (vollständige Daten)
-- ============================================================
IMAGOdb.eras["midnight"].name       = "World of Warcraft: Midnight"
IMAGOdb.eras["midnight"].logoPath   = "Interface\\AddOns\\IMAGO\\Media\\Eras\\Logos\\midnight_logo.tga"
IMAGOdb.eras["midnight"].bgPath     = "Interface\\AddOns\\IMAGO\\Media\\Eras\\Backgrounds\\midnight_bg.tga"
IMAGOdb.eras["midnight"].region     = "Quel'Thalas"
IMAGOdb.eras["midnight"].antagonist = "Xal'atath"
IMAGOdb.eras["midnight"].conflict   = "La défense du Puits de Soleil"
IMAGOdb.eras["midnight"].year       = 2026


-- TAB 1: OVERVIEW — Zusammenfassung + Fast Facts
IMAGOdb.eras["midnight"].summary =
    [[Les plans de Xal'atath se sont concrétisés et les elfes de sang de Lune-d'Argent sont témoins d'une gigantesque Tempête du Vide qui déchire le ciel au-dessus du Puits de Soleil. La Messagère du Vide cherche à corrompre ses eaux sacrées, et il incombe aux défenseurs de Quel'Thalas, ainsi qu'à une armée de paladins et de prêtres, de le protéger à tout prix.]]

IMAGOdb.eras["midnight"].fastFacts = {
    cosmicForces = "le Vide contre la Lumière",
    casualties   = [[
    -Alleria et Turalyon : Disparus dans le Puits des Ténèbres
    - Lothraxion : Rongé par une rage aveuglée par la lumière, il a été tué par ses propres alliés"]],
    worldScar    = "la corruption du Puits du Soleil et sa transformation en Puits de l'Aube",
    bigQuestion  = "Will the Sunwell endure as Quel'Thalas' lifeline - or become the Void's most devastating weapon against all of Azeroth?",
}

-- TAB 2: CAMPAIGNS & REGIONS — Startzonen mit Karten-Overlays
IMAGOdb.eras["midnight"].campaigns = {
    {
        heading      = "L'Appel de la Lumière",
        zoneName     = "Île de Quel'Danas",
        flavorTeaser = "L'Appel de la Lumière",
        logoPath     = "Interface\\AddOns\\IMAGO\\media\\Eras\\Campaigns\\MN_CallOfTheLight.png",
        logo_w       = 1280, logo_h = 720,
        npcLinks     = {"turalyon_midnight"},
        text         = [[ La Tempête du Vide s'est abattue sur l'île de Quel'Danas, contraignant les elfes de sang de Lune-d'Argent à lutter pour leur survie face à toute la puissance de l'armée de Xal'atath : l'Ost Dévorant. Le Puits de Soleil lui-même vint en aide à son peuple en invoquant une armée de paladins et de prêtres, menée par le Grand Exarque Turalyon, afin de brandir la Lumière contre les Ténèbres. Finalement, le Puits de Soleil éclata en un rayon d’énergie sacrée, repoussant le Vide qui gagnait du terrain.]],
        loreBits     =[[Après sa victoire sur K'aresh, Xal'atath a déclenché la Tempête du Vide, et le ciel au-dessus de la Cité de Lune-d'Argent s'est assombri. Dame Liadrin et Lor’themar Theron ont rallié les armées des elfes de sang sur l’île de Quel’Danas pour défendre le Puits de Soleil de la Messagère et de son Ost Dévorant. 
            
            Liadrin savait que le Vide allait les submerger et pria la Lumière de lui venir en aide, malgré les protestations de Lor'themar qui voulait qu'elle se concentre sur le combat. 

            La prière de Liadrin fut exaucée, et des prêtres et des paladins venus des quatre coins d’Azeroth furent convoqués en un instant par le Puits du Soleil lui-même. Le Grand Exarque Turalyon prit rapidement le commandement de cette Avant-garde de la Lumière et élabora une stratégie, tandis que le champion aidait les nouveaux arrivants sur le terrain. Ils firent équipe avec Arator, le fils de Turalyon, et le jeune Coursevent remarqua que quelque chose n'allait pas avec la Lumière, mais il chassa cette impression de son esprit pour l'instant.
            
            Lor’themar se concentra sur l’évacuation des derniers civils, tandis que Turalyon ordonnait à ses forces d'écraser sans pitié l’Ost Dévorant. Le chef des elfes de sang désapprouvait les méthodes du Grand Exarque, et Arator semblait lui aussi en désaccord avec son père. Néanmoins, ensemble, ils réussirent à chasser le Vide de la place Parhelion et à éliminer les commandants postés plus loin sur l'île de Quel'Danas.

            Tout semblait bien se passer jusqu'à l'arrivée de Xal'atath sur le champ de bataille. Les défenseurs furent rapidement submergés par ce qui semblait être une armée infinie, et une obscurité oppressante s'abattit sur la région, forçant tant l'Avant-garde que les elfes à battre en retraite. Ils furent repoussés jusqu'au Puits du Soleil et se préparèrent à livrer un dernier combat désespéré.

            Le Puits de Soleil éclata soudain en un puissant faisceau de Lumière. L'explosion balaya la présence du vide et s'élança directement vers le ciel pour combattre la tempête qui ne cessait de gagner du terrain au-dessus d'eux. Pour l'instant, Xal'atath avait été stoppé et des volontaires restaient sur le Plateau du Puits de Soleil pour renforcer le puits de leur propre lumière. 
            
            |cFFc8a84bQuêtes annexes:|r

            |cFFe0c06aAscension du Crépuscule:|r
            Avant l’attaque de Xal’atath sur Lune-d’Argent, le Magistère Umbric et le Grand Magistère Rommath enquêtaient sur la résurgence du culte de la Lame du Crépuscule. Les deux anciens amis ont collaboré à contrecœur pour contrecarrer les agissements du culte dans les Hautes-Terres du Crépuscule.
            
            |cFFe0c06aUnis dans la Lumière:|r
            Tous les paladins et prêtres qui ont répondu à l'appel du Puits du Soleil ont apporté leur contribution à la lutte contre le Vide. Salandria a défendu les navires évacuant les elfes de sang civils, le prophète Velen a tenu seul la ligne de défense au village d’Aubétoile et veillé à la sécurité des archives, tandis que Calia Menethil a protégé les enfants pris au dépourvu alors qu'ils étudiaient.
        ]]
    },
    {
        heading      = "Le Bois des Chants éternels",
        zoneName     = "Bois des Chants éternels",
        flavorTeaser = "Le Bois des Chants éternels",
        logoPath     = "Interface\\AddOns\\IMAGO\\media\\Eras\\Campaigns\\MN_LightbloomsAndTwilightBlades.png",
        logo_w       = 1280, logo_h = 720,
        npcLinks     = {"arator_midnight", "magister_umbric_midnight", "lord_antenorian_midnight", "zuljan_midnight"},
        text         = [[Après s'être regroupés à Lune-d'Argent, les elfes de sang et l'Avant-garde de la Lumière ont dû faire face à plusieurs défis simultanés. Arator et le Magistère Umbric découvrirent que la secte de la Lame du Crépuscule s'était infiltrée à Tranquillien et se mirent en route pour tuer le chef de la secte, le seigneur Anténorian. Une végétation envahissante, alimentée par la Lumière du Puits de Soleil, commença à ravager les terres autour de la capitale. Aux frontières de Quel'Thalas et de Zul'Aman, les trolls Amani menés par Zul'jan entrèrent en conflit avec les elfes lors d'une escarmouche.]]
        loreBits     =
            [[Même après avoir remporté ensemble cette petite victoire sur l’île de Quel’Danas, les tensions ne tardèrent pas à monter entre Lor’themar et Turalyon, car l’Avant-garde de la Lumière commençait à se comporter non plus comme des invités à Lune-d’Argent, mais comme une autorité. Les querelles internes devaient toutefois attendre, car des rapports en provenance des Bois des Chants éternels indiquaient que la faune avait commencé à se comporter de manière étrange. Arator Coursevent se porta volontaire pour accompagner le champion et ils furent bientôt confrontés à un phénomène connu sous le nom de « Luméclat ». L'éruption du Puits de Soleil avait considérablement accéléré la croissance des plantes, provoquant une prolifération incontrôlable de la végétation tout en plongeant la faune environnante dans une frénésie violente. Orweyna se joignit brièvement à eux, car elle avait ressenti des perturbations similaires dans sa terre natale, Harandar. 

            L'avertissement d'Arator concernant les effets de la Lumière sur la nature ayant été ignoré par Lor'themar et Turalyon, ceux-ci envoyèrent ensuite le jeune Coursevent à Tranquillien. La Tempête du Vide était considérée comme le problème le plus urgent, et l'expertise du Magistère Umbric était indispensable. Le chef exilé des Ren'dorei n'était pas autorisé à entrer dans la ville de Lune-d'Argent proprement dite, mais il était impatient de mettre ses recherches au service de la cause.

            Le seigneur Anténorian, maire de Tranquillien, s'est révélé être un traître et a tenté de s'emparer du village avec le Culte de la Lame du Crépuscule. Arator, Umbric et le champion ont repoussé l'assaut avant de le traquer dans les ruines de Mortholme. Avec l'aide de Valeera Sanguinar, ils ont finalement mis fin à la vie du traître. Les recherches d'Umbric ont été détruites dans le chaos général.

            Ils n’eurent guère le temps de se réjouir. De nouveaux rapports faisant état d’une activité des Fleurs de Lumière parvinrent du village de Couronne-Soleil. Arator et le champion arrivèrent sur place pour découvrir que tout le village avait été envahi par une végétation anormale et une faune mutante brillant de la Lumière. Après avoir secouru tous ceux qu’ils pouvaient encore sauver aux côtés de Dame Liadrin, ils rejoignirent les dirigeants de Lune-d’Argent à l’extérieur du village, à l’abri d’une pierre runique protectrice. Lor'themar en conclut que les trolls Amani étaient à l'origine de l'attaque, car un groupe d'entre eux avait été repéré dans les Bois des Chants éternels par Halduron Luisaile.

            Arator restait sceptique. Tandis que Lor'themar et Turalyon ralliaient l'Avant-garde de la Lumière, les Pérégrins et les Magistères pour une contre-offensive contre Zul'Aman, le jeune paladin partit mener sa propre enquête. Il découvrit que les trolls étaient tout autant menacés par le Vide que les elfes, et qu’ils n’avaient franchi les frontières de Quel’Thalas que pour utiliser le bois imprégné de magie du Luméclat comme armes contre la Lame du Crépuscule.

            Il arriva trop tard pour empêcher les combats. Poussé par une haine séculaire envers les Amani, Lor'themar avait lancé l'assaut. La petite troupe de guerriers Amani, menée par Zul'jan, fut rapidement submergée et Turalyon s'avança pour porter le coup de grâce à l'ennemi vaincu. Arator se jeta entre son père et Zul'jan, encaissant toute la force du coup, ce qui le laissa marqué à jamais et profondément désabusé.


            |cFFc8a84bQuêtes annexes:|r

            |cFFe0c06aCraintes gangrénées:|r
            Le chasseur de démons Belath Aubelame a mis au jour un réseau de contrebande illégal et l'utilisation de la magie gangrénée dans les rues perfides de l’Allée du meurtre. Aux côtés du champion, il a fait ce que les chasseurs de démons font le mieux : éliminer toute trace de culte démoniaque et de feu gangréné.
            
            |cFFe0c06aUn moindre mal:|r
            Les elfes opprimés et criminels de l’Allée du meurtre ont été enlevés, exploités et assassinés par un magistère avide de pouvoir cherchant à accroître sa propre force. Au final, justice a été rendue par les voleurs justiciers de l’Allée du meurtre et le champion d’Azeroth, bien que les injustices politiques de Lune-d’Argent soient restées inchangées.

            |cFFe0c06aPaladins en détresse:|r
            Taelia Fordragon et Salandria ont uni leurs forces pour secourir des paladins qui avaient été capturés alors qu’ils aidaient les magisters à lutter contre la Lame du Crépuscule. Elles ont porté un coup significatif à la secte, parvenant même à tuer l’un de ses chefs.     
            ]]
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
        npcLinks     = {"halduron_brightwing_midnight", "orweyna_tww", "rootwarden_ruia_midnight"},
        text         = "With the Lightbloom still threatening Quel'Thalas, {npc:halduron_brightwing_midnight} and the Champion accompany " ..
                       "{npc:orweyna_tww} to her homeland of Harandar, where the infection had also begun to spread. They gathered " ..
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
        npcLinks     = {"magister_umbric_midnight", "arator_midnight", "lothraxion_midnight", "alleria_windrunner_tww", "decimus_midnight"},
        text         = "{npc:magister_umbric_midnight} found a way to infiltrate the Voidstorm and the ren'dorei took the fight to " ..
                       "Xal'atath directly. Accompanied by {npc:arator_midnight} and {npc:lothraxion_midnight}, they reunited with " ..
                       "{npc:alleria_windrunner_tww} and formed an uneasy alliance with the domanaar {npc:decimus_midnight}. They confronted " ..
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
        npcLinks     = {"alleria_windrunner_tww", "turalyon_midnight", "arator_midnight", "lorthemar_theron_midnight"},
        text         = "The Vanguard of the Light breached the Voidstorm and assaulted Xal'atath in her own stronghold – the " ..
                       "Voidspire. Catastrophe ensued when {npc:alleria_windrunner_tww} fell to the Harbinger's blade and the dark " ..
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

-- TAB 3: PATCHES & NEW HORIZONS — Chronologische Patch-Timeline
IMAGOdb.eras["midnight"].patches = {
    {
        version  = "12.0.7",
        title    = "A Rejection of Unity",
        logoPath = "Interface\\AddOns\\IMAGO\\media\\Eras\\Patches\\MN_Patch_12.0.7.png",
        logo_w   = 1280, logo_h = 720,
        newZones = {"Naigtal", "Val"},
        npcLinks = {"orweyna_tww", "zuljan_midnight", "loa_speaker_kinduru_midnight"},
        text     = "{npc:orweyna_tww} invited the leaders of Azeroth's elves and trolls to Harandar to reveal a " ..
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

-- TAB 4: KEY FIGURES — Hybrid (slug + era-spezifischer Blurb)
IMAGOdb.eras["midnight"].keyFigures = {
    { slug="lorthemar_theron_midnight", arcLabel="Last Bastion of Defense",                    blurb="The leader of the blood elves was in charge of the defense of Quel'Thalas. He compromised and fought hard, and eventually saw his nation survive." },
    { slug="lady_liadrin_midnight",     arcLabel="Mender of Bridges",                          blurb="Summoned the Vanguard of the Light and forged a tentative alliance with the Amani, breaking a cycle of hatred that lasted for thousands of years." },
    { slug="arator_midnight",           arcLabel="The Redeemer",                               blurb="Stepped out of his parents' shadows as a beacon of hope in his own right, rather than simply the son of legends." },
    { slug="turalyon_midnight",         arcLabel="Commander, Father, Light-blinded Paladin",   blurb="As commander of the Vanguard of the Light, Turalyon's unwavering faith became both his greatest strength and his greatest flaw. Trying to balance duty and family, he nearly lost both." },
    { slug="xal_atath_midnight",        arcLabel="Bringer of the End",                         blurb="She achieved everything she came for. With the Sunwell corrupted, Xal'atath moved one step closer to Azeroth's end." },
    { slug="magister_umbric_midnight",  arcLabel="The Wayward Mage",                           blurb="Determined to get back into Silvermoon's good graces, Umbric used his mastery of the Void to take the battle to Xal'atath, fighting her at her own game." },
}