-- ============================================================
-- IMAGO — data/zones.lua
-- Die Lore-Datenbank für Zonen
-- ============================================================

IMAGOdb = IMAGOdb or {}
IMAGOdb.zones = IMAGOdb.zones or {}

IMAGOdb.zones[2405] = {
    id = 2405, 
    name_deDE = "Leerensturm",
    name_enUS = "Voidstorm",
    texturePath = "Interface\\AddOns\\IMAGO\\media\\voidstorm.tga", 
    factionControl = "CAT_VOID",
    lore_deDE = "Der Leerensturm ist die absolute Manifestation von Xal'ataths Zerstörungswut und das Epizentrum der Korruption in Midnight. Einst ein Randgebiet von Quel'Thalas, wurde das Land durch gigantische kosmische Risse und instabile Leerenenergie in ein lebensfeindliches Ödland zerrissen. Wandernde Risse und umgedrehte Gravitationsfelder prägen die Landschaft. Hier patrouillieren die Domanaar – Xal'ataths 'Verschlingende Schar' – getrieben von einem unstillbaren Hunger nach Macht. Im Zentrum dieser apokalyptischen Zone thront die gigantische Leerenspitze, aus der heraus die Vorbotin ihren finalen Schlag gegen den Sonnenbrunnen orchestriert.",
    lore_enUS = "The Voidstorm is the absolute manifestation of Xal'atath's destructive wrath and the epicenter of corruption in Midnight. Once a border region of Quel'Thalas, the land has been torn apart by gigantic cosmic rifts and unstable Void energy into a hostile wasteland. Wandering rifts and inverted gravity fields define the landscape. Here, the Domanaar—Xal'atath's 'Devouring Swarm'—patrol, driven by an insatiable hunger for power. At the center of this apocalyptic zone looms the massive Voidspire, from which the Harbinger orchestrates her final strike against the Sunwell.",
    pointsOfInterest = {
        {
            name_deDE = "Die Leerenspitze",
            name_enUS = "The Voidspire",
            lore_deDE = "Das schreckliche Nervenzentrum der Invasion. Ein monumentaler Schlachtzug, in dem sich die Streitkräfte von Licht und Schatten um das Schicksal von Azeroth duellieren.",
            lore_enUS = "The terrifying nerve center of the invasion. A monumental raid where the forces of Light and Shadow duel for the fate of Azeroth."
        },
        {
            name_deDE = "Arena der Leerennarbe",
            name_enUS = "Arena of the Voidscar",
            lore_deDE = "Aufseher Charonus zwingt hier entführte Champions aus ganz Azeroth (wie den hochgeschätzten Taz'Rah) in tödliche, nicht enden wollende Gladiatorenkämpfe.",
            lore_enUS = "Overseer Charonus forces abducted champions from all over Azeroth (such as the esteemed Taz'Rah) into deadly, never-ending gladiatorial combat here."
        },
        {
            name_deDE = "Nexuspunkte der Singularität",
            name_enUS = "Nexus Points of the Singularity",
            lore_deDE = "Zerstörte arkane Anlagen, deren Kerne nun vor instabiler Leerenenergie pulsieren. Die Leerenelfen nutzen diese Orte für ihre gefährlichen Gegenschläge.",
            lore_enUS = "Destroyed arcane facilities whose cores now pulse with unstable Void energy. The Void Elves use these locations for their dangerous counterstrikes."
        }
    }
}

IMAGOdb.zones[2444] = {
    id = 2444,
    name_deDE = "Schlächteranhöhe",
    name_enUS = "Slayer's Rise",
    texturePath = "Interface\\AddOns\\IMAGO\\media\\slayers_rise.tga", 
    factionControl = "CAT_CONTESTED",
    lore_deDE = "Die Schlächteranhöhe ist das blutgetränkte Herz des Konflikts im Leerensturm. Hier, wo die Grenzen zwischen offener Welt und epischen Schlachten verschwimmen, ringen Horde, Allianz und die verheerenden Domanaar in einem brutalen Überlebenskampf um die Vorherrschaft. Was einst eine strategische Anhöhe von Quel'Thalas war, ist heute ein Knotenpunkt des unerbittlichen Krieges. Entlang des 'Pfads der Pirsch' entbrennen monumentale 40-gegen-40 Gefechte, während mutige Helden im offenen Welt-PvP nach strategischen Vorteilen suchen. Ob im strukturierten Kampf oder im gnadenlosen Scharmützel – die Schlächteranhöhe verlangt ihren Tribut in Blut und Ehre.",
    lore_enUS = "Slayer's Rise is the blood-soaked heart of the conflict in the Voidstorm. Here, where the lines between the open world and epic battles blur, the Horde, Alliance, and the devastating Domanaar clash in a brutal struggle for supremacy. What was once a strategic elevation of Quel'Thalas is now a nexus of relentless war. Monumental 40v40 skirmishes ignite along the 'Path of Predation', while brave heroes scour the open world PvP areas for strategic advantages. Whether in structured combat or ruthless skirmishes—Slayer's Rise exacts its toll in blood and honor.",
    pointsOfInterest = {
        {
            name_deDE = "Pfad der Pirsch",
            name_enUS = "Path of Predation",
            lore_deDE = "Die zentrale Ader des Schlachtfelds. Hier drängen die Fraktionen in einem dynamischen Tauziehen vor, durchbrechen Verteidigungslinien und versuchen, den feindlichen Domanaar-Kommandeur zur Strecke zu bringen.",
            lore_enUS = "The central artery of the battlefield. Here the factions push forward in a dynamic tug-of-war, breaching defenses and attempting to take down the enemy Domanaar commander."
        },
        {
            name_deDE = "Die befestigten Stützpunkte",
            name_enUS = "The Fortified Strongholds",
            lore_deDE = "Schwer bewachte Bastionen der Horde und Allianz an den Rändern des Gebiets. Sie dienen als strategischer Rückzugsort, Respawnpunkt und lokaler Knotenpunkt für Fraktions-Missionen.",
            lore_enUS = "Heavily guarded bastions of the Horde and Alliance at the edges of the area. They serve as a strategic retreat, respawn point, and local hub for faction missions."
        },
        {
            name_deDE = "Neutraler Schlichterposten",
            name_enUS = "Neutral Arbiter Post",
            lore_deDE = "Ein seltener Zufluchtsort inmitten des Chaos. Hier versammeln sich Gladiatoren ungestört für Duelle, exklusive PvP-Händler bieten ihre Kriegsbeute an und sichere Portale führen zurück in die Hauptstädte.",
            lore_enUS = "A rare sanctuary amidst the chaos. Here, gladiators gather undisturbed for duels, exclusive PvP vendors offer their spoils of war, and safe portals lead back to the capitals."
        }
    }
}

IMAGOdb.zones[2413] = {
    id = 2413,
    name_deDE = "Harandar",
    name_enUS = "Harandar",
    texturePath = "Interface\\AddOns\\IMAGO\\media\\harandar.tga", 
    factionControl = "CAT_NEUTRAL",
    lore_deDE = "Harandar ist die Heimat der Haranir, tief verborgen unter den gewaltigen Wurzelpfaden der Weltenbäume. Dieser biolumineszente Pilzdschungel ist ein Ort von urtümlicher Magie, dessen Bewohner als geheime Wächter Azeroths in vollkommener Harmonie mit der Natur leben. Doch die friedliche Existenz des Hara'ti-Stammes steht am Abgrund: Der Riss von Aln, eine urzeitliche Wunde, lässt die Grenze zwischen Traum und Realität verschwimmen und speit furchterregende Albträume aus. Gleichzeitig überwuchert die zerstörerische und fanatische Macht der Lichtblüte das Land, welche die heimische Flora korrumpiert.",
    lore_enUS = "Harandar is the home of the haranir, concealed deep beneath the massive rootways of the world trees. This bioluminescent fungal jungle is a place of primordial magic, whose inhabitants live as secret guardians of Azeroth in perfect harmony with nature. However, the peaceful existence of the Hara'ti tribe is on the brink: The Rift of Aln, a primordial wound, blurs the line between dream and reality, spewing forth terrifying nightmares. Simultaneously, the destructive and fanatical power of the Lightbloom overgrows the land, corrupting the native flora.",
    pointsOfInterest = {
        {
            name_deDE = "Der Riss von Aln",
            name_enUS = "The Rift of Aln",
            lore_deDE = "Eine urzeitliche Wunde im Gefüge von Azeroth. Hier ist die Barriere zur Ebene der Träume so dünn, dass die Echos des Schmerzes der Göttin mächtig genug sind, um selbst den stärksten Geist in den Wahnsinn zu treiben.",
            lore_enUS = "A primordial wound in the fabric of Azeroth. Here, the barrier to the plane of dreams is so thin that the echoes of the Goddess' anguish are powerful enough to drive even the strongest mind to madness."
        },
        {
            name_deDE = "Das Tal der Blendung",
            name_enUS = "The Blinding Vale",
            lore_deDE = "Ein schreckliches Zeugnis der jüngsten Bedrohung. Die Lichtblüte ist hier explosionsartig herangewachsen und verwandelt die einst friedlichen Rutaani unter der Führung des machthungrigen Lichthüters Ruia in blinde Fanatiker.",
            lore_enUS = "A terrifying testament to the recent threat. The Lightbloom sprouted instantly here, transforming the once-peaceful Rutaani into blind zealots under the command of the power-hungry Lightkeeper Ruia."
        },
        {
            name_deDE = "Der Bau der Echos",
            name_enUS = "The Den of Echoes",
            lore_deDE = "Das spirituelle und politische Herz von Harandar. Hier versammelt sich der Ältestenrat um Naynar, bewahrt die magischen Gemälde der Ahnen und orchestriert die Rettung der Wurzelpfade.",
            lore_enUS = "The spiritual and political heart of Harandar. Here, the Elder Council gathers around Naynar to preserve the magical paintings of the ancestors and orchestrate the salvation of the rootways."
        }
    }
}

IMAGOdb.zones[2437] = {
    id = 2437,
    name_deDE = "Zul'Aman",
    name_enUS = "Zul'Aman",
    texturePath = "Interface\\AddOns\\IMAGO\\media\\zulaman.tga", 
    factionControl = "CAT_NEUTRAL",
    lore_deDE = "Zul'Aman, die uralte Heimat der Amanitrolle, entfaltet sich als weitläufiges Gebiet voller dichter Wälder, hoher Berge und gnadenloser Wildnis. Unter der Führung von Zul'jarra, der Enkelin des legendären Zul'jin, versucht das einst stolze Volk verzweifelt, den Ansturm der Leere zu überleben. Der brüchige Frieden mit den benachbarten Blutelfen aus dem Immersangwald steht auf Messers Schneide, während Zul'jarra und ihr militanter Bruder Zul'jan mit dem schmerzhaften Verlust der Verbindung zu ihren Loa ringen. Inmitten dieser existenziellen Krise erheben sich vergessene Feinde aus dem Schatten, und die blutige Historie der Troll-Kultur offenbart sich jenen Entdeckern, die mutig genug sind, diese uralten Ländereien zu betreten.",
    lore_enUS = "Zul'Aman, the ancient home of the Amani trolls, unfolds as an expansive region of dense forests, tall mountains, and unforgiving wilderness. Under the leadership of Zul'jarra, the granddaughter of the legendary Zul'jin, the once-proud people desperately try to survive the Void onslaught. The fragile peace with the neighboring blood elves of Eversong Woods hangs by a thread as Zul'jarra and her militant brother Zul'jan grapple with the agonizing loss of connection to their loa. Amidst this existential crisis, forgotten enemies rise from the shadows, and the bloody history of troll culture reveals itself to explorers brave enough to enter these ancient lands.",
    pointsOfInterest = {
        {
            name_deDE = "Die verlassenen Loa-Tempel",
            name_enUS = "The Abandoned Loa Temples",
            lore_deDE = "Einst prachtvolle Schreine, die den mächtigen Geistern von Akil'zon (Adler), Halazzi (Luchs), Jan'alai (Drachenfalke) und Nalorakk (Bär) geweiht waren. Heute sind sie von Dschungelranken überwuchert und stehen als stumme Denkmäler einer schwindenden spirituellen Macht.",
            lore_enUS = "Once magnificent shrines dedicated to the powerful spirits of Akil'zon (eagle), Halazzi (lynx), Jan'alai (dragonhawk), and Nalorakk (bear). Today, they are overgrown with jungle vines and stand as silent monuments to a fading spiritual power."
        },
        {
            name_deDE = "Die Maisara-Höhlen",
            name_enUS = "Maisara Caverns",
            lore_deDE = "Tief unter den heiligen Hügeln vollziehen extremistische Trolle der Vilebranch grausame Opferrituale an gefangenen Witherbark. Ihre verbotene Nekromantie speist einen monströsen Gräueltroll namens Rak'tul – eine tickende magische Zeitbombe, die ganz Zul'Aman ins Chaos stürzen könnte.",
            lore_enUS = "Deep beneath the sacred hills, extremist Vilebranch trolls perform gruesome sacrificial rituals on captured Witherbark. Their forbidden necromancy feeds a monstrous dire troll named Rak'tul—a ticking magical time bomb that could plunge all of Zul'Aman into chaos."
        },
        {
            name_deDE = "Der Zerbrochene Thron",
            name_enUS = "The Broken Throne",
            lore_deDE = "Das architektonische und politische Herz der Zone. Hier koordiniert Zul'jarra verzweifelt den Widerstand. Umgeben von gigantischen Türmen, in denen wertvolle Artefakte und tödliche Rätsel verborgen liegen, entscheidet sich hier das Schicksal der Amani.",
            lore_enUS = "The architectural and political heart of the zone. Here, Zul'jarra desperately coordinates the resistance. Surrounded by massive towers hiding valuable artifacts and deadly puzzles, the fate of the Amani will be decided here."
        }
    }
}

IMAGOdb.zones[2395] = {
    id = 2395,
    name_deDE = "Immersangwald",
    name_enUS = "Eversong Woods",
    texturePath = "Interface\\AddOns\\IMAGO\\media\\eversongwoods.tga", 
    factionControl = "CAT_CONTESTED",
    lore_deDE = "Der Immersangwald, das goldene Herz von Quel'Thalas und Heimat der Blutelfen. Diese atemberaubenden Lande wurden von vielen Tragödien gezeichnet, von denen die meisten durch die mächtige Magie des Sonnenbrunnens verursacht wurden, die jene verlockt, die seine Kraft für ihre eigenen finsteren Zwecke missbrauchen wollen. Nachdem Arthas eine Schneise aus Tod und Verfall durch das Zentrum des Waldes geschlagen hatte, glaubten viele, das Land würde sich nie erholen. Über Jahrzehnte hinweg jedoch gelang es den Magistern der Blutelfen, neues Leben zu kultivieren und Immersang zu seiner früheren Pracht zurückzuführen. Doch während die Verschlingende Horde von oben droht und die Lichtblüte aus der Tiefe hervorbricht, ist der Immersangwald von allen Seiten von Gefahren bedrängt.",
    lore_enUS = "Eversong Woods, the golden heart of Quel’thalas and home of the blood elves. These breathtaking lands have been marred by many tragedies, most caused by the potent magic of the Sunwell tempting those who would use its power to their own nefarious ends. After Arthas carved a path of death and decay through the center of the woods, many believed the land would never recover. Over decades, however, blood elf magisters were able to cultivate life anew, returning Eversong to its former glory. Still, with the Devouring Host threatening from above and the Lightbloom bursting from below, Eversong Woods is beset by threats on all sides.",
    pointsOfInterest = {
        {
            name_deDE = "Insel der Sonnenwanderer",
            name_enUS = "Sunstrider Isle",
            lore_deDE = "Die Geschichten vieler heldenhafter Blutritter, Magister und Blutelfen aller Couleur begannen irgendwo. Die Insel der Sonnenwanderer dient seit Generationen als Lernort für junge Sin'dorei. Einst verlassen, fördert die hoch aufragende Akademie von Falthrien nun wieder frische Geister und vermittelt die Fertigkeiten, die jeder Abenteurer auf dem Weg vor ihm benötigt.",
            lore_enUS = "The tales of many heroic blood knights, magisters and blood elves of all stripes began somewhere. Sunstrider Isle has served as a place of learning for young sin’dorei for generations. Once abandoned, the towering Falthrien Academy now nurtures fresh minds once more, imparting the skills any adventurer will need on the path ahead of them."
        },
        {
            name_deDE = "Dorf Morgenluft",
            name_enUS = "Fairbreeze Village",
            lore_deDE = "Als eine der größten Siedlungen außerhalb Silbermonds dient Dorf Morgenluft als einflussreiches Handelszentrum im Immersangwald. Der nahegelegene Ankerplatz der Sonnensegel ist für viele der Im- und Exporte Quel'Thalas verantwortlich.Dieser geschäftige Ruf wird durch die Präsenz von Saltherils Hafen gestützt. Dieses weitläufige Anwesen neben dem Dorf beherbergt prunkvolle Galas und vereint die unterschiedlichen Klassen Silbermonds in Gesprächen und Zerstreuung. Doch da die Lichtblüte Ath’Ran von Süden her droht, riskiert Morgenluft dasselbe Schicksal wie Sonnenglanzdorf: vom unaufhörlichen Wachstum verschlungen zu werden.",
            lore_enUS = "One of the largest settlements outside of Silvermoon itself, Fairbreeze village serves as an influential center of commerce in Eversong. The nearby Sunsail Anchorage is responsible for many of the imports and exports of Quel’thalas.This bustling reputation is bolstered by the presence of Saltheril’s Haven. This sprawling estate adjacent to the village hosts grand galas, uniting the disparate classes of Silvermoon in conversation and frivolity. Still, with Lightbloom Ath’Ran threatening from the south, Fairbreeze risks the same fate as Suncrown Village, devoured by the unceasing growth."
        },
        {
            name_deDE = "Windläuferspitze",
            name_enUS = "Windrunner Spire",
            lore_deDE = "Einst Heim der gefeierten Windläuferfamilie, ist diese gewaltige Spitze seit den Tagen des Dritten Krieges von Feinden besetzt. Zuvor als Trophäe ihres Sieges von den Streitkräften der Geißel gehalten, liegt der Turm nun verlassen und reglos da, heimgesucht von den Gespenstern der Windläuferfamilie und ihren vielen Tragödien.",
            lore_enUS = "Once home to the acclaimed Windrunner family, this grand spire has been occupied by enemies since the days of the Third War. Previously  held by Scourge forces as a trophy of their victory, the tower now lies dormant, haunted by the spectres of the Windrunner family and its many tragedies."
        }
    }
}

IMAGOdb.zones[2424] = {
    id = 2424,
    name_deDE = "Insel von Quel'Danas",
    name_enUS = "Isle of Quel'Danas",
    texturePath = "Interface\\AddOns\\IMAGO\\media\\queldanas.tga", 
    factionControl = "CAT_CONTESTED",
    lore_deDE = "Die Insel von Quel'Danas, das strahlende Kronjuwel des Elfenimperiums und Heimat des heiligen Sonnenbrunnens, ist zum ultimativen Schlachtfeld geworden. Xal'atath hat die gesamte Macht ihrer Leerenarmada hierher gelenkt, um den Quell aus Licht und arkaner Magie in ewige Finsternis zu stürzen. Der Himmel über der Insel ist von gigantischen kosmischen Rissen durchzogen, während sich Blut-, Hoch- und Leerenelfen zum ersten Mal seit Jahrtausenden vereinen. Schulter an Schulter stehen sie in einem verzweifelten letzten Gefecht, um das absolute Herz ihrer Zivilisation vor dem Untergang zu bewahren.",
    lore_enUS = "The Isle of Quel'Danas, the radiant crown jewel of the elven empire and home to the sacred Sunwell, has become the ultimate battleground. Xal'atath has focused the full might of her Void armada here to plunge the fount of Light and Arcane magic into eternal darkness. The skies above the island are torn by massive cosmic rifts, while Blood, High, and Void Elves unite for the first time in millennia. Shoulder to shoulder, they stand in a desperate last stand to save the absolute heart of their civilization from ruin.",
    pointsOfInterest = {
        {
            name_deDE = "Der Sonnenbrunnen",
            name_enUS = "The Sunwell",
            lore_deDE = "Das magische Zentrum der Elfen und Xal'ataths primäres Ziel. Der Brunnen wurde massiv befestigt und pulsiert mit instabilen Energien, während die mächtigsten Magier Azeroths einen gewaltigen Schild gegen die alles verschlingende Leere aufrechterhalten.",
            lore_enUS = "The magical center of the elves and Xal'atath's primary target. The well has been heavily fortified and pulses with volatile energies as Azeroth's most powerful magi maintain a massive shield against the all-consuming Void."
        },
        {
            name_deDE = "Heiligtum der Sonnenweiten",
            name_enUS = "Sanctum of the Sun's Reach",
            lore_deDE = "Einst das Hauptquartier der Offensive der Zerschmetterten Sonne, wurde dieser Stützpunkt zu einer undurchdringlichen Festung ausgebaut. Hier koordinieren die vereinten Fraktionsführer die Verteidigung der gesamten Insel.",
            lore_enUS = "Once the headquarters of the Shattered Sun Offensive, this staging ground has been rebuilt into an impenetrable fortress. Here, the united faction leaders coordinate the defense of the entire island."
        },
        {
            name_deDE = "Die Morgensternfront",
            name_enUS = "The Dawnstar Front",
            lore_deDE = "Die blutigen Strände der Insel, an denen Xal'ataths Invasionstruppen unablässig anlanden. Ein brutaler, nicht enden wollender Fleischwolf, in dem arkane Golems und Leerenbestien in einem endlosen Krieg aufeinanderprallen.",
            lore_enUS = "The bloody beaches of the island where Xal'atath's invasion forces relentlessly make landfall. A brutal, unending meat grinder where arcane golems and void beasts clash in an endless war."
        }
    }
}

IMAGOdb.zones[2393] = {
    id = 2393,
    name_deDE = "Silbermond",
    name_enUS = "Silvermoon City",
    texturePath = "Interface\\AddOns\\IMAGO\\media\\silvermoon.tga", 
    factionControl = "CAT_CONTESTED",
    lore_deDE = "Silbermond, das ewige Kronjuwel der Blutelfen, ist aus der Asche auferstanden und erneut zu einer blühenden Metropole geworden. Die Narben der Geißel und der Brennenden Legion ließen kaum etwas unversehrt, doch die talentierten Kunsthandwerker und Magister der großen Stadt haben sie zu ihrer früheren Pracht zurückgeführt. Nun, da die Bedrohung durch den Leerensturm über ihnen schwebt, sammeln die Sin'dorei ihre Verbündeten, um die Dunkelheit zurückzuschlagen, die die Stadt ein weiteres Mal dem Erdboden gleichmachen will.",
    lore_enUS = "Silvermoon City, the eternal crown jewel of the blood elves, has risen from the ashes to become a thriving metropolis once more. The scars of both the Scourge and the Burning Legion left little intact, but the talented artisans and magisters of the grand city have returned it to its former glory. Now, with the threat of the Voidstorm looming overhead, the sin’dorei rally their allies to push back the darkness threatening to raze the city once again.",
    pointsOfInterest = {
        {
            name_deDE = "Die Sonnenzornspitze",
            name_enUS = "Sunfury Spire",
            lore_deDE = "Die Sonnenzornspitze ist der Sitz der politischen Macht in Silbermond; Lor'themar Theron und seine Berater haben von ihren Zinnen aus die Richtung Quel'Thalas bestimmt. Stoisch über der Skyline von Silbermond aufragend, hat die Sonnenzornspitze den Test der Zeit bestanden und ist ein Zeugnis für die Widerstandskraft der Blutelfen.",
            lore_enUS = "The seat of political power in Silvermoon, Lor’themar Theron and his advisors have defined the direction of Quel’thalas from within its spires. Rising stoically above the Silvermoon skyline, Sunfury Spire has stood the test of time and is a testament to the resilience of the blood elves."
        },
        {
            name_deDE = "Mördergasse",
            name_enUS = "Murder Row",
            lore_deDE = "Auch wenn einige der Oberklasse von Silbermond es lieber ignorieren würden: Nicht jede Straße der Stadt ist sicher. In den schattigen Ecken der Mördergasse haben sich allerlei zwielichtige Gestalten niedergelassen. Hier experimentiert Astalor Blutschwur mit Qualen, einer vielversprechenden neuen Energiequelle. Ein beißender Schwefelgeruch liegt in der Luft und deutet auf die Präsenz dunkler Teufelsmagie in den tiefsten Winkeln hin.",
            lore_enUS = "Though some of Silvermoon’s upper class would prefer to ignore it, not every street in the city is safe. In the shadowy corners of Murder Row, all manner of unsavory characters have made their home. Here, Astalor Bloodsworn experiments with anguish, a promising new source of power. An acrid scent of brimstone is carried on the breeze, suggesting the presence of dark Fel magic in its deepest corners."
        },
        {
            name_deDE = "Thalassische Universität",
            name_enUS = "Thalassian University",
            lore_deDE = "Silbermond war schon immer Vorreiter der arkanen Künste. Es waren die Elfen von Quel'Thalas, die der Menschheit erstmals zeigten, wie man die Arkane Macht selbst nutzt. In dieser Tradition umfasste der Wiederaufbau Silbermonds einen weitläufigen Universitätscampus. Hier wird die nächste Generation von Magiern unter der weisen Anleitung ihrer hochgeschätzten Professoren ausgebildet.",
            lore_enUS = "Silvermoon City has always been at the forefront of the arcane arts. It was the elves of Quel’thalas that first showed humanity how to wield the arcane for themselves. In that tradition, the reconstruction of Silvermoon included a sprawling university campus. Here, the next generation of mages is trained under the wise tutelage of their esteemed professors."
        }
    }
}
