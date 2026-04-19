-- ============================================================
-- IMAGO — data/NPCs.lua
-- Version: 1.0 — 50 verifizierte NPCs (Midnight 12.x)
-- Bereinigt: Duplikate zusammengeführt, displayIDs korrigiert,
-- Zonen lokalisiert (zones_deDE / zones_enUS)
-- ============================================================

IMAGOdb = IMAGOdb or {}
IMAGOdb.npcs = {}

IMAGOdb.npcs["lorthemar_theron"] = {
    displayName_deDE = "Lor'themar Theron",
    displayName_enUS = "Lor'themar Theron",
    race_deDE = "Blutelf",
    race_enUS = "Blood Elf",
    displayID = 235787,
    zones_deDE = {"Amirdrassil", "Harandar", "Immersangwald", "Insel von Quel'Danas", "Silbermond"},
    zones_enUS = {"Amirdrassil", "Harandar", "Eversong Woods", "Isle of Quel'Danas", "Silvermoon City"},
    ids = {
        235787, 241784, 240266, 250181, 248632, 235481, 236779, 244574, 
        239698, 236896, 236961, 239612, 236572, 236612, 241272, 241206, 
        237433, 246487
    },
    category = "CAT_QUELTHALAS",
    lore_deDE = 
[[Lor'themar Theron, im Herzen ein Waldläufer, hat sich nie dazu entschieden, die Blutelfen anzuführen. Als Quel'Thalas im Dritten Krieg der Geißel zum Opfer fiel, wurde er in Ermangelung anderer überlebender Kandidaten von Prinz Kael'thas zum Regenten des gefallenen Königreichs ernannt.

Er war gezwungen, schwierige Entscheidungen zu treffen, wie das Bündnis der Blutelfen mit der Horde, die Verbannung der Hochelfen zur Bekämpfung von Unruhen und die Führung der Schlacht gegen Kael'thas nach dem Verrat des Prinzen. Lor'themars Pragmatismus und strategische List machten ihn dennoch zu einem inspirierenden Anführer, der bei Freunden und Feinden gleichermaßen Respekt genießt.

Als überzeugter Verfechter des Friedens dient Lor'themar heute sowohl als Regent-Lord von Quel'Thalas als auch als Mitglied des regierenden Hordenrats. Seine Loyalität gilt in erster Linie seinem Volk.

Jetzt, da Quel'Thalas erneut in Gefahr ist, wird er vor nichts zurückschrecken, um sein Volk und seine Stadt gegen die vordringenden Mächte der Leere zu verteidigen.]],
    lore_enUS = 
[[A ranger at heart, Lor'themar Theron didn't choose to lead the blood elves. When Quel'thalas fell to the Scourge in the Third War he was appointed, in absence of any other surviving candidates, to serve the fallen kingdom as regent by Prince Kael'thas.
He was forced to make difficult decisions, such as allying the blood elves with the Horde, exiling the high elves to combat unrest, and leading the battle against Kael'thas after the prince's betrayal. Lor'themar's pragmatism and strategic cunning made him an inspiring leader nontheless, commanding respect from friends and foes alike. 
A staunch advocate for peace, Lor'themar serves now both as regent lord of Quel'thalas and as a member of the Horde's ruling council. His loyality lies first and foremost with his people.

Now, with Quel'thalas in peril once again, he will stop at nothing to defend his people and his city against the encroaching forces of the void.]],
    timeline = {
        {era = "Warcraft 2", text_deDE = "Wurde nach der Verteidigung von Silbermond zum Waldläuferlord befördert.", text_enUS = "Successfully defended Silvermoon under Sylvanas Windrunner's command and was promoted to ranger lord.", source = "warcraft.wiki.gg/wiki/Lor'themar_Theron"},
        {era = "Warcraft 3", text_deDE = "Von Kael'thas zum Regenten ernannt; befreite Silbermond von der Geißel.", text_enUS = "After surviving Quel'thalas' destruction, Prince Kael'Thas promoted him to regent lord. He successfully reclaimed Silvermoon from the Scourge", source = "warcraft.wiki.gg/wiki/Lor'themar_Theron"},
        {era = "TBC",         text_deDE = "Schloss sich der Horde an; setzte den verräterischen Kael'thas ab; blieb Regent-Lord.", text_enUS = "He led the blood elves to join the Horde, made the decision to exile the high elves, and deposed of Kael'thas after his treachery. After the civil war, Lor'themar remained as regent lord.", source = "warcraft.wiki.gg/wiki/Lor'themar_Theron"},
        {era = "WotLK",      text_deDE = "Entsandte Truppen nach Nordend gegen den Lichkönig; half bei der Rückgewinnung von Quel'delar.", text_enUS = "Reluctantly agreed to send elven troops to Northrend to aid the Horde in the battle against the Lich King and helped recover the ancient weapon Quel'delar.", source = "warcraft.wiki.gg/wiki/Lor'themar_Theron"},
        {era = "Pre-MoP",    text_deDE = "Weigerte sich, an Garroshs Angriff auf Theramore teilzunehmen.", text_enUS = "Refused to personally take part in the attack on Theramore, drawing the ire of Garrosh Hellscream.", source = "warcraft.wiki.gg/wiki/Lor'themar_Theron"},
        {era = "MoP",        text_deDE = "Verhandelte mit Varian Wrynn; schloss sich nach der Säuberung von Dalaran der Rebellion gegen Garrosh an.", text_enUS = "Negotiated with King Varian Wrynn to rejoin the Alliance after heavily disagreeing with Garrosh's leadership. After the purge of Dalaran, he remained in the Horde and played a key part in the rebellion against Garrosh Hellscream.", source = "warcraft.wiki.gg/wiki/Lor'themar_Theron"},
        {era = "BfA",        text_deDE = "Führte die Nachtgeborenen in die Horde; kämpfte gegen Königin Azshara; wurde Mitglied des Hordenrats.", text_enUS = "Successfully invited the nightborne of Suramar to join the Horde. He later personally led the Horde forces in the campaign against Queen Aszhara and joined the rebellion against Sylvanas Windrunner. After the Fourth War he joined the newly-formed Horde council as one of its leaders.", source = "warcraft.wiki.gg/wiki/Lor'themar_Theron"},
        {era = "Pre-DF",     text_deDE = "Heiratete die Erste Arkanistin Thalyssra als Symbol des Friedens.", text_enUS = "Married Thalyssra and invited both Horde and Alliance leaders to the wedding in a show of support for peace between the factions.", source = "warcraft.wiki.gg/wiki/Lor'themar_Theron"},
        {era = "DF",         text_deDE = "Half bei der Verteidigung von Amirdrassil.", text_enUS = "Joined in the defense of Amirdrassil.", source = "warcraft.wiki.gg/wiki/Lor'themar_Theron"},
        {era = "Midnight",   text_deDE = "Führte die Verteidigung von Silbermond gegen die vordringende Leere an.", text_enUS = "Led the blood elf forces in Silvermoon's defense against the Void.", source = "warcraft.wiki.gg/wiki/Lor'themar_Theron"},
    },
}

IMAGOdb.npcs["erste_arkanistin_thalyssra"] = {
    displayName_deDE = "Erste Arkanistin Thalyssra",
    displayName_enUS = "First Arcanist Thalyssra",
    race_deDE = "Nachtgeborene",
    race_enUS = "Nightborne",
    displayID = 256046,
    zones_deDE = {"Amirdrassil", "Der Ewige Palast", "Insel von Quel'Danas", "Silbermond", "Suramar"},
    zones_enUS = {"Amirdrassil", "The Eternal Palace", "Isle of Quel'Danas", "Silvermoon City", "Suramar"},
    ids = {
        256046, 254654, 240302, 244582, 240255, 250853, 253777, 245065,
        254453, 248848, 253778, 253779, 244652, 248846, 240301, 239799
    },
    category = "CAT_QUELTHALAS",
    lore_deDE =
[[Erste Arkanistin Thalyssra ist die Anführerin der Nachtgeborenen. Einst von einem korrupten Herrscher aus ihrer Heimatstadt Suramar verbannt, befreite Thalyssra das Volk der Shal'dorei von seiner Abhängigkeit von der Macht des Nachtbrunnens und übernahm nach der Plünderung Suramars die Führung. Heute regiert sie Seite an Seite mit Lor'themar Therons Blutelfen und vereint beide Kulturen durch ihre gemeinsame Zugehörigkeit zur Horde – und durch die Einheit ihrer Ehe.]],
    lore_enUS =
[[First Arcanist Thalyssra is the leader of the nightborne elves. Once exiled from her home city of Suramar by a corrupt ruler, First Arcanist Thalyssra has liberated the shal'dorei people of their addiction to their Nightwell's power, stepping up to lead after the sacking of Suramar. She now rules her people arm in arm with Lor'themar Theron's blood elves, uniting the two cultures through unity in the Horde, and the unity of their marriage]],
    timeline = {
        {era = "Legion",   text_deDE = "Thalyssra wurde aus Suramar verbannt, weil sie sich der Legion widersetzte, und sandte ein magisches Notsignal, das von Khadgar abgefangen wurde, wodurch sie in Shal'Aran einen Widerstand aufbauen konnte. Mit Verbündeten befreite sie die Nachtgeborenen von ihrer Abhängigkeit vom Nachtbrunnen und führte einen gemeinsamen Angriff mit Streitkräften von Horde und Allianz an, um Suramar zu befreien. Nachdem sie Anführerin geworden war, ließ sie den Nachtbrunnen verblassen und verpflichtete die Nachtgeborenen der Horde.", text_enUS = "Thalyssra was exiled from Suramar for opposing the Legion and sent a magical distress signal that was intercepted by Khadgar, allowing her to establish a resistance in Shal’Aran. With  allies, she freed the nightborne from their dependence on the Nightwell, and led a joint assault with Horde and Alliance forces to liberate Suramar. After becoming leader, she chose to let the Nightwell fade and pledged the nightborne to the Horde."},
        {era = "BfA",      text_deDE = "Während des Vierten Krieges half Thalyssra der Horde dabei, die Zandalari aus Sturmwind zu befreien, unterstützte die Hordenflotte in Nazjatar und stellte sich später auf die Seite der Rebellion gegen Sylvanas Windläufer. Nach N'Zoths Niederlage trat sie dem Hordenrat bei.", text_enUS = "During the Fourth War, Thalyssra assisted the Horde in breaking the Zandalari out of Stormwind, assisted the Horde fleet in Nazjatar, and later supported the rebellion against Sylvanas Windrunner. After N’Zoth’s defeat, she joined the Horde Council."},
        {era = "SL",       text_deDE = "Thalyssra war Zeugin des Rituals, das am Frostthron in der Eiskronenzitadelle das Tor zum Schlund öffnete. Nach der Niederlage des Kerkermeisters reisten Thalyssra und Lor'themar kurzzeitig nach Oribos in den Schattenlanden, um Sylvanas' Prozess beizuwohnen.", text_enUS = "Thalyssra witnessed the ritual to open the doorway to the Maw at the Frozen Throne within Icecrown Citadel. Following the defeat of the Jailer, Thalyssra and Lor'themar briefly traveled to Oribos in the Shadowlands to attend Sylvanas' trial."},
        {era = "DF",       text_deDE = "Thalyssra sah die Hordenexpedition zu den Dracheninseln aufbrechen. Sie und ihr inzwischen Ehemann Lor'themar Theron sinnierten darüber, wie glücklich sie waren, eine kurze Atempause gehabt zu haben, und neckten sich spielerisch darüber, wer wem den Antrag gemacht hatte. Später schloss sich Thalyssra Alexstrasza und ihren Verbündeten an, um das wachsende Amirdrassil im Smaragdgrünen Traum gegen Fyrakk den Brennenden zu verteidigen.", text_enUS = "Thalyssra saw the Horde expedition depart to the Dragon Isles. She and her now-husband, Lor’themar Theron, mused on how they were fortunate to have had a brief respite and playfully bantered about who proposed to whom. Thalyssra eventually joined Alexstrasza and her allies to defend the growing Amirdrassil from Fyrakk the Blazing in the Emerald Dream."},
        {era = "Midnight", text_deDE = "Thalyssra blieb in der Sonnenzornspitze in Silbermond, bis die Verderbnis des Sonnenbrunnens einsetzte. Sie bat Suramar um Hilfe, doch als keine Antwort kam, ging sie der Sache nach und enttarnte Infiltratoren von Twilight’s Blade. Nachdem sie die Ordnung wiederhergestellt hatte, führte sie die Armee der Nachtgeborenen nach Silbermond, um beim Angriff auf die Verschlingende Horde zu helfen.", text_enUS = "Thalyssra stayed in Sunfury Spire in Silvermoon until the Sunwell’s corruption. She requested aid from Suramar City, but when no response came, she went to investigate and uncovered Twilight’s Blade infiltrators. After restoring order, she led the nightborne army to Silvermoon to aid in the assault on the Devouring Host."},
    },
}

IMAGOdb.npcs["lady_liadrin"] = {
    displayName_deDE = "Lady Liadrin",
    displayName_enUS = "Lady Liadrin",
    race_deDE = "Blutelfe",
    race_enUS = "Blood Elf",
    displayID = 245271,
    zones_deDE = {"Atal'Aman", "Dornogal", "Immersangwald", "Insel von Quel'Danas", "Orgrimmar", "Parhelionplaza", "Silbermond", "Sturmwind", "Zul'Aman"},
    zones_enUS = {"Atal'Aman", "Dornogal", "Eversong Woods", "Isle of Quel'Danas", "Orgrimmar", "Parhelion Plaza", "Silvermoon City", "Stormwind City", "Zul'Aman"},
    ids = {
        245271, 236146, 236143, 241308, 258727, 241351, 244593, 253983, 241165, 240933,
        240042, 236144, 236158, 244992, 236604, 236128, 240039, 244437, 236154, 236163,
        240931, 240188, 244589, 244421, 240040, 256203, 252822, 240257, 253856, 251941,
        236965, 247414, 236692, 249615, 237253, 243165, 236693, 237278, 245062, 237277,
        241068, 245463, 246528, 236615, 236099, 236436, 241651, 236458, 236542, 236485,
        236586, 236570, 236593, 236140, 236611, 237288, 244261, 244422, 246438, 246926,
        246945, 246960, 246961, 251073, 251871
    },
    category = "CAT_QUELTHALAS",
    lore_deDE = "Einst eine hingebungsvolle Priesterin des Lichts, verlor Lady Liadrin nach der Vernichtung Silbermonds durch die Geißel ihren Glauben. Sie wurde die erste Blutritterin und bändigte das Licht zunächst durch den Entzug der Energien des Naaru M'uru. Durch die Wiederherstellung des Sonnenbrunnens fand sie Vergebung und wahre Hingabe. Heute ist sie als Matriarchin der Blutritter eine der edelsten Verfechterinnen des Leuchtenden Heeres und steht unerschütterlich zwischen ihrer Heimat und dem endlosen Hunger der Leere.",
    lore_enUS = "Once a devoted priestess of the Light, Lady Liadrin lost her faith after the Scourge decimated Silvermoon. She became the first Blood Knight, initially bending the Light to her will by siphoning the naaru M'uru. Through the restoration of the Sunwell, she found redemption and true devotion. Today, as Matriarch of the Blood Knights, she is one of the most noble champions of the Army of the Light, standing unwavering between her homeland and the endless hunger of the Void.",
    timeline = {
        {era = "Warcraft 3", text_deDE = "Überlebte die Invasion der Geißel auf Quel'Thalas, verlor ihren Glauben und legte den Priesterstab nieder, um zum Schwert zu greifen.", text_enUS = "Survived the Scourge invasion of Quel'Thalas, lost her faith, and abandoned the priesthood to take up the sword.", source = "warcraft.wiki.gg/wiki/Lady_Liadrin"},
        {era = "TBC",      text_deDE = "Gründete den Orden der Blutritter, wandte sich von Kael'thas ab, schwor den Sha'tar die Treue und half bei der Reinigung des Sonnenbrunnens.", text_enUS = "Founded the Blood Knights, turned against Kael'thas, pledged loyalty to the Sha'tar, and helped purify the Sunwell.", source = "warcraft.wiki.gg/wiki/Lady_Liadrin"},
        {era = "WoD",      text_deDE = "Führte die Sonnenverehrer (Sunsworn) in Auchindoun im Kampf gegen den Schattenrat und die Brennende Legion an.", text_enUS = "Led the Sunsworn in Auchindoun in the battle against the Shadow Council and the Burning Legion.", source = "warcraft.wiki.gg/wiki/Lady_Liadrin"},
        {era = "Legion",   text_deDE = "Wurde Hochlord der Silbernen Hand und kämpfte an der Seite der Armee des Lichts auf der Dämonenwelt Argus.", text_enUS = "Became a Highlord of the Silver Hand and fought alongside the Army of the Light on the demon world of Argus.", source = "warcraft.wiki.gg/wiki/Lady_Liadrin"},
        {era = "BfA",      text_deDE = "Rekrutierte die Nachtgeborenen für die Horde und befehligte Hordenstreitkräfte an der Kriegsfront im Arathihochland.", text_enUS = "Recruited the Nightborne into the Horde and commanded Horde forces at the Arathi Highlands Warfront.", source = "warcraft.wiki.gg/wiki/Lady_Liadrin"},
        {era = "Midnight", text_deDE = "Koordiniert die Streitkräfte des Lichts und der Blutritter, um Quel'Thalas gegen die Leerenmächte von Xal'atath zu verteidigen.", text_enUS = "Coordinates the forces of the Light and the Blood Knights to defend Quel'Thalas against Xal'atath's Void powers.", source = "warcraft.wiki.gg/wiki/Lady_Liadrin"},
    },
}

IMAGOdb.npcs["grand_magister_rommath"] = {
    displayName_deDE = "Großmagister Rommath",
    displayName_enUS = "Grand Magister Rommath",
    race_deDE = "Blutelf",
    race_enUS = "Blood Elf",
    displayID = 236583,
    zones_deDE = {"Immersangwald", "Orgrimmar", "Schattenhochland", "Silbermond"},
    zones_enUS = {"Eversong Woods", "Orgrimmar", "Twilight Highlands", "Silvermoon City"},
    ids = {
        236583, 249270, 240261, 260415, 237504, 246158, 236614, 240532, 241650
    },
    category = "CAT_QUELTHALAS",
    lore_deDE = "Als Großmagister von Quel'Thalas und Anführer der Magister ist Rommath der unangefochtene Meister der arkanen Künste in Silbermond. Er war einst ein loyaler Begleiter von Kael'thas Sonnenwanderer in der Scherbenwelt, kehrte jedoch in die Heimat zurück, um sein Volk vor dem magischen Verhungern zu retten. Er hegt einen tiefen, unversöhnlichen Hass auf die Kirin Tor, die die Blutelfen einst zum Tode verurteilten. Pragmatisch, scharfzüngig und unerbittlich loyal gegenüber den Sin'dorei, entfesselt er in Midnight die volle Macht seiner Magister, um die Leereninvasion zurückzuschlagen. Dass er sich bis nach Orgrimmar und tief ins Schattenhochland begibt, zeigt, dass er bereit ist, auch das gefährlichste arkane oder schattenhafte Wissen zu nutzen, um seine Heimat zu retten.",
    lore_enUS = "As the Grand Magister of Quel'Thalas and leader of the Magisters, Rommath is the undisputed master of the arcane arts in Silvermoon. He was once a loyal companion of Kael'thas Sunstrider in Outland, but returned home to save his people from magical starvation. He harbors a deep, unforgiving hatred for the Kirin Tor, who once sentenced the blood elves to death. Pragmatic, sharp-tongued, and fiercely loyal to the Sin'dorei, he unleashes the full might of his Magisters in Midnight to repel the Void invasion. His presence in Orgrimmar and deep within the Twilight Highlands shows he is willing to harness even the most dangerous arcane or shadow knowledge to save his homeland.",
    timeline = {
        {era = "Warcraft 3", text_deDE = "Entkam mit Kael'thas aus den Kerkern von Dalaran und folgte ihm in die zersplitterte Scherbenwelt.", text_enUS = "Escaped the dungeons of Dalaran with Kael'thas and followed him to the shattered world of Outland.", source = "warcraft.wiki.gg/wiki/Grand_Magister_Rommath"},
        {era = "TBC",      text_deDE = "Kehrte nach Quel'Thalas zurück, half beim Wiederaufbau von Silbermond und lehrte die Blutelfen, Magie zu entziehen.", text_enUS = "Returned to Quel'Thalas, helped rebuild Silvermoon, and taught the blood elves how to siphon magic.", source = "warcraft.wiki.gg/wiki/Grand_Magister_Rommath"},
        {era = "MoP",      text_deDE = "Rettete Aethas Sonnenhäscher und weitere Blutelfen bei Jaina Prachtmeers blutiger Säuberung von Dalaran.", text_enUS = "Rescued Aethas Sunreaver and other blood elves during Jaina Proudmoore's bloody Purge of Dalaran.", source = "warcraft.wiki.gg/wiki/Grand_Magister_Rommath"},
        {era = "Legion",   text_deDE = "Verteidigte Quel'Thalas gegen die Brennende Legion und unterstützte widerwillig die Tirisgarde.", text_enUS = "Defended Quel'Thalas against the Burning Legion and reluctantly supported the Tirisgarde.", source = "warcraft.wiki.gg/wiki/Grand_Magister_Rommath"},
        {era = "BfA",      text_deDE = "Spielte eine Schlüsselrolle bei der Rekrutierung der Nachtgeborenen als neue Verbündete der Horde.", text_enUS = "Played a key role in recruiting the Nightborne as new allies of the Horde.", source = "warcraft.wiki.gg/wiki/Grand_Magister_Rommath"},
        {era = "Midnight", text_deDE = "Koordiniert die arkane Verteidigung im Immersangwald und sucht im Schattenhochland nach kriegsentscheidenden Ressourcen.", text_enUS = "Coordinates the arcane defense in Eversong Woods and seeks war-winning resources in the Twilight Highlands.", source = "warcraft.wiki.gg/wiki/Grand_Magister_Rommath"},
    },
}

IMAGOdb.npcs["halduron_brightwing"] = {
    displayName_deDE = "Halduron Wolkenglanz",
    displayName_enUS = "Halduron Brightwing",
    race_deDE = "Blutelf",
    race_enUS = "Blood Elf",
    displayID = 253954,
    zones_deDE = {"Die Höhle", "Harandar", "Immersangwald", "Silbermond"},
    zones_enUS = {"The Den", "Harandar", "Eversong Woods", "Silvermoon City"},
    ids = {
        253954, 240630, 237345, 237787, 244074, 237343, 237347, 
        237858, 237341, 241794, 240715, 237489, 237465, 241130, 250363, 
        256210, 241176, 251587, 260416
    },
    category = "CAT_QUELTHALAS",
    lore_deDE = 
    [[Halduron Wolkenglanz ist der amtierende Waldläufergeneral von Silbermond, der beste Freund von Lor'themar Theron und Schützer der Grenzen seiner Heimat. Er dient seinem Volk seit Jahrzehnten und stellt sich jeder Bedrohung mit unerschütterlichem Mut entgegen – von einfallenden Amani-Trollen bis hin zu den grauenvollen Untoten der Geißel.
    
Trotz seines tödlichen Eifers, den er seinen Feinden auf dem Schlachtfeld entgegenbringt, ist Halduron bei seinen Freunden als toleranter und lebensfroher Mann mit einem guten Auge für Details bekannt.]],
    lore_enUS = 
    [[The current Ranger-General of Silvermoon and best friend of Lor'themar Theron, Halduron Brightwing keeps the borders of his homeland safe. He has served his people for decades, standing against every threat thrown at him with unwavering courage – from Amani troll invaders to the horrifying undead of the Scourge.
    
Despite the deadly fervor he shows his enemies on the field of battle, Halduron is known to his friends as a tolerant and bright-spirited man with a good eye for detail.]],
    timeline = {
        {
            era = "WC2",
            text_deDE = "Kämpfte gegen die Amani-Trolle und schaffte es, ihren Anführer Zul'jin gefangen zu nehmen.",
            text_enUS = "Fought against the Amani trolls, and managed to capture their leader, Zul'jin.",
            source = "Cadash"
        },
        {
            era = "WC3",
            text_deDE = "Überlebte den Angriff der Geißel und wurde nach Sylvanas' Tod zum Waldläufergeneral ernannt. Begann damit, die verbliebenen Streitkräfte der Geißel aus der zerstörten Stadt Silbermond zu vertreiben.",
            text_enUS = "Survived the Scourge attack and was named Ranger-general after Sylvanas' death. Began to drive out the remaining Scourge forces from the ruined Silvermoon City.",
            source = "Cadash"
        },
        {
            era = "TBC",
            text_deDE = "Stellte sich entschieden gegen die Gründung der Blutritter. Verhandelte als Gesandter in Orgrimmar erfolgreich die Aufnahme der Blutelfen in die Horde.",
            text_enUS = "Strongly opposed the creation of the Blood Knights. Successfully negotiated the admittance of the Blood Elves into the Horde as an envoy in Orgrimmar.",
            source = "Cadash"
        },
        {
            era = "WotLK",
            text_deDE = "Beaufsichtigte den Aufbau der Verteidigungsanlagen für den erneuerten Sonnenbrunnen.",
            text_enUS = "Oversaw the construction of defenses for the renewed Sunwell.",
            source = "Cadash"
        },
        {
            era = "Cata",
            text_deDE = "Merzte eine sich neu formierende Streitmacht der Amani aus und ging dabei ein kurzes Bündnis mit Vereesa Windläufer ein.",
            text_enUS = "Rooted out a reforming Amani force, forming a brief alliance with Vereesa Windrunner in the process.",
            source = "Cadash"
        },
        {
            era = "MoP",
            text_deDE = "Bekämpfte die wachsende Bedrohung durch die Zandalari auf der Insel des Donners.",
            text_enUS = "Fought the rising Zandalari threat on the Isle of Thunder.",
            source = "Cadash"
        },
        {
            era = "Legion",
            text_deDE = "Schloss sich dem Verborgenen Pfad an und half dabei, Hakkar den Hundemeister zu besiegen.",
            text_enUS = "Joined the Unseen Path and helped to defeat Hakkar the Houndmaster.",
            source = "Cadash"
        },
        {
            era = "Pre-DF",
            text_deDE = "Nahm als Trauzeuge an der Hochzeit von Lor'themar und Thalyssra teil.",
            text_enUS = "Attended Lor'themar and Thalyssra's wedding as groomsman.",
            source = "Cadash"
        },
        {
            era = "Midnight",
            text_deDE = "Halduron war der Erste, der die Bedrohung durch die Lichtblüte bemerkte und sich mit Orweyna auf die Reise nach Harandar begab. Durch ein vorläufiges Bündnis mit den Haranir gelang es Halduron, die Lichtblüte in Schach zu halten und die Verteidigung von Silbermond zu stärken.",
            text_enUS = "Halduron was the first to notice the threat of the Lightbloom and ventured into Harandar with Orweyna. Securing a tentative alliance with the Haranir, Halduron managed to keep the Lightbloom in check and strengthened Silvermoon's defenses.",
            source = "Cadash"
        },
    },
}

IMAGOdb.npcs["mehlar_daemmerklinge"] = {
    displayName_deDE = "Mehlar Dämmerklinge",
    displayName_enUS = "Mehlar Dawnblade",
    race_deDE = "Blutelf",
    race_enUS = "Blood Elf",
    displayID = 248321,
    zones_deDE = {"Insel von Quel'Danas", "Parhelionplaza"},
    zones_enUS = {"Isle of Quel'Danas", "Parhelion Plaza"},
    ids = {
        239858, 240769, 242611, 248321
    },
    category = "CAT_LIGHT",
    lore_deDE = "Einst ein hoffnungsvoller Paladin-Schüler von Uther dem Lichtbringer, verfiel Mehlar Dämmerklinge nach dem Fall von Quel'Thalas in tiefe Verbitterung. Er gab Uther die Schuld am Untergang seiner Heimat und ließ in seinem rasenden Zorn sogar das Grab seines alten Meisters schänden. Durch die Läuterung der Blutritter fand er jedoch schließlich zur Rechtschaffenheit zurück, schloss sich der Silbernen Hand an und kämpft in Midnight als treuer Streiter des Lichts.",
    lore_enUS = "Once a hopeful paladin student of Uther the Lightbringer, Mehlar Dawnblade fell into deep bitterness after the fall of Quel'Thalas. He blamed Uther for the destruction of his homeland and in his wrath even had his old master's tomb defiled. However, through the redemption of the Blood Knights, he eventually returned to righteousness, joined the Silver Hand, and fights in Midnight as a faithful champion of the Light.",
    timeline = {
        {era = "Pre-Classic", text_deDE = "Studierte als junger Elf unter Uther dem Lichtbringer, fühlte sich beim Fall von Quel'Thalas jedoch von ihm im Stich gelassen.", text_enUS = "Studied as a young elf under Uther the Lightbringer, but felt abandoned by him during the fall of Quel'Thalas.", source = "warcraft.wiki.gg/wiki/Mehlar_Dawnblade"},
        {era = "Classic",     text_deDE = "Entsandte Abenteurer vom Bollwerk aus, um das Grabmal seines ehemaligen Mentors Uther zu schänden.", text_enUS = "Sent adventurers from the Bulwark to defile the tomb of his former mentor, Uther.", source = "warcraft.wiki.gg/wiki/Mehlar_Dawnblade"},
        {era = "Legion",      text_deDE = "Schloss sich dem neugegründeten Orden der Silbernen Hand im Sanktum des Lichts an.", text_enUS = "Joined the newly reformed Order of the Silver Hand in the Sanctum of Light.", source = "warcraft.wiki.gg/wiki/Mehlar_Dawnblade"},
        {era = "Midnight",    text_deDE = "Verteidigt die Parhelionplaza und die Insel von Quel'Danas als erfahrener Blutritter gegen die Leere.", text_enUS = "Defends Parhelion Plaza and the Isle of Quel'Danas as a veteran Blood Knight against the Void.", source = "warcraft.wiki.gg/wiki/Mehlar_Dawnblade"},
    },
}

IMAGOdb.npcs["danath_trollbann"] = {
    displayName_deDE = "Danath Trollbann",
    displayName_enUS = "Danath Trollbane",
    race_deDE = "Mensch",
    race_enUS = "Human",
    displayID = 250415,
    zones_deDE = {"Arcantina", "Brennende Steppe", "Silbermond"},
    zones_enUS = {"Arcantina", "Burning Steppes", "Silvermoon City"},
    ids = {
        250415, 242120, 253124, 258967, 242583
    },
    category = "CAT_LIGHT",
    lore_deDE =
[[Der rechtmäßige Herrscher des Königreichs Stromgarde und langjähriger Held der Allianz. Danath Trollbann hat seit den Tagen des Zweiten Krieges für die Menschheit gekämpft und geblutet. Als Mitglied der Söhne Lothars knüpfte Danath während ihrer Zeit jenseits des Dunklen Portals enge Bande zu seinen Gefährten. Nachdem er nach Azeroth zurückgekehrt war, um den Mantel des Königs von Stromgarde anzunehmen, sucht Danath danach, sein Volk zu alter Größe zurückzuführen.]],
    lore_enUS =
[[The rightful ruler of the kingdom of Stromgarde and longtime hero of the Alliance. Danath Trollbane has fought and bled for humankind since the days of the Second War. A member of the Sons of Lothar, Danath built close ties with his compatriots in their time beyond the Dark Portal. Having returned to Azeroth to take up the mantle of King of Stromgarde, Danath seeks to lead his people back to their former glory.]],
    timeline = {
        {era = "Warcraft II", text_deDE = "Diente unter General Turalyon als Kommandant und Stratege der Allianz von Lordaeron, schlug die orkische Horde zurück, die die Östlichen Königreiche bedrohte, und verfolgte sie jenseits des Dunklen Portals bis in ihre Heimatwelt Draenor.", text_enUS = "Served under General Turalyon as a commander and tactician of the Alliance of Lordaeron, repelling the orcish Horde that threatened the Eastern Kingdoms and pursuing them beyond the Dark Portal to their homeworld of Draenor."},
        {era = "TBC",         text_deDE = "Führte die Streitkräfte der Ehrenfeste an und hielt die dämonischen Armeen der Höllenfeuerhalbinsel in Schach.", text_enUS = "Led the forces of Honor Hold in staving off the demonic armies of Hellfire Peninsula. (See rewrite below, hit character limit)"},
        {era = "Legion",      text_deDE = "Unterstützte heldenhafte Krieger beim Erwerb von Strom'kar, dem Kriegsbrecher. Dieses legendäre Schwert gehörte einst König Thoradin, dem ersten Menschenkönig und einem Vorfahren Danath Trollbanns. Nach dem Fall der Legion kehrte Danath in das lange zerstörte Stromgarde zurück, um die Stadt wiederaufzubauen und sein Geburtsrecht als König einzufordern.", text_enUS = "Aided heroic warriors in acquiring Strom’kar, the Warbreaker. This legendary sword once belonged to King Thoradin, the first human king and ancestor of Danath Trollbane himself. After the fall of the Legion, Danath returned to a long-ruined Stromgarde to rebuild the city and claim his birthright as king."},
        {era = "BfA",         text_deDE = "Kämpfte in der Schlacht um Stromgarde und führte seine Streitkräfte bei der Verteidigung ihrer Stadt. Der Kampf um das Arathihochland tobte zwischen Horde und Allianz und säte Chaos über die ehemals friedlichen Farmlande.", text_enUS = "Fought in the Battle of Stromgarde, leading his forces in the defense of their city. The struggle for the Arathi Highlands raged between the Horde and Alliance, sowing chaos across the formerly tranquil farmland."},
        {era = "TWW",         text_deDE = "Schloss sich den nach Khaz Algar entsandten Allianzstreitkräften an, um die Vorbotin Xal'atath und ihre Neruber zu bekämpfen. Schlug eine Rebellion nieder, die von der menschlichen Suprematistin Marran Trollbann angeführt wurde, Nichte Danaths und Regentin von Stromgarde in seiner Abwesenheit.", text_enUS = "Joined the Alliance forces dispatched to Khaz Algar to combat the Harbinger, Xal’atath, and her nerubian forces. Routed a rebellion led by human supremacist Marran Trollbane, niece of Danath and regent of Stromgarde in his absence."},
        {era = "Midnight",    text_deDE = "Half Arator, die Geschichte seines Vaters Turalyon und dessen Anteil an den Ereignissen des Zweiten Krieges zu verstehen. Führte Helden in die Arcantina ein – ein Zuhause fern der Heimat für Abenteurer aus ganz Azeroth.", text_enUS = "Helped Arator learn the history of his father, Turalyon, and his part in the events of the Second War. Introduced heroes to the Arcantina, a home away from home for adventurers from all over Azeroth."},
    },
}

IMAGOdb.npcs["allari_die_seelenfresserin"] = {
    displayName_deDE = "Allari die Seelenfresserin",
    displayName_enUS = "Allari the Souleater",
    race_deDE = "Blutelf",
    race_enUS = "Blood Elf",
    displayID = 256285, -- Strikt die erste ID der neuen Liste
    zones_deDE = {"Der Telogrusriss", "Eredath", "K'aresh", "Leerensturm"},
    zones_enUS = {"Telogrus Rift", "Eredath", "K'aresh", "Voidstorm"},
    ids = {
        256285, 252109, 252617, 252623, 252628, 253430, 253581, 254315, 254748
    },
    category = "CAT_NEUTRAL",
    lore_deDE = "Als rücksichtslose Dämonenjägerin der Illidari ist Allari eine Meisterin der feindlichen Verhöre. Bewaffnet mit der Sichel der Seelen, nutzt sie ihre teufelserfüllten Kräfte, um die Gedanken ihrer Feinde freizulegen und ihre Essenzen zu ernten. In Midnight weitet sie ihre gnadenlosen Jagdmethoden auf eine kosmische Ebene aus und verfolgt die Mächte der Leere bis in den Telogrusriss und auf die zerrüttete Welt K'aresh.",
    lore_enUS = "As a ruthless Demon Hunter of the Illidari, Allari is a master of enemy interrogations. Armed with the Scythe of Souls, she uses her fel-infused powers to lay bare the minds of her enemies and harvest their essences. In Midnight, she expands her merciless hunting methods to a cosmic scale, pursuing the forces of the Void into the Telogrus Rift and onto the shattered world of K'aresh.",
    timeline = {
        {era = "TBC",      text_deDE = "Reiste zum Schwarzen Tempel in der Scherbenwelt und schwor Illidan Sturmgrimm die Treue.", text_enUS = "Traveled to the Black Temple in Outland and pledged her loyalty to Illidan Stormrage.", source = "warcraft.wiki.gg/wiki/Allari_the_Souleater"},
        {era = "Legion",   text_deDE = "Kämpfte auf Mardum und an der Verheerten Küste und nutzte ihre Sichel, um Dämonen in der Teufelshammer zu verhören.", text_enUS = "Fought on Mardum and the Broken Shore, using her scythe to interrogate demons in the Fel Hammer.", source = "warcraft.wiki.gg/wiki/Allari_the_Souleater"},
        {era = "BfA",      text_deDE = "Beteiligte sich am Vierten Krieg und sicherte Stellungen im Arathihochland und an der Dunkelküste.", text_enUS = "Participated in the Fourth War, securing positions in the Arathi Highlands and Darkshore.", source = "warcraft.wiki.gg/wiki/Allari_the_Souleater"},
        {era = "Midnight", text_deDE = "Führt unabhängige, fraktionsübergreifende Vorstöße in kosmischen Leeren-Zonen wie K'aresh und Eredath an.", text_enUS = "Leads independent, cross-faction incursions into cosmic Void zones like K'aresh and Eredath.", source = "warcraft.wiki.gg/wiki/Allari_the_Souleater"},
    },
}

IMAGOdb.npcs["decimus"] = {
    displayName_deDE = "Decimus",
    displayName_enUS = "Decimus",
    race_deDE = "Domanaar",
    race_enUS = "Domanaar",
    displayID = 243907, -- Strikt die erste ID der neuen Liste
    zones_deDE = {"Leerensturm"},
    zones_enUS = {"Voidstorm"},
    ids = {
        243907, 235697, 252853, 245060, 244948, 240691, 244929, 235633, 235650, 235607,
        235652, 251892, 252868, 235392, 248583, 256198, 235600, 239603, 235718, 249088,
        235651, 243276, 235566, 257848, 244098, 241034, 254895, 235778, 248499, 240674,
        248585, 256033, 240233, 240379, 240395, 243857, 248429, 240690, 243708, 235653,
        235632
    },
    category = "CAT_NEUTRAL",
    lore_deDE = "Decimus ist ein sarkastischer und pragmatischer Domanaar, der einst zu den mächtigsten von der Leere geprägten Anführern im Leerensturm gehörte. Anstatt sich jedoch blind Xal'atath zu unterwerfen, agiert er aus reinem Eigeninteresse und verbündet sich mit den Helden Azeroths. Mit seiner beißenden Ironie und seinem unschätzbaren Wissen über die Mächte des Kosmos leitet er den Aufbau der Voidforge — dem zentralen System der Erweiterung — und wird so zum wichtigsten unabhängigen Kontakt in Midnight.",
    lore_enUS = "Decimus is a sarcastic and pragmatic Domanaar who was once among the most powerful Void-aligned leaders in the Voidstorm. Rather than blindly submitting to Xal'atath, he operates out of pure self-interest and allies with the heroes of Azeroth. With his biting irony and invaluable knowledge of cosmic forces, he guides the construction of the Voidforge — the central progression system of the expansion — becoming the most crucial independent contact in Midnight.",
    timeline = {
        {era = "Midnight", text_deDE = "Tritt im Leerensturm als überraschender, unabhängiger Verbündeter auf, der den Bau der Voidforge leitet.", text_enUS = "Emerges in the Voidstorm as a surprising, independent ally who guides the construction of the Voidforge.", source = "warcraft.wiki.gg/wiki/Decimus"},
    },
}

IMAGOdb.npcs["king_mrgl-mrgl"] = {
    displayName_deDE = "König Mrgl-Mrgl",
    displayName_enUS = "King Mrgl-Mrgl",
    race_deDE = "Murloc",
    race_enUS = "Murloc",
    displayID = 250196,
    zones_deDE = {"Zul'Aman"},
    zones_enUS = {"Zul'Aman"},
    ids = {
        250196
    },
    category = "CAT_NEUTRAL",
    lore_deDE = "Hinter der großartigen Murloc-Fassade von König Mrgl-Mrgl verbirgt sich ein einfacher Nachtelfenforscher. Ursprünglich Teil einer druidischen Forschungsgruppe, ist König Mrgl-Mrgl weit über seine bescheidenen Anfänge hinausgewachsen. Nachdem er sich als Murloc verkleidet hatte, um ihre Populationen in Nordend zu beobachten, wurde Mrgl-Mrgl von den Kreaturen verehrt und zu ihrem König erwählt. Obwohl er anfangs zögerte, nahm er die Rolle an und blickte nie zurück. Seitdem wird König Mrgl-Mrgl dabei gesehen, wie er den Murlocs Azeroths hilft und sie vor äußeren Bedrohungen schützt.",
    lore_enUS = "Behind King Mrgl-Mrgl’s grand murloc facade lies a simple night elf researcher. Originally a part of a druidic research group, King Mrgl-Mrgl has grown far beyond his humble beginnings. After disguising himself as a murloc to observe their populations in Northrend, Mrgl-Mrgl was revered by the creatures and chosen as their king. Though originally reluctant, he accepted the role and never looked back. Ever since, King Mrgl-Mrgl has been found aiding the murlocs of Azeroth and protecting them from outside threats.",
    timeline = {
        {
            era = "WotLK",
            text_deDE = "Schloss sich der Expeditionstruppe von D.E.H.T.A. in der Boreanischen Tundra an und begann mithilfe seiner unorthodoxen Verkleidung seine Forschungen über Murlocs. In einer Zeit der Not wählten die Murlocs ihn zu ihrem König; König Mrgl-Mrgl verteidigte den hilflosen Stamm und festigte seinen Platz als König.",
            text_enUS = "Joined the D.E.H.T.A. expedition group in the Borean Tundra and began his research into murlocs using his unorthodox disguise. The murlocs chose him to be their king in a time of strife; King Mrgl-Mrgl defended the helpless tribe and cemented his place as king.",
            source = "austin - IMAGO Community"
        },
        {
            era = "Legion",
            text_deDE = "An der Seite des jungen Murloc-Helden Murky versuchte König Mrgl-Mrgl, die Swamprock-Murlocs in Hochberg von ihren gewalttätigen Wegen abzubringen. Mit der Hilfe des Königs konnte Murky sich als friedlicherer Anführer seines neuen „Murkloc“-Stammes etablieren.",
            text_enUS = "Alongside the young murloc hero Murky, King Mrgl-Mrgl attempted to turn the Swamprock murlocs of Highmountain from their violent ways. With the king’s help, Murky was able to establish himself as the more peaceful leader of his new “Murkloc” tribe.",
            source = "austin - IMAGO Community"
        },
        {
            era = "BfA",
            text_deDE = "In Nazjatar ist König Mrgl-Mrgl als Betreiber von Mrgl’s Bar and Grill anzutreffen, einem Etablissement, das ausschließlich die Murlocs der Gegend bewirtet.",
            text_enUS = "King Mrgl-Mrgl can be found in Nazjatar as the proprietor of Mrgl’s Bar and Grill, an establishment catering exclusively to the murlocs of the area.",
            source = "austin - IMAGO Community"
        },
        {
            era = "Midnight",
            text_deDE = "Nachdem er die Murlocs von Zul'Aman gegen einen angreifenden Stamm von Tiefsee-Murlocs verteidigt hatte, wurde König Mrgl-Mrgl zum Loa der Murlocs erklärt. Seine Verehrer hielten ihn in ihrem sumpfgebundenen Tempel gefangen — als ihren Gott und Retter.",
            text_enUS = "After defending the murlocs of Zul’Aman from an attacking tribe of deep sea murlocs, King Mrgl-Mrgl was declared the Loa of Murlocs. His worshippers kept him trapped in their swamp-bound temple as their god and savior.",
            source = "austin - IMAGO Community"
        },
    },
}

IMAGOdb.npcs["darion_mograine"] = {
    displayName_deDE = "Hochlord Darion Mograine",
    displayName_enUS = "Highlord Darion Mograine",
    race_deDE = "Mensch",
    race_enUS = "Human",
    displayID = 244955,
    zones_deDE = {"Östliche Pestländer"},
    zones_enUS = {"Eastern Plaguelands"},
    ids = {
        244955
    },
    category = "CAT_EBON_BLADE",
    lore_deDE =
[[Darion Mograine war ein Paladin der Argentumdämmerung, der, nachdem er sein Leben geopfert hatte, um die Seele seines Vaters zu retten, als Todesritter wiedererweckt wurde, um als einer der mächtigsten Kommandanten des Lichkönigs zu dienen. Nachdem er sich in der Schlacht um die Kapelle des hoffnungsvollen Lichts aus der Kontrolle des Lichkönigs befreit hatte, gründete er die Schwarze Klinge, eine Gruppe von Todesrittern, die sich dem Schutz Azeroths vor allen Bedrohungen verschrieben hat, die ihm begegnen.

Nun, an der Spitze der Vier Reiter, verteidigt Darion die Heimat des Argentumkreuzzugs gegen die Geißel, während sie Azeroths Champion bei der Zerstörung der Verschlingenden Brut unterstützen.]],
    lore_enUS =
[[Darion Mograine was a paladin of the Argent Dawn who, after sacrificing his life to save the soul of his father, was resurrected as a Death Knight to serve as one of the Lich King’s most powerful commanders. Breaking free from the Lich King’s control at the Battle for Light’s Hope Chapel, he founded the Ebon Blade, a band of Death Knights committed to protecting Azeroth from any threats that come her way.

Now leading the Four Horsemen, Darion defends the home of the Argent Crusade from the Scourge whilst they assist Azeroth’s champion with the destruction of the Devouring Host.]],
    timeline = {
        {era = "Warcraft 3", text_deDE = "Schloss sich der Silbernen Hand an und half im Kampf gegen die Geißel.", text_enUS = "Joined the Silver Hand and assisted with fighting the Scourge.", source = "Nebb - IMAGO Community"},
        {era = "Classic", text_deDE = "Rief die Hilfe der Argentumdämmerung für einen Angriff auf Naxxramas an, eroberte den Aschenbringer von seinem untoten Vater zurück, nachdem er die Vier Reiter besiegt hatte. Opferte sich, um die Argentumdämmerung zu retten, und wurde als Todesritter wiedererweckt.", text_enUS = "Enlisted the aid of the Argent Dawn to attack Naxxramas, reclaiming the Ashbringer from his undead Father after defeating the Four Horsemen. Sacrificed himself to save the Argent Dawn, and was resurrected as a Death Knight.", source = "Nebb - IMAGO Community"},
        {era = "WotLK", text_deDE = "Wurde zum Anführer der Todesritter von Acherus ernannt. Befreite sich aus der Kontrolle des Lichkönigs und gründete die Schwarze Klinge. Unterstützte den Krieg gegen die Geißel in Eiskrone und Zul'Drak. Half dabei, den Lichkönig in der Eiskronenzitadelle zu besiegen. Erfuhr, dass Bolvar Fordragon zum neuen Lichkönig gekrönt wurde.", text_enUS = "Made the ruler of the Death Knights of Acherus. Broke free from the Lich King’s control and started the Ebon Blade. Assisted in the war against the scourge in Icecrown and Zul’Drak. Helped to defeat the Lich King at Icecrown Citadel. Found that Bolvar Fordragon has been crowned the new Lich King.", source = "Nebb - IMAGO Community"},
        {era = "WoD", text_deDE = "Reiste nach alternativem Draenor, um Ner'zhuls Geheimnisse zu entdecken — in dem Versuch, Bolvar zu retten.", text_enUS = "Journeyed to alternate Draenor to attempt to discover Ner’zhul’s secrets in an attempt to save Bolvar.", source = "Nebb - IMAGO Community"},
        {era = "Legion", text_deDE = "Half Bolvar und dem auserwählten Todesritter dabei, die neuen Vier Reiter zu erwecken. Wurde tödlich verwundet, als er versuchte, Tirion Fordring wiederzubeleben, wurde jedoch von Bolvar erhoben, um die Reiter anzuführen.", text_enUS = "Aided Bolvar and the chosen Death Knight in resurrecting the new Four Horsemen. Was fatally wounded when attempting to resurrect Tirion Fordring, but was raised by Bolvar to lead the horsemen.", source = "Nebb - IMAGO Community"},
        {era = "BfA", text_deDE = "Sammelte gefallene Champions der Horde und der Allianz, um sie als nächste Generation von Todesrittern zu erheben. Entsandte die neue Generation persönlich in die Hauptstädte ihrer Fraktionen.", text_enUS = "Gathered fallen champions of the Horde and Alliance to be raised as the next generation of Death Knights. Personally sent the new generation to their faction’s capitals.", source = "Nebb - IMAGO Community"},
        {era = "SL", text_deDE = "Trat als Anführer der Schwarzen Klinge zurück und übergab den Titel nach der Zerstörung des Helms der Herrschaft an Bolvar. Rief die Champions Azeroths zusammen, um sich mit Bolvar zu treffen und in den Schlund vorzudringen. Half beim Angriff auf das Sanktum der Herrschaft. Kehrte nach dem Sieg über den Kerkermeister nach Azeroth zurück, um die Geißel zurückzuhalten.", text_enUS = "Stepped down as leader of the Ebon Blade, relinquishing title to Bolvar following the destruction of the Helm of Domination. Summoned the champions of Azeroth to meet with Bolvar and adventure into the Maw. Helped attack the Sanctum of Domination. Returned to Azeroth following the Jailer’s defeat to hold back the Scourge.", source = "Nebb - IMAGO Community"},
        {era = "Midnight", text_deDE = "Verteidigte gemeinsam mit den übrigen Vier Reitern die Kapelle des hoffnungsvollen Lichts gegen die Geißel.", text_enUS = "Defended Light’s Hope Chapel from the Scourge along with the rest of the Four Horsemen.", source = "Nebb - IMAGO Community"},
    },
}

IMAGOdb.npcs["nexuskoenig_salhadaar"] = {
    displayName_deDE = "Nexuskönig Salhadaar",
    displayName_enUS = "Nexus-King Salhadaar",
    race_deDE = "Astraler",
    race_enUS = "Ethereal",
    displayID = 235475,
    zones_deDE = {"Leerensturm"},
    zones_enUS = {"Voidstorm"},
    ids = {
        235475
    },
    category = "CAT_VOID",
    lore_deDE = "Einst der machthungrige Anführer des Ätherneums im Nethersturm der Scherbenwelt. Salhadaar versuchte schon damals, sein Volk in reine Leerenenergie umzuwandeln, bevor er von Abenteurern besiegt wurde. In Midnight kehrt er als vollendete Entität der Leere zurück. Er befehligt nun Truppen im Leerensturm unter Xal'ataths Banner und ist der lebende Beweis dafür, was aus den Astralen wird, wenn sie sich der Dunkelheit völlig hingeben.",
    lore_enUS = "Once the power-hungry leader of the Ethereum in Outland's Netherstorm. Salhadaar attempted to transform his people into pure void energy before being defeated by adventurers. In Midnight, he returns as a fully realized entity of the Void. He now commands forces in the Voidstorm under Xal'atath's banner, serving as living proof of what becomes of the ethereals when they fully surrender to the darkness.",
    timeline = {
        {era = "TBC",      text_deDE = "Führte das Ätherneum im Nethersturm an und wurde getötet, als er versuchte, die Energien der Leere zu meistern.", text_enUS = "Led the Ethereum in Netherstorm and was killed while attempting to master the energies of the Void.", source = "warcraft.wiki.gg/wiki/Nexus-King_Salhadaar"},
        {era = "Midnight", text_deDE = "Kehrt als mächtige Leerenentität im Leerensturm zurück, um Xal'ataths Befehle auszuführen.", text_enUS = "Returns as a powerful Void entity in the Voidstorm to carry out Xal'atath's orders.", source = "warcraft.wiki.gg/wiki/Nexus-King_Salhadaar"},
    },
}

IMAGOdb.npcs["zaljarra"] = {
    displayName_deDE = "Zul'jarra",
    displayName_enUS = "Zul'jarra",
    race_deDE = "Waldtroll",
    race_enUS = "Forest Troll",
    displayID = 249653,
    zones_deDE = {"Atal'Aman", "Das Herz des Zorns", "Immersangwald", "Insel von Quel'Danas", "Nalorakks Bau", "Zul'Aman"},
    zones_enUS = {"Atal'Aman", "The Heart of Rage", "Eversong Woods", "Isle of Quel'Danas", "Den of Nalorakk", "Zul'Aman"},
    ids = {
        249653, 240215, 240186, 259222, 244438, 240216, 236126, 245270, 236601, 236559,
        235992, 236155, 236162, 244991, 240037, 245673, 244588, 236151, 245273, 244592,
        236140, 236587, 236141, 236541, 236659, 246409, 236171, 244422, 236147, 236602,
        235900, 258703, 236468, 255813, 236592, 240036, 241564, 244581, 259311, 241356,
        240033, 240032, 245642, 249434, 241162, 241306, 244925, 241350, 244523, 245645,
        259103, 236461, 253495, 252394, 236159, 240035, 249408, 245518, 245366, 245364,
        245246, 240034, 249492, 245468, 253528, 241281, 241347, 236157, 253980
    },
    category = "CAT_AMANI",
    lore_deDE = [[Als Älteste von zwei Geschwistern wurde Zul'jarra als Kriegerin erzogen. Als Enkelin des berüchtigten Zul'jin wurde sie in den traditionellen Bräuchen unterwiesen, die Loa zu verehren und ihren künftigen Stamm mit Ehre zu führen. Die Zeit zu führen kam früher, als irgendjemand erwartet hätte, denn sie war noch ein Kind, als sowohl ihr Großvater als auch ihr Vater in der Tempelstadt Zul-Aman erschlagen wurden. Da man sie für zu jung zum Herrschen hielt, regierte ihre Mutter, Zarama, die Amani jahrzehntelang. Als die verkrüppelte Zarama schließlich versuchte, den Titel an ihre Tochter zu übergeben, focht ein rivalisierender Häuptling Zul'jarras Recht zu herrschen an. Weil sie verspätet zum Duell zurückkehrte, traf Zul'jarra nur ein, um zu sehen, wie ihre Mutter an ihrer Stelle fiel, was sie zwang, Zarama zu rächen und ihr Geburtsrecht im Blut zu beanspruchen.

Nun, Jahre später, versucht sie, die Stämme von Zul'Aman endlich wieder mit den Loa-Göttern zu verbinden — unterstützt, wenn auch gelegentlich bekämpft, von ihrem Bruder, Zul'jan.]],
    lore_enUS = [[The eldest of two siblings, Zul'jarra was raised a warrior. The grand-daughter of the infamous Zul'jin, she was taught the traditional ways to revere the loa and to lead her future clan with honor. The time to lead came sooner than anyone would have expected, for she was merely a child when both her grandfather and her father were slain in the temple city of Zul-Aman. Deemed too young to rule, this left her mother, Zarama, to rule the Amani for decades. When a crippled Zarama eventually tried to pass the title to her daughter, a rival chieftain challenged Zul'jarra's right to rule. Delayed in her return to the duel, Zul'jarra arrived only to watch her mother fall in her place, forcing her to avenge Zarama and claim her birthright in blood.

Now years later, she attempts to finally reconnect the tribes of Zul'Aman to the loa gods, supported, though occasionally opposed, by her brother, Zul'jan.]],
    timeline = {
        {
            era = "TBC",
            text_deDE = "Verlor ihren Vater Man'ye und ihren Großvater Zul'jin, als sie noch ein kleines Kind war. Später wurde ihre Mutter in einem rituellen Kampf getötet. Nachdem sie sie gerächt hatte, nahm Zul'jarra ihren rechtmäßigen Platz als neue Anführerin ein.",
            text_enUS = "Lost her father Man'ye and grandfather Zul'jin when she was just a young child. Later, her mother was killed in ritual combat. After avenging her, Zul'jarra took her rightful place as the new leader.",
            source = "Cadash - IMAGO Community"
        },
        {
            era = "Midnight",
            text_deDE = "Entschied sich, sich Lady Liadrin anzuschließen und ihre Hilfe anzunehmen, um hash'ey zu werden. Zul'jarra vereinte die Stämme von Zul'Aman und gewann das Vertrauen der Loa zurück. Danach führte sie die Schlacht gegen die Klinge der Dämmerung an und verteidigte ihr Volk erfolgreich gegen die Leere.",
            text_enUS = "Chose to ally with Lady Liadrin and accept her help in becoming hash'ey. Zul'jarra united the tribes of Zul'Aman and regained the trust of the loa. Afterwards she led the battle against the Twilight's Blade, successfully defending her people from the Void.",
            source = "Cadash - IMAGO Community"
        },
    },
}

IMAGOdb.npcs["nalorakk"] = {
    displayName_deDE = "Nalorakk",
    displayName_enUS = "Nalorakk",
    race_deDE = "Waldtroll",
    race_enUS = "Forest Troll",
    displayID = 258877,
    zones_deDE = {"Das Herz des Zorns", "Nalorakks Bau", "Zul'Aman"},
    zones_enUS = {"Heart of Rage", "Nalorakk's Den", "Zul'Aman"},
    ids = {
        258877, 261002, 241287, 249407, 246404, 244895, 235911, 249376, 
        235949, 248916, 256024
    },
    category = "CAT_AMANI",
    lore_deDE = "Als stolzer Waldtroll wurde Nalorakk einst von Hexlord Malacrass durch dunkle Magie mit der Essenz des Bärengottes Rhunok erfüllt. Er diente als brutaler Wächter und erster Loa-Avatar im klassischen Zul'Aman, bevor er von Plünderern bezwungen wurde. In Midnight manifestiert sich der gewaltige Bären-Avatar aus ungeklärten Gründen erneut. Mit schierer physischer Gewalt und animalischer Wut schließt er sich den Amani an, um das Herz des Zorns gegen die Leere zu verteidigen.",
    lore_enUS = "Once a proud forest troll, Nalorakk was infused with the essence of the bear god Rhunok through the dark magic of Hex Lord Malacrass. He served as the brutal guardian and first loa avatar in classic Zul'Aman before being struck down by adventurers. In Midnight, the massive bear avatar mysteriously manifests once again. With sheer physical force and animalistic fury, he joins the Amani to defend the Heart of Rage against the Void.",
    timeline = {
        {era = "TBC",      text_deDE = "Wurde durch Malacrass zum Avatar des Bärengottes Rhunok und bewachte als erster Boss den Eingang von Zul'Aman.", text_enUS = "Became the avatar of the bear god Rhunok through Malacrass and guarded the entrance of Zul'Aman as its first boss.", source = "warcraft.wiki.gg/wiki/Nalorakk"},
        {era = "Midnight", text_deDE = "Kehrt in Nalorakks Bau zurück und entfesselt die Kraft des Bären gegen die einfallenden Truppen von Xal'atath.", text_enUS = "Returns to Nalorakk's Den, unleashing the power of the bear against Xal'atath's invading forces.", source = "warcraft.wiki.gg/wiki/Nalorakk"},
    },
}

IMAGOdb.npcs["akilzon"] = {
    displayName_deDE = "Akil'zon",
    displayName_enUS = "Akil'zon",
    race_deDE = "Waldtroll",
    race_enUS = "Forest Troll",
    displayID = 249404,
    zones_deDE = {"Zul'Aman"},
    zones_enUS = {"Zul'Aman"},
    ids = {
        249404, 241284, 235904, 254591, 240049, 258698, 235952, 259313, 
        252393, 245632, 236139, 260999
    },
    category = "CAT_AMANI",
    lore_deDE = "Akil'zon war einst ein mächtiger Krieger der Amani, bevor Hexlord Malacrass ihn mit dunkler Magie zum Avatar des Adlergottes Akil'darac machte. Im klassischen Zul'Aman herrschte er über die Stürme, bis Abenteurer seinem Treiben ein Ende setzten. In Midnight manifestiert sich der Adler-Avatar erneut in Zul'Aman. Bewaffnet mit der Macht der Blitze erhebt er sich in die Lüfte, um seine Heimat gegen die Eindringlinge der Leere zu verteidigen.",
    lore_enUS = "Akil'zon was once a mighty warrior of the Amani before Hex Lord Malacrass used dark magic to transform him into the avatar of the eagle god Akil'darac. In classic Zul'Aman, he commanded the storms until adventurers put an end to his reign. In Midnight, the eagle avatar manifests once again in Zul'Aman. Armed with the power of lightning, he takes to the skies to defend his homeland against the Void invaders.",
    timeline = {
        {era = "TBC",      text_deDE = "Wurde durch dunkle Rituale zum Adler-Avatar und herrschte über den Gipfel der Amani als zweiter Boss in Zul'Aman.", text_enUS = "Became the eagle avatar through dark rituals and ruled the peak of the Amani as the second boss in Zul'Aman.", source = "warcraft.wiki.gg/wiki/Akil'zon"},
        {era = "Midnight", text_deDE = "Kehrt nach Zul'Aman zurück, um die Mächte der Stürme gegen Xal'ataths Truppen zu entfesseln.", text_enUS = "Returns to Zul'Aman to unleash the power of the storms against Xal'atath's forces.", source = "warcraft.wiki.gg/wiki/Akil'zon"},
    },
}

IMAGOdb.npcs["janalai"] = {
    displayName_deDE = "Jan'alai",
    displayName_enUS = "Jan'alai",
    race_deDE = "Waldtroll",
    race_enUS = "Forest Troll",
    displayID = 241286,
    zones_deDE = {"Zul'Aman"},
    zones_enUS = {"Zul'Aman"},
    ids = {
        241286, 249406, 236164, 235908, 254046, 261001, 236170, 253005, 
        258695, 259002, 235950
    },
    category = "CAT_AMANI",
    lore_deDE = "Bevor Hexlord Malacrass ihn mit dunkler Magie zum Avatar des Drachenfalken-Gottes erhob, war Jan'alai ein begabter Troll der Amani. Im klassischen Zul'Aman nutzte er loderndes Feuer und beschwor unzählige Drachenfalken, um Eindringlinge in Asche zu verwandeln. In Midnight manifestiert sich der flammende Avatar auf wundersame Weise erneut in Zul'Aman. Mit reinigenden Flammen und unerbittlicher Hitze verteidigt er das Territorium seines Stammes gegen die kalten Schatten der Leere.",
    lore_enUS = "Before Hex Lord Malacrass used dark magic to elevate him to the avatar of the dragonhawk god, Jan'alai was a gifted troll of the Amani. In classic Zul'Aman, he wielded blazing fire and summoned countless dragonhawks to turn intruders to ash. In Midnight, the flaming avatar miraculously manifests once again in Zul'Aman. With cleansing flames and relentless heat, he defends his tribe's territory against the cold shadows of the Void.",
    timeline = {
        {era = "TBC",      text_deDE = "Wurde durch Malacrass zum Avatar des Drachenfalken und bewachte Zul'Aman mit Feuer und fliegenden Bestien.", text_enUS = "Became the avatar of the dragonhawk through Malacrass and guarded Zul'Aman with fire and flying beasts.", source = "warcraft.wiki.gg/wiki/Jan'alai"},
        {era = "Midnight", text_deDE = "Kehrt als brennender Beschützer nach Zul'Aman zurück, um die Leereninvasion mit Feuer zurückzuschlagen.", text_enUS = "Returns to Zul'Aman as a burning protector to repel the Void invasion with fire.", source = "warcraft.wiki.gg/wiki/Jan'alai"},
    },
}

IMAGOdb.npcs["halazzi"] = {
    displayName_deDE = "Halazzi",
    displayName_enUS = "Halazzi",
    race_deDE = "Waldtroll",
    race_enUS = "Forest Troll",
    displayID = 249405,
    zones_deDE = {"Zul'Aman"},
    zones_enUS = {"Zul'Aman"},
    ids = {
        249405, 236152, 253320, 253014, 241285, 241352, 258696, 253534, 
        235907, 247267, 261000, 235951
    },
    category = "CAT_AMANI",
    lore_deDE = "Halazzi war ein stolzer Waldtroll, bevor er durch Hexlord Malacrass' dunkle Rituale zum Avatar des Luchsgottes Shirvallah erhoben wurde. Im klassischen Zul'Aman verkörperte er die wilde, unbarmherzige Jagd und war für seine blitzschnellen, tödlichen Angriffe aus dem Hinterhalt bekannt. In Midnight schließt sich der Kreis: Der Luchs-Avatar manifestiert sich erneut in den uralten Ruinen von Zul'Aman. Wild und geduldig wie eh und je lauert er in den Schatten, bereit, die Truppen der Leere in Stücke zu reißen.",
    lore_enUS = "Halazzi was a proud forest troll before Hex Lord Malacrass's dark rituals elevated him to the avatar of the lynx god Shirvallah. In classic Zul'Aman, he embodied the wild, relentless hunt and was known for his lightning-fast, deadly ambush strikes. In Midnight, the circle is completed: the lynx avatar manifests once again in the ancient ruins of Zul'Aman. Fierce and patient as ever, he lurks in the shadows, ready to tear the forces of the Void to pieces.",
    timeline = {
        {era = "TBC",      text_deDE = "Wurde durch Malacrass zum Luchs-Avatar von Shirvallah und lauerte als brutaler Boss in Zul'Aman auf Eindringlinge.", text_enUS = "Became the lynx avatar of Shirvallah through Malacrass and lurked as a brutal boss in Zul'Aman, waiting for intruders.", source = "warcraft.wiki.gg/wiki/Halazzi"},
        {era = "Midnight", text_deDE = "Manifestiert sich erneut in Zul'Aman, um mit der List und Wildheit des Luchses gegen die Diener der Leere zu jagen.", text_enUS = "Manifests again in Zul'Aman to hunt the servants of the Void with the cunning and ferocity of the lynx.", source = "warcraft.wiki.gg/wiki/Halazzi"},
    },
}

IMAGOdb.npcs["zuljan"] = {
    displayName_deDE = "Zul'jan",
    displayName_enUS = "Zul'jan",
    race_deDE = "Waldtroll",
    race_enUS = "Forest Troll",
    displayID = 236594,
    zones_deDE = {"Atal'Aman", "Immersangwald", "Zul'Aman"},
    zones_enUS = {"Atal'Aman", "Eversong Woods", "Zul'Aman"},
    ids = {
        236594, 245646, 240044, 253981, 240187, 240043, 258731, 240046, 
        249211, 236135, 236460, 236588, 236540, 236558, 236522, 236484
    },
    category = "CAT_AMANI",
    lore_deDE = "Als einer der bedeutendsten Anführer der Amani in Midnight steht Zul'jan fest an der Seite von Zul'jarra. Er verkörpert die tiefe schamanistische Tradition des Stammes und hält die lebenswichtige Verbindung zu den Loa-Mächten aufrecht. Seine ständige Präsenz an den hitzigsten Fronten in Zul'Aman und dem Immersangwald zeigt, dass er eine absolute Schlüsselrolle bei der Koordination der Truppen und der spirituellen Verteidigung gegen die Leere spielt.",
    lore_enUS = "As one of the most prominent Amani leaders in Midnight, Zul'jan stands firmly alongside Zul'jarra. He embodies the deep shamanic tradition of the tribe and maintains the vital connection to the loa powers. His constant presence on the most heated fronts in Zul'Aman and Eversong Woods shows that he plays an absolute key role in coordinating the troops and the spiritual defense against the Void.",
    timeline = {
        {era = "Midnight", text_deDE = "Tritt als hochrangiger Amani-Anführer in Erscheinung und unterstützt Zul'jarra bei der Verteidigung und Koordination des Stammes.", text_enUS = "Emerges as a high-ranking Amani leader, supporting Zul'jarra in the defense and coordination of the tribe.", source = "warcraft.wiki.gg/wiki/Zul'jan"},
    },
}

IMAGOdb.npcs["anduin_wrynn"] = {
    displayName_deDE = "Anduin Wrynn",
    displayName_enUS = "Anduin Wrynn",
    race_deDE = "Mensch",
    race_enUS = "Human",
    displayID = 251868,
    zones_deDE = {"Insel von Quel'Danas", "Parhelionplaza", "Silbermond"},
    zones_enUS = {"Isle of Quel'Danas", "Parhelion Plaza", "Silvermoon City"},
    ids = {
        251868, 244867, 249289, 243992, 248417, 246675, 250261, 253143, 
        239473, 246159, 242395, 251946, 249444
    },
    category = "CAT_LIGHT",
    lore_deDE = "Einst der idealistische König von Sturmwind und Hochkönig der Allianz. Anduin wurde während der Ereignisse in den Schattenlanden vom Kerkermeister dominiert und gezwungen, unaussprechliche Taten zu begehen. Von Schuldgefühlen zerfressen und scheinbar vom Licht verlassen, legte er die Krone ab und wanderte als gebrochener Mann durch Khaz Algar (The War Within). In Midnight schließt sich der Kreis: Er findet seinen Glauben an das Licht wieder und kämpft nicht länger als König, sondern als purer Streiter der Rechtschaffenheit bei der Verteidigung von Silbermond und dem Sonnenbrunnen.",
    lore_enUS = "Once the idealistic King of Stormwind and High King of the Alliance. During the events in the Shadowlands, Anduin was dominated by the Jailer and forced to commit unspeakable acts. Consumed by guilt and seemingly abandoned by the Light, he laid down his crown and wandered as a broken man through Khaz Algar (The War Within). In Midnight, the circle is completed: he rediscovers his faith in the Light and fights no longer as a king, but as a pure champion of righteousness defending Silvermoon and the Sunwell.",
    timeline = {
        {era = "Legion",   text_deDE = "Übernahm nach dem tragischen Tod seines Vaters Varian den Thron von Sturmwind.", text_enUS = "Took the throne of Stormwind following the tragic death of his father, Varian.", source = "warcraft.wiki.gg/wiki/Anduin_Wrynn"},
        {era = "BfA",      text_deDE = "Führte die Allianz im Vierten Krieg an und strebte trotz Sylvanas' Gräueltaten stets nach Frieden.", text_enUS = "Led the Alliance in the Fourth War, constantly striving for peace despite Sylvanas's atrocities.", source = "warcraft.wiki.gg/wiki/Anduin_Wrynn"},
        {era = "SL",       text_deDE = "Wurde vom Kerkermeister Zovaal dominiert und als Waffe gegen seine eigenen Verbündeten eingesetzt.", text_enUS = "Was dominated by the Jailer Zovaal and used as a weapon against his own allies.", source = "warcraft.wiki.gg/wiki/Anduin_Wrynn"},
        {era = "TWW",      text_deDE = "Verweigerte die Rückkehr auf den Thron und suchte in Khaz Algar nach innerem Frieden und seinem verlorenen Glauben.", text_enUS = "Refused to return to the throne, searching Khaz Algar for inner peace and his lost faith.", source = "warcraft.wiki.gg/wiki/Anduin_Wrynn"},
        {era = "Midnight", text_deDE = "Kehrt endgültig in den Schoß des Lichts zurück, um Seite an Seite mit den Elfen gegen die Leere zu streiten.", text_enUS = "Finally returns to the embrace of the Light to fight side by side with the elves against the Void.", source = "warcraft.wiki.gg/wiki/Anduin_Wrynn"},
    },
}

IMAGOdb.npcs["alleria_windrunner"] = {
    displayName_deDE = "Alleria Windläufer",
    displayName_enUS = "Alleria Windrunner",
    race_deDE = "Leerenelfe",
    race_enUS = "Void Elf",
    displayID = 238386,
    zones_deDE = {"Die Leerenspitze", "Leerensturm"},
    zones_enUS = {"The Void Spire", "Voidstorm"},
    ids = {
        238386, 239826, 235502, 235765, 235763, 236945, 235532, 235389, 235662, 
        238296, 235726, 235471, 235715, 239574, 240232, 240378, 235521, 235717, 
        240455, 239978, 235609, 235660, 235544, 235664, 240393, 235601, 244300, 244761
    },
    category = "CAT_QUELTHALAS",
    lore_deDE = "Die älteste der Windläufer-Schwestern und eine Legende unter den Elfen. Nach Jahrtausenden der Abwesenheit und dem endlosen Krieg im Wirbelnden Nether absorbierte Alleria die Essenz eines dunklen Naaru und wurde zur ersten Leerenelfe. Sie trägt die ständige Versuchung und das Flüstern der Schatten in sich. In Midnight kehrt sie in ihre Heimat zurück, um die zersplitterten Elfen in der Verteidigung von Quel'Thalas zu vereinen und sich ihrer persönlichen Nemesis, Xal'atath, an der Front entgegenzustellen.",
    lore_enUS = "The eldest of the Windrunner sisters and a legend among elves. After millennia of absence and endless war in the Twisting Nether, Alleria absorbed the essence of a dark naaru, becoming the first Void Elf. She carries the constant temptation and whispers of the shadows within her. In Midnight, she returns to her homeland to unite the splintered elves in the defense of Quel'Thalas and personally confront her nemesis, Xal'atath, on the frontlines.",
    timeline = {
        {era = "WC2",      text_deDE = "Führte die elfischen Waldläufer im Zweiten Krieg an und reiste mit der Allianz-Expedition durch das Dunkle Portal.", text_enUS = "Led the elven rangers in the Second War and traveled with the Alliance Expedition through the Dark Portal.", source = "warcraft.wiki.gg/wiki/Alleria_Windrunner"},
        {era = "Legion",   text_deDE = "Absorbierte die Macht des dunklen Naaru L'ura auf Argus und meisterte die Energien der Leere.", text_enUS = "Absorbed the power of the dark naaru L'ura on Argus and mastered the energies of the Void.", source = "warcraft.wiki.gg/wiki/Alleria_Windrunner"},
        {era = "BfA",      text_deDE = "Führte die Ren'dorei (Leerenelfen) als neue Verbündete in die Ränge der Allianz.", text_enUS = "Led the ren'dorei (Void Elves) as new allies into the ranks of the Alliance.", source = "warcraft.wiki.gg/wiki/Alleria_Windrunner"},
        {era = "TWW",      text_deDE = "Jagte Xal'atath als persönliche Nemesis durch Khaz Algar, um Azeroth vor dem Fall zu bewahren.", text_enUS = "Hunted Xal'atath as her personal nemesis through Khaz Algar to save Azeroth from falling.", source = "warcraft.wiki.gg/wiki/Alleria_Windrunner"},
        {era = "Midnight", text_deDE = "Kämpft in den gefährlichsten Zonen des Leerensturms und der Leerenspitze um das Überleben von Quel'Thalas.", text_enUS = "Fights in the most dangerous zones of the Voidstorm and the Void Spire for the survival of Quel'Thalas.", source = "warcraft.wiki.gg/wiki/Alleria_Windrunner"},
    },
}

IMAGOdb.npcs["turalyon"] = {
    displayName_deDE = "Hochexarch Turalyon",
    displayName_enUS = "High Exarch Turalyon",
    race_deDE = "Mensch",
    race_enUS = "Human",
    displayID = 236978, -- Basierend auf dem bereitgestellten Midnight-Modell
    zones_deDE = {"Die Leerenspitze", "Immersangwald", "Insel von Quel'Danas", "Leerensturm", "Parhelionplaza", "Silbermond"},
    zones_enUS = {"The Voidspire", "Eversong Woods", "Isle of Quel'Danas", "Voidstorm", "Parhelion Plaza", "Silvermoon City"},
    ids = {
        239810, 244298, 250580, 236978, 241654, 252282, 243156, 237255, 241207, 244027, 
        236954, 236613, 236906, 246410, 241625, 241046, 256007, 236974, 236778, 258952, 
        236571, 245588, 242177, 239609, 248811, 241273, 258948, 236134, 259041
    },
    category = "CAT_LIGHT",
    lore_deDE = "Hochexarch Turalyon ist eine legendäre Gestalt und einer der ersten fünf Paladine der Silbernen Hand. Nach seinem Verschwinden auf Draenor kämpfte er jahrtausendelang an der Seite der Naaru als Anführer des Leuchtenden Heeres gegen die Brennende Legion. Als ein vom Licht erfüllter Unsterblicher verkörpert er den unerschütterlichen Widerstand gegen die Mächte der Finsternis. In Midnight führt er die Verteidigung der heiligen Stätten von Quel'Thalas an und steht als leuchtendes Bollwerk gegen die vordringende Leere, die nun seine Heimat und seine Familie bedroht.",
    lore_enUS = "High Exarch Turalyon is a legendary figure and one of the first five paladins of the Silver Hand. After his disappearance on Draenor, he fought for millennia alongside the naaru as the leader of the Army of the Light against the Burning Legion. As a Light-infused immortal, he embodies unwavering resistance against the forces of darkness. In Midnight, he leads the defense of the sacred sites of Quel'Thalas, standing as a shining bulwark against the encroaching Void that threatens his home and his family.",
    timeline = {
        {era = "WC2",      text_deDE = "Diente als rechte Hand von Anduin Lothar und übernahm nach dessen Tod das Kommando, um die Horde am Schwarzfels zu besiegen.", text_enUS = "Served as Anduin Lothar's second-in-command and took leadership after his death to defeat the Horde at Blackrock Mountain.", source = "warcraft.wiki.gg/wiki/Turalyon"},
        {era = "WC2",      text_deDE = "Führte die Allianz-Expedition durch das Dunkle Portal nach Draenor und blieb zurück, um Azeroth zu schützen, als das Portal zerstört wurde.", text_enUS = "Led the Alliance Expedition through the Dark Portal to Draenor and stayed behind to protect Azeroth when the portal was destroyed.", source = "warcraft.wiki.gg/wiki/Turalyon"},
        {era = "Legion",   text_deDE = "Rückkehr als Hochexarch des Leuchtenden Heeres und entscheidender Anführer im finalen Schlag gegen die Brennende Legion auf Argus.", text_enUS = "Returns as High Exarch of the Army of the Light and key leader in the final strike against the Burning Legion on Argus.", source = "warcraft.wiki.gg/wiki/Turalyon"},
        {era = "BfA/TWW",  text_deDE = "Diente als Regent von Sturmwind und Lordkommandant der Allianzstreitkräfte während der Abwesenheit von König Anduin.", text_enUS = "Served as Regent of Stormwind and Lord Commander of Alliance forces during King Anduin's absence.", source = "warcraft.wiki.gg/wiki/Turalyon"},
        {era = "Midnight", text_deDE = "Befehligt die Verteidigung der Insel von Quel'Danas und führt das Licht gegen die Leereninvasion von Xal'atath.", text_enUS = "Commands the defense of the Isle of Quel'Danas and leads the Light against Xal'atath's Void invasion.", source = "warcraft.wiki.gg/wiki/Turalyon"},
    },
}

IMAGOdb.npcs["prophet_velen"] = {
    displayName_deDE = "Prophet Velen",
    displayName_enUS = "Prophet Velen",
    race_deDE = "Draenei",
    race_enUS = "Draenei",
    displayID = 251869,
    zones_deDE = {"Insel von Quel'Danas", "Silbermond"},
    zones_enUS = {"Isle of Quel'Danas", "Silvermoon City"},
    ids = {
        251869, 239623, 251944, 253146, 246271, 256008, 242740, 246669
    },
    category = "CAT_LIGHT",
    lore_deDE = "Der Prophet Velen ist das spirituelle Oberhaupt der Draenei und eines der weisesten Wesen des Kosmos. Er führte sein Volk vor 25.000 Jahren von Argus fort, um der Verderbnis der Brennenden Legion zu entkommen. Velen ist untrennbar mit der Geschichte der Elfen verbunden: Nach dem Verrat von Kael'thas nutzte er den Funken des gefallenen Naaru M'uru, um den Sonnenbrunnen zu reinigen und ihn als Quelle von heiligem und arkanem Licht wiederherzustellen. In Midnight kehrt er an diesen heiligen Ort zurück, um Quel'Thalas gegen die Leere beizustehen.",
    lore_enUS = "Prophet Velen is the spiritual leader of the draenei and one of the wisest beings in the cosmos. He led his people away from Argus 25,000 years ago to escape the corruption of the Burning Legion. Velen is inextricably linked to elven history: after the betrayal of Kael'thas, he used the spark of the fallen naaru M'uru to purify the Sunwell, restoring it as a fount of holy and arcane light. In Midnight, he returns to this sacred place to aid Quel'Thalas against the Void.",
    timeline = {
        {era = "Pre-Classic", text_deDE = "Floh von Argus und führte die Draenei über Jahrtausende durch den Kosmos, gejagt von der Legion.", text_enUS = "Fled from Argus and led the draenei through the cosmos for millennia, hunted by the Legion.", source = "warcraft.wiki.gg/wiki/Velen"},
        {era = "TBC",      text_deDE = "Stürzte mit der Exodar auf Azeroth ab und reinigte am Ende den Sonnenbrunnen mit dem Herzen von M'uru.", text_enUS = "Crashed on Azeroth with the Exodar and ultimately purified the Sunwell using the heart of M'uru.", source = "warcraft.wiki.gg/wiki/Velen"},
        {era = "Legion",   text_deDE = "Führte den Angriff auf Argus an und konfrontierte schließlich seinen einstigen Bruder Kil'jaeden.", text_enUS = "Led the assault on Argus and finally confronted his former brother, Kil'jaeden.", source = "warcraft.wiki.gg/wiki/Velen"},
        {era = "Midnight", text_deDE = "Steht als Mentor und Verteidiger am Sonnenbrunnen, um die Leereninvasion von Xal'atath aufzuhalten.", text_enUS = "Stands as a mentor and defender at the Sunwell to halt Xal'atath's Void invasion.", source = "warcraft.wiki.gg/wiki/Velen"},
    },
}

IMAGOdb.npcs["vereesa_windrunner"] = {
    displayName_deDE = "Vereesa Windläufer",
    displayName_enUS = "Vereesa Windrunner",
    race_deDE = "Hochelfe",
    race_enUS = "High Elf",
    displayID = 240262,
    zones_deDE = {"Immersangwald", "Insel von Quel'Danas", "Silbermond"},
    zones_enUS = {"Eversong Woods", "Isle of Quel'Danas", "Silvermoon City"},
    ids = {
        240262, 249614, 245066, 240295, 240283, 246533, 247429, 247452, 
        242077, 244585, 244699, 239798, 250288
    },
    category = "CAT_QUELTHALAS",
    lore_deDE = "Die jüngste der Windläufer-Schwestern und die entschlossene Anführerin des Silbernen Bundes. Im Gegensatz zu ihren Schwestern blieb Vereesa dem Pfad der Hochelfen treu und schlug eine tiefe Wurzel in der Allianz. Nach dem schmerzhaften Verlust ihres Ehemanns Rhonin in Theramore widmete sie ihr Leben dem Schutz Azeroths und der Ausbildung ihrer Waldläufer. In Midnight kehrt sie nach Quel'Thalas zurück, um ihre Heimat gegen die Leere zu verteidigen und sich dem schmerzhaften Erbe ihrer Familie zu stellen.",
    lore_enUS = "The youngest of the Windrunner sisters and the resolute leader of the Silver Covenant. Unlike her sisters, Vereesa remained true to the path of the High Elves and established deep roots within the Alliance. After the painful loss of her husband Rhonin at Theramore, she dedicated her life to protecting Azeroth and training her rangers. In Midnight, she returns to Quel'Thalas to defend her homeland against the Void and face the painful legacy of her family.",
    timeline = {
        {era = "Pre-Classic", text_deDE = "Kämpfte während der Ereignisse von 'Der Tag des Drachen' in Grim Batol und traf dort ihren späteren Ehemann Rhonin.", text_enUS = "Fought in Grim Batol during the events of 'Day of the Dragon', where she met her future husband, Rhonin.", source = "warcraft.wiki.gg/wiki/Vereesa_Windrunner"},
        {era = "WotLK",      text_deDE = "Gründete den Silbernen Bund in Dalaran, um den Einfluss der Blutelfen innerhalb der Kirin Tor zu begrenzen.", text_enUS = "Founded the Silver Covenant in Dalaran to limit the influence of the blood elves within the Kirin Tor.", source = "warcraft.wiki.gg/wiki/Vereesa_Windrunner"},
        {era = "MoP",        text_deDE = "Unterstützte Jaina Prachtmeer bei der blutigen Säuberung von Dalaran nach der Zerstörung von Theramore.", text_enUS = "Supported Jaina Proudmoore during the bloody Purge of Dalaran following the destruction of Theramore.", source = "warcraft.wiki.gg/wiki/Vereesa_Windrunner"},
        {era = "Legion",     text_deDE = "Schloss sich dem Verborgenen Pfad an und wurde nach über tausend Jahren mit ihrer Schwester Alleria vereint.", text_enUS = "Joined the Unseen Path and was reunited with her sister Alleria after over a thousand years.", source = "warcraft.wiki.gg/wiki/Vereesa_Windrunner"},
        {era = "Midnight",   text_deDE = "Führt die Waldläufer des Silbernen Bundes bei der Verteidigung von Silbermond und der Insel von Quel'Danas an.", text_enUS = "Leads the Silver Covenant rangers in the defense of Silvermoon and the Isle of Quel'Danas.", source = "warcraft.wiki.gg/wiki/Vereesa_Windrunner"},
    },
}

IMAGOdb.npcs["calia_menethil"] = {
    displayName_deDE = "Calia Menethil",
    displayName_enUS = "Calia Menethil",
    race_deDE = "Lichtgebundene Untote",
    race_enUS = "Light-bound Undead",
    displayID = 251934,
    zones_deDE = {"Insel von Quel'Danas", "Silbermond"},
    zones_enUS = {"Isle of Quel'Danas", "Silvermoon City"},
    ids = {
        251934, 248416, 249460, 253189, 247923, 251948
    },
    category = "CAT_LIGHT",
    lore_deDE = "Prinzessin Calia Menethil ist die letzte Erbin der Menethil-Dynastie und die Schwester von Arthas. Nachdem sie jahrzehntelang unter falschem Namen im Verborgenen lebte, trat sie während des Vierten Krieges wieder ins Rampenlicht, wurde jedoch von Sylvanas Windläufer getötet. Durch ein beispielloses Wunder des Lichts kehrte sie als einzigartige, lichtdurchflutete Untote zurück. In Midnight steht sie am Sonnenbrunnen als lebendes Paradoxon und Symbol der Hoffnung, um die Mächte des Lichts gegen die alles verschlingende Leere zu koordinieren.",
    lore_enUS = "Princess Calia Menethil is the last heir of the Menethil dynasty and the sister of Arthas. After living in hiding under a false name for decades, she re-emerged during the Fourth War, only to be killed by Sylvanas Windrunner. Through an unprecedented miracle of the Light, she returned as a unique, light-infused undead. In Midnight, she stands at the Sunwell as a living paradox and a symbol of hope, coordinating the forces of Light against the all-consuming Void.",
    timeline = {
        {era = "Warcraft 3", text_deDE = "Floh während der Zerstörung von Lordaeron durch ihren Bruder Arthas und lebte jahrelang unerkannt unter den Menschen.", text_enUS = "Fled during the destruction of Lordaeron by her brother Arthas and lived unrecognized among humans for years.", source = "warcraft.wiki.gg/wiki/Calia_Menethil"},
        {era = "Legion",     text_deDE = "Offenbarte sich Alonsus Faol und schloss sich der Conclave im Sanktum des Lichts an, um Priestern im Kampf gegen die Legion zu helfen.", text_enUS = "Revealed herself to Alonsus Faol and joined the Conclave in the Sanctum of Light to aid priests in the battle against the Legion.", source = "warcraft.wiki.gg/wiki/Calia_Menethil"},
        {era = "BfA",        text_deDE = "Wurde bei der Zusammenkunft im Arathihochland von Sylvanas getötet und durch Saa'ra und Anduin als lichtgebundene Untote wiederbelebt.", text_enUS = "Was killed by Sylvanas at the Arathi Highlands gathering and resurrected as light-bound undead by Saa'ra and Anduin.", source = "warcraft.wiki.gg/wiki/Calia_Menethil"},
        {era = "DF",         text_deDE = "Nahm ihren Platz im Rat der Desolaten ein, um die Verlassenen in eine neue Ära ohne Sylvanas zu führen.", text_enUS = "Took her place on the Desolate Council to lead the Forsaken into a new era without Sylvanas.", source = "warcraft.wiki.gg/wiki/Calia_Menethil"},
        {era = "Midnight",   text_deDE = "Unterstützt die Verteidigung von Quel'Thalas und dient als diplomatische Brücke zwischen dem Licht und den Untoten.", text_enUS = "Supports the defense of Quel'Thalas and serves as a diplomatic bridge between the Light and the undead.", source = "warcraft.wiki.gg/wiki/Calia_Menethil"},
    },
}

IMAGOdb.npcs["taelia_fordragon"] = {
    displayName_deDE = "Taelia Fordragon",
    displayName_enUS = "Taelia Fordragon",
    race_deDE = "Mensch",
    race_enUS = "Human",
    displayID = 242803,
    zones_deDE = {"Immersangwald", "Insel von Quel'Danas", "Parhelionplaza", "Silbermond"},
    zones_enUS = {"Eversong Woods", "Isle of Quel'Danas", "Parhelion Plaza", "Silvermoon City"},
    ids = {
        242803, 251931, 248323, 242898, 242889, 242608, 241706, 242894, 
        239510, 251951, 253187
    },
    category = "CAT_LIGHT",
    lore_deDE = "Taelia Fordragon ist die Tochter des legendären Bolvar Fordragon. Aufgewachsen in Kul Tiras als Mündel von Cyrus Schattensang, verbrachte sie den Großteil ihres Lebens in dem Glauben, ihr Vater sei an der Pforte des Zorns gefallen. Erst während des Vierten Krieges erfuhr sie die schockierende Wahrheit über sein Schicksal als Lichkönig. Getrieben von einem unerschütterlichen Gerechtigkeitssinn und dem Erbe ihres Vaters, hat sie sich zu einer fähigen Ritterin entwickelt. In Midnight kämpft sie an vorderster Front, um das Licht gegen die Leere zu verteidigen und den Namen Fordragon mit Ehre zu erfüllen.",
    lore_enUS = "Taelia Fordragon is the daughter of the legendary Bolvar Fordragon. Raised in Kul Tiras as a ward of Cyrus Crestfall, she spent most of her life believing her father fell at the Wrathgate. It was only during the Fourth War that she learned the shocking truth about his fate as the Lich King. Driven by an unwavering sense of justice and her father's legacy, she has developed into a capable knight. In Midnight, she fights on the front lines to defend the Light against the Void and fulfill the Fordragon name with honor.",
    timeline = {
        {era = "Pre-Classic", text_deDE = "Wurde von ihrem Vater nach Kul Tiras geschickt, um sie vor den Gefahren Lordaerons und des Dritten Krieges zu schützen.", text_enUS = "Was sent to Kul Tiras by her father to protect her from the dangers of Lordaeron and the Third War.", source = "warcraft.wiki.gg/wiki/Taelia_Fordragon"},
        {era = "BfA",        text_deDE = "Diente als Botin in Kul Tiras, traf Jaina Prachtmeer und erfuhr schließlich von Bolvars Schicksal in der Eiskronenzitadelle.", text_enUS = "Served as a messenger in Kul Tiras, met Jaina Proudmoore, and eventually learned of Bolvar's fate in Icecrown Citadel.", source = "warcraft.wiki.gg/wiki/Taelia_Fordragon"},
        {era = "SL",         text_deDE = "Reiste in die Schattenlande, um an der Seite ihres Vaters und der Ritter der Schwarzen Klinge gegen den Kerkermeister zu kämpfen.", text_enUS = "Traveled to the Shadowlands to fight alongside her father and the Knights of the Ebon Blade against the Jailer.", source = "warcraft.wiki.gg/wiki/Taelia_Fordragon"},
        {era = "Midnight",   text_deDE = "Unterstützt die Verteidigung von Silbermond und Quel'Danas als prominente Ritterin des Leuchtenden Heeres.", text_enUS = "Supports the defense of Silvermoon and Quel'Danas as a prominent knight of the Army of Light.", source = "warcraft.wiki.gg/wiki/Taelia_Fordragon"},
    },
}

IMAGOdb.npcs["shandris_mondfeder"] = {
    displayName_deDE = "Shandris Mondfeder",
    displayName_enUS = "Shandris Feathermoon",
    race_deDE = "Nachtelfe",
    race_enUS = "Night Elf",
    displayID = 240334,
    zones_deDE = {"Amirdrassil", "Harandar", "Silbermond"},
    zones_enUS = {"Amirdrassil", "Harandar", "Silvermoon City"},
    ids = {
        240334, 246486, 240258, 244647
    },
    category = "CAT_QUELTHALAS",
    lore_deDE = "Generalin Shandris Mondfeder ist die Oberkommandierende der Mondwächterinnen und die Adoptivtochter von Tyrande Whisperwind. Als Veteranin, die bereits vor zehntausend Jahren im Krieg der Ahnen kämpfte, gehört sie zu den erfahrensten militärischen Führerinnen Azeroths. In Midnight fungiert sie als strategisches Bindeglied zwischen den Nachtelfen und ihren Cousins in Quel'Thalas. Ihre Präsenz in Silbermond und den Wäldern von Harandar signalisiert eine historische Einigkeit der Elfen im verzweifelten Kampf gegen die Leere.",
    lore_enUS = "General Shandris Feathermoon is the supreme commander of the Sentinel Army and the adopted daughter of Tyrande Whisperwind. A veteran who fought in the War of the Ancients ten thousand years ago, she is one of Azeroth's most seasoned military leaders. In Midnight, she serves as a strategic link between the Night Elves and their cousins in Quel'Thalas. Her presence in Silvermoon and the forests of Harandar signals a historic unification of the Elven peoples in their desperate struggle against the Void.",
    timeline = {
        {era = "Pre-Classic", text_deDE = "Überlebte als junge Waise den Krieg der Ahnen und wurde von Tyrande Whisperwind adoptiert und ausgebildet.", text_enUS = "Survived the War of the Ancients as a young orphan and was adopted and trained by Tyrande Whisperwind.", source = "warcraft.wiki.gg/wiki/Shandris_Feathermoon"},
        {era = "WC3",        text_deDE = "Führte die Mondwächterinnen während der Invasion der Brennenden Legion und verteidigte den Berg Hyjal.", text_enUS = "Led the Sentinels during the invasion of the Burning Legion and defended Mount Hyjal.", source = "warcraft.wiki.gg/wiki/Shandris_Feathermoon"},
        {era = "BfA",        text_deDE = "Kommandierte die Allianz-Streitkräfte in Nazjatar im Kampf gegen Königin Azshara und das Imperium der Naga.", text_enUS = "Commanded Alliance forces in Nazjatar in the battle against Queen Azshara and the Naga Empire.", source = "warcraft.wiki.gg/wiki/Shandris_Feathermoon"},
        {era = "DF",         text_deDE = "Verteidigte den neuen Weltenbaum Amirdrassil im Smaragdgrünen Traum gegen die Traumreißer.", text_enUS = "Defended the new World Tree, Amirdrassil, in the Emerald Dream against the Primalists.", source = "warcraft.wiki.gg/wiki/Shandris_Feathermoon"},
        {era = "Midnight",   text_deDE = "Leitet die militärische Unterstützung der Nachtelfen in Quel'Thalas und koordiniert die Verteidigung von Silbermond.", text_enUS = "Leads Night Elf military support in Quel'Thalas and coordinates the defense of Silvermoon.", source = "warcraft.wiki.gg/wiki/Shandris_Feathermoon"},
    },
}

IMAGOdb.npcs["moira_thaurissan"] = {
    displayName_deDE = "Moira Thaurissan",
    displayName_enUS = "Moira Thaurissan",
    race_deDE = "Zwergin (Dunkeleisen)",
    race_enUS = "Dwarf (Dark Iron)",
    displayID = 251932,
    zones_deDE = {"Insel von Quel'Danas", "Silbermond"},
    zones_enUS = {"Isle of Quel'Danas", "Silvermoon City"},
    ids = {
        251932, 251949, 253188, 254299, 247926
    },
    category = "CAT_LIGHT",
    lore_deDE = "Moira Thaurissan ist die Erbin des Throns von Eisenschmiede und Regentin des Dunkeleisen-Clans. Als Mitglied des Rats der Drei Hämmer hat sie die einst zerstrittenen Zwergenvölker mit eiserner Entschlossenheit und politischem Geschick vereint. Moira ist nicht nur eine fähige Diplomatin, sondern auch eine mächtige Priesterin. In Midnight repräsentiert sie die Zwerge am Sonnenbrunnen und bringt die geballte Macht der Dunkeleisen-Magie und des Lichts ein, um Quel'Thalas vor der totalen Finsternis zu bewahren.",
    lore_enUS = "Moira Thaurissan is the heir to the throne of Ironforge and regent of the Dark Iron clan. As a member of the Council of Three Hammers, she has united the once-feuding dwarven clans through iron will and political savvy. Moira is not only a capable diplomat but also a powerful priestess. In Midnight, she represents the dwarves at the Sunwell, bringing the combined might of Dark Iron magic and the Light to save Quel'Thalas from total darkness.",
    timeline = {
        {era = "Classic",  text_deDE = "Verschwand aus Eisenschmiede und wurde die Gemahlin von Imperator Dagran Thaurissan in den Schwarzfelstiefen.", text_enUS = "Disappeared from Ironforge and became the consort of Emperor Dagran Thaurissan in Blackrock Depths.", source = "warcraft.wiki.gg/wiki/Moira_Thaurissan"},
        {era = "Cata",     text_deDE = "Kehrte nach dem Erstarren ihres Vaters Magni nach Eisenschmiede zurück und half bei der Gründung des Rats der Drei Hämmer.", text_enUS = "Returned to Ironforge after her father Magni's petrification and helped found the Council of Three Hammers.", source = "warcraft.wiki.gg/wiki/Moira_Thaurissan"},
        {era = "BfA",      text_deDE = "Sicherte die offizielle Eingliederung der Dunkeleisen-Zwerge in die Allianz während des Vierten Krieges.", text_enUS = "Secured the official integration of the Dark Iron dwarves into the Alliance during the Fourth War.", source = "warcraft.wiki.gg/wiki/Moira_Thaurissan"},
        {era = "TWW",      text_deDE = "Begleitete die Expedition nach Khaz Algar und unterstützte ihren Sohn Dagran II. bei seinen ersten diplomatischen Schritten.", text_enUS = "Accompanied the expedition to Khaz Algar and supported her son Dagran II in his first diplomatic steps.", source = "warcraft.wiki.gg/wiki/Moira_Thaurissan"},
        {era = "Midnight", text_deDE = "Kämpft als führende Priesterin und Repräsentantin der Zwerge bei der Verteidigung des Sonnenbrunnens.", text_enUS = "Fights as a leading priestess and representative of the dwarves in the defense of the Sunwell.", source = "warcraft.wiki.gg/wiki/Moira_Thaurissan"},
    },
}

IMAGOdb.npcs["hauptmann_fareeya"] = {
    displayName_deDE = "Hauptmann Fareeya",
    displayName_enUS = "Captain Fareeya",
    race_deDE = "Lichtgeschmiedete Draenei",
    race_enUS = "Lightforged Draenei",
    displayID = 248318,
    zones_deDE = {"Insel von Quel'Danas"},
    zones_enUS = {"Isle of Quel'Danas"},
    ids = {
        248318, 242614, 245605, 242507
    },
    category = "CAT_LIGHT",
    lore_deDE = "Hauptmann Fareeya ist die oberste Feldkommandantin der Lichtgeschmiedeten Draenei und eine der vertrauenswürdigsten Offiziere von Hochexarch Turalyon. Während des tausendjährigen Krieges gegen die Brennende Legion leitete sie unzählige Einsätze an Bord der Vindicaar. Fareeya ist bekannt für ihre unerschütterliche Disziplin und ihren unbändigen Glauben an das heilige Licht. In Midnight führt sie das Kontingent der Lichtgeschmiedeten auf der Insel von Quel'Danas an, um den Sonnenbrunnen mit modernster Technologie und göttlicher Macht gegen die Leere zu verbarrikadieren.",
    lore_enUS = "Captain Fareeya is the high field commander of the Lightforged Draenei and one of High Exarch Turalyon's most trusted officers. During the thousand-year war against the Burning Legion, she led countless operations aboard the Vindicaar. Fareeya is known for her unwavering discipline and her indomitable faith in the Holy Light. In Midnight, she leads the Lightforged contingent on the Isle of Quel'Danas, fortifying the Sunwell against the Void with advanced technology and divine power.",
    timeline = {
        {era = "Legion",   text_deDE = "Diente als zentrale Kommandantin der Armee des Lichts während des Feldzugs auf Argus und unterstützte die Helden Azeroths.", text_enUS = "Served as a central commander of the Army of the Light during the Argus campaign, assisting the heroes of Azeroth.", source = "warcraft.wiki.gg/wiki/Captain_Fareeya"},
        {era = "BfA",      text_deDE = "Führte die Lichtgeschmiedeten Draenei offiziell in die Allianz und überwachte die Ausbildung neuer Rekruten auf der Vindicaar.", text_enUS = "Officially led the Lightforged Draenei into the Alliance and oversaw the training of new recruits on the Vindicaar.", source = "warcraft.wiki.gg/wiki/Captain_Fareeya"},
        {era = "Midnight", text_deDE = "Befehligt die Verteidigungsstellungen auf der Insel von Quel'Danas und koordiniert die Licht-Artillerie gegen die Leerenportale.", text_enUS = "Commands the defensive positions on the Isle of Quel'Danas and coordinates Light artillery against the Void portals.", source = "warcraft.wiki.gg/wiki/Captain_Fareeya"},
    },
}

IMAGOdb.npcs["delas_mondfang"] = {
    displayName_deDE = "Delas Mondfang",
    displayName_enUS = "Delas Moonfang",
    race_deDE = "Nachtelfe",
    race_enUS = "Night Elf",
    displayID = 246670,
    zones_deDE = {"Insel von Quel'Danas"},
    zones_enUS = {"Isle of Quel'Danas"},
    ids = {
        246670, 239484, 240731, 260830
    },
    category = "CAT_LIGHT",
    lore_deDE = "Delas Mondfang ist eine historische Pionierin: Als ehemalige Priesterin von Elune war sie die erste Nachtelfe, die den Weg des Paladins einschlug und sich dem Orden der Silbernen Hand anschloss. Unter der Anleitung von Mehlar Dämmerklinge lernte sie, das heilige Licht mit den Traditionen ihres Volkes in Einklang zu bringen. In Midnight dient sie als lebendiges Symbol der Einheit am Sonnenbrunnen und beweist, dass der Glaube an das Licht keine Grenzen zwischen den Elfenvölkern kennt, wenn es um die Verteidigung Azeroths geht.",
    lore_enUS = "Delas Moonfang is a historical pioneer: a former Priestess of Elune, she was the first Night Elf to walk the path of the Paladin and join the Order of the Silver Hand. Under the tutelage of Mehlar Dawnblade, she learned to harmonize the Holy Light with the traditions of her people. In Midnight, she serves as a living symbol of unity at the Sunwell, proving that faith in the Light knows no boundaries between elven peoples when it comes to defending Azeroth.",
    timeline = {
        {era = "WoD",      text_deDE = "Diente als Mondpriesterin im Schattenmondtal auf Draenor und unterstützte die Allianz-Streitkräfte gegen die Eiserne Horde.", text_enUS = "Served as a Priestess of the Moon in Shadowmoon Valley on Draenor, assisting Alliance forces against the Iron Horde.", source = "warcraft.wiki.gg/wiki/Delas_Moonfang"},
        {era = "Legion",   text_deDE = "Trat der Silbernen Hand bei und wurde im Sanktum des Lichts zur ersten Nachtelf-Paladinin geweiht.", text_enUS = "Joined the Silver Hand and was ordained as the first Night Elf Paladin in the Sanctum of Light.", source = "warcraft.wiki.gg/wiki/Delas_Moonfang"},
        {era = "Midnight", text_deDE = "Kämpft als erfahrene Paladinin auf der Insel von Quel'Danas für die Verteidigung des Sonnenbrunnens.", text_enUS = "Fights as an experienced Paladin on the Isle of Quel'Danas for the defense of the Sunwell.", source = "warcraft.wiki.gg/wiki/Delas_Moonfang"},
    },
}

IMAGOdb.npcs["lord_grayson_schattenbruch"] = {
    displayName_deDE = "Lord Grayson Schattenbruch",
    displayName_enUS = "Lord Grayson Shadowbreaker",
    race_deDE = "Mensch",
    race_enUS = "Human",
    displayID = 247929,
    zones_deDE = {"Insel von Quel'Danas"},
    zones_enUS = {"Isle of Quel'Danas"},
    ids = {
        247929, 239494, 246779
    },
    category = "CAT_LIGHT",
    lore_deDE = "Lord Grayson Schattenbruch ist ein hochangesehener Paladin-Meister der Silbernen Hand. Jahrelang diente er in der Kathedrale des Lichts in Sturmwind als Mentor und war maßgeblich an der Ausbildung und Ausrüstung der ritterlichen Kavallerie beteiligt. Während der Invasion der Brennenden Legion schloss er sich dem reformierten Orden im Sanktum des Lichts an. In Midnight führt er seine jahrzehntelange Erfahrung an die Fronten von Quel'Thalas, um die Verteidigung des Sonnenbrunnens mit dem heiligen Zorn der Silbernen Hand zu unterstützen.",
    lore_enUS = "Lord Grayson Shadowbreaker is a highly respected Paladin Master of the Silver Hand. For years, he served in the Cathedral of Light in Stormwind as a mentor and was instrumental in the training and outfitting of the knightly cavalry. During the invasion of the Burning Legion, he joined the reformed order in the Sanctum of Light. In Midnight, he brings his decades of experience to the fronts of Quel'Thalas to support the defense of the Sunwell with the holy wrath of the Silver Hand.",
    timeline = {
        {era = "Classic",  text_deDE = "Unterrichtete junge Paladine in Sturmwind und half ihnen, ihre heiligen Streitrosse zu beschwören.", text_enUS = "Instructed young paladins in Stormwind and helped them summon their holy steeds.", source = "warcraft.wiki.gg/wiki/Lord_Grayson_Shadowbreaker"},
        {era = "Legion",   text_deDE = "Schloss sich der Conclave im Sanktum des Lichts an, um den Orden der Silbernen Hand gegen Sargeras' Legion zu vereinen.", text_enUS = "Joined the Conclave in the Sanctum of Light to unite the Order of the Silver Hand against Sargeras' Legion.", source = "warcraft.wiki.gg/wiki/Lord_Grayson_Shadowbreaker"},
        {era = "Midnight", text_deDE = "Kommandiert Truppen der Silbernen Hand auf der Insel von Quel'Danas zur Verteidigung des Lichts.", text_enUS = "Commands Silver Hand troops on the Isle of Quel'Danas in defense of the Light.", source = "warcraft.wiki.gg/wiki/Lord_Grayson_Shadowbreaker"},
    },
}

IMAGOdb.npcs["eadric_der_reine"] = {
    displayName_deDE = "Eadric der Reine",
    displayName_enUS = "Eadric the Pure",
    race_deDE = "Mensch",
    race_enUS = "Human",
    displayID = 247159,
    zones_deDE = {"Parhelionplaza"},
    zones_enUS = {"Parhelion Plaza"},
    ids = {
        247159, 239508, 241708
    },
    category = "CAT_LIGHT",
    lore_deDE = "Eadric der Reine ist der Großchampion des Silbernen Kreuzzugs und einer der tugendhaftesten Paladine in der Geschichte des Ordens. Bekannt für seine Demut und seinen unerschütterlichen Glauben, diente er beim Großen Turnier in Nordend als letzte Prüfung für jene, die sich gegen den Lichkönig beweisen wollten. Trotz seiner hohen Position hat er sich stets einen Funken Humor und eine tiefe Menschlichkeit bewahrt. In Midnight führt er die Verteidigung der Parhelionplaza an und beweist, dass wahre Reinheit das hellste Bollwerk gegen die Schatten der Leere ist.",
    lore_enUS = "Eadric the Pure is the Grand Champion of the Argent Crusade and one of the most virtuous paladins in the order's history. Known for his humility and unwavering faith, he served as the final test at the Grand Tournament in Northrend for those wishing to prove themselves against the Lich King. Despite his high rank, he has always maintained a spark of humor and deep humanity. In Midnight, he leads the defense of Parhelion Plaza, proving that true purity is the brightest bulwark against the shadows of the Void.",
    timeline = {
        {era = "WotLK",     text_deDE = "Diente als Großchampion des Silbernen Kreuzzugs und prüfte die Helden Azeroths in der Prüfung des Kreuzfahrers.", text_enUS = "Served as Grand Champion of the Argent Crusade and tested the heroes of Azeroth in the Trial of the Crusader.", source = "warcraft.wiki.gg/wiki/Eadric_the_Pure"},
        {era = "Legion",    text_deDE = "Schloss sich der Conclave im Sanktum des Lichts an und unterstützte den Hohenlord bei der Führung des Ordens der Silbernen Hand.", text_enUS = "Joined the Conclave in the Sanctum of Light and supported the Highlord in leading the Order of the Silver Hand.", source = "warcraft.wiki.gg/wiki/Eadric_the_Pure"},
        {era = "Midnight",  text_deDE = "Verteidigt die Parhelionplaza gegen die Leereninvasion und dient als moralischer Anker für die Truppen des Lichts.", text_enUS = "Defends Parhelion Plaza against the Void invasion and serves as a moral anchor for the forces of Light.", source = "warcraft.wiki.gg/wiki/Eadric_the_Pure"},
    },
}

IMAGOdb.npcs["yalia_weisenwisper"] = {
    displayName_deDE = "Yalia Weisenwisper",
    displayName_enUS = "Yalia Sagewhisper",
    race_deDE = "Pandaren",
    race_enUS = "Pandaren",
    displayID = 240646,
    zones_deDE = {"Parhelionplaza"},
    zones_enUS = {"Parhelion Plaza"},
    ids = {
        240646, 241705, 247161, 239503
    },
    category = "CAT_LIGHT",
    lore_deDE = "Yalia Weisenwisper ist eine hochrangige Priesterin der Schado-Pan aus Pandaria. Sie ist bekannt für ihre unerschütterliche Ruhe und ihre Fähigkeit, selbst in den dunkelsten Momenten spirituellen Frieden zu stiften. Während der Invasion der Brennenden Legion schloss sie sich der Conclave im Sanktum des Lichts an, um die Priester Azeroths zu vereinen. In Midnight bringt sie die meditativen Praktiken und Heilkünste ihres Volkes an die Parhelionplaza, wo sie als moralischer Anker und Heilerin für die vereinten Verteidiger von Quel'Thalas dient.",
    lore_enUS = "Yalia Sagewhisper is a high-ranking priestess of the Shado-Pan from Pandaria. She is renowned for her unwavering calm and her ability to bring spiritual peace even in the darkest moments. During the invasion of the Burning Legion, she joined the Conclave in the Sanctum of Light to unite the priests of Azeroth. In Midnight, she brings the meditative practices and healing arts of her people to Parhelion Plaza, serving as a moral anchor and healer for the united defenders of Quel'Thalas.",
    timeline = {
        {era = "MoP",      text_deDE = "Diente den Schado-Pan auf der Insel des Donners und unterstützte die Helden im Kampf gegen den Donnerkönig Lei Shen.", text_enUS = "Served the Shado-Pan on the Isle of Thunder and supported heroes in the fight against the Thunder King Lei Shen.", source = "warcraft.wiki.gg/wiki/Yalia_Sagewhisper"},
        {era = "Legion",   text_deDE = "Wurde ein Gründungsmitglied der Conclave im Sanktum des Lichts, um die Schatten der Legion mit innerer Stärke zu bekämpfen.", text_enUS = "Became a founding member of the Conclave in the Sanctum of Light to combat the Legion's shadows with inner strength.", source = "warcraft.wiki.gg/wiki/Yalia_Sagewhisper"},
        {era = "Midnight", text_deDE = "Bietet spirituellen Beistand und Heilung auf der Parhelionplaza während der Belagerung durch die Leere.", text_enUS = "Provides spiritual support and healing at Parhelion Plaza during the Void siege.", source = "warcraft.wiki.gg/wiki/Yalia_Sagewhisper"},
    },
}
IMAGOdb.npcs["lothraxion"] = {
    displayName_deDE = "Lothraxion",
    displayName_enUS = "Lothraxion",
    race_deDE = "Lichtgeschmiedeter Schreckenslord",
    race_enUS = "Lightforged Dreadlord",
    displayID = 249268,
    zones_deDE = {"Insel von Quel'Danas", "Leerensturm", "Nexuspunkt Xenas", "Parhelionplaza", "Silbermond"},
    zones_enUS = {"Isle of Quel'Danas", "Voidstorm", "Nexus Point Xenas", "Parhelion Plaza", "Silvermoon City"},
    ids = {
        249268, 250581, 235477, 236657, 241546, 235713, 235606, 235648, 235504, 235530,
        235394, 235522, 235649, 235486, 250265, 235777, 235473, 235603, 235535, 240381,
        242531, 243688, 240673, 240230, 235647, 239980, 235725, 252738, 239416, 244034,
        246121, 240020
    },
    category = "CAT_LIGHT",
    lore_deDE = "Lothraxion ist eine absolute Seltenheit im Kosmos: Er ist ein Nathrezim (Schreckenslord), der vom Ur-Naaru Xe'ra mit dem Heiligen Licht geschmiedet wurde. Als hochrangiger Kommandant des Leuchtenden Heeres scheint seine Loyalität zum Licht unerschütterlich, auch wenn seine wahre Herkunft aus den Schattenlanden bei manchen stets tiefes Misstrauen weckt. In Midnight koordiniert er die gigantische militärische Offensive des Lichts und ist in fast jedem Krisengebiet von Quel'Thalas und dem Leerensturm an vorderster Front zu finden.",
    lore_enUS = "Lothraxion is an absolute rarity in the cosmos: he is a nathrezim (dreadlord) forged with the Holy Light by the prime naaru Xe'ra. As a high-ranking commander of the Army of the Light, his loyalty to the Light appears unwavering, even though his true origins from the Shadowlands often arouse deep suspicion among some. In Midnight, he coordinates the Light's massive military offensive and can be found on the front lines of nearly every crisis zone in Quel'Thalas and the Voidstorm.",
    timeline = {
        {era = "Legion",   text_deDE = "Offenbarte sich als lichtgeschmiedeter Dämon und unterstützte die Paladine im Sanktum des Lichts im Kampf gegen Balnazzar.", text_enUS = "Revealed himself as a Lightforged demon and assisted the paladins in the Sanctum of Light in the battle against Balnazzar.", source = "warcraft.wiki.gg/wiki/Lothraxion"},
        {era = "SL",       text_deDE = "Ein Bericht in Revendreth (Feindliche Infiltration) ließ die dunkle Vermutung zu, dass er ein Schläfer-Agent von Graf Denathrius sein könnte.", text_enUS = "A report in Revendreth (Enemy Infiltration) raised the dark suspicion that he might be a sleeper agent of Sire Denathrius.", source = "warcraft.wiki.gg/wiki/Lothraxion"},
        {era = "Midnight", text_deDE = "Tritt als oberster militärischer Stratege des Lichts in unzähligen Zonen von Quel'Thalas in Erscheinung.", text_enUS = "Emerges as the supreme military strategist of the Light in countless zones of Quel'Thalas.", source = "warcraft.wiki.gg/wiki/Lothraxion"},
    },
}

IMAGOdb.npcs["alonsus_faol"] = {
    displayName_deDE = "Erzbischof Alonsus Faol",
    displayName_enUS = "Archbishop Alonsus Faol",
    race_deDE = "Verlassener",
    race_enUS = "Forsaken",
    displayID = 240747,
    zones_deDE = {"Brennende Steppe", "Das Arathihochland", "Insel von Quel'Danas", "Östliche Pestländer", "Parhelionplaza", "Silbermond", "Tirisfal"},
    zones_enUS = {"Burning Steppes", "Arathi Highlands", "Isle of Quel'Danas", "Eastern Plaguelands", "Parhelion Plaza", "Silvermoon City", "Tirisfal Glades"},
    ids = {
        240747, 237511, 251355, 240240, 237602, 237565, 240714, 237601, 
        243987, 246863, 236789, 248263, 246413, 237370, 248636, 244039, 
        241431, 243162, 240886, 256002, 244035, 240019, 237531, 253197
    },
    category = "CAT_LIGHT",
    lore_deDE = "Erzbischof Alonsus Faol ist eine der historisch wichtigsten Figuren Azeroths. Nach dem Fall von Sturmwind im Ersten Krieg war er es, der erkannte, dass reine Priester auf dem Schlachtfeld zu verwundbar waren. Gemeinsam mit Uther gründete er den Orden der Silbernen Hand und erschuf damit die ersten Paladine. Faol verstarb vor dem Dritten Krieg, wurde jedoch von der Geißel als Untoter erweckt. Durch unvorstellbare Willenskraft befreite er sich und nutzt das Heilige Licht weiterhin, obwohl es ihm als Verlassenem physische Schmerzen bereitet. In Midnight reist die lebende Legende zu den historischen Stätten der Allianz und nach Quel'Thalas, um die Verteidiger im Kampf gegen die Leere zu segnen.",
    lore_enUS = "Archbishop Alonsus Faol is one of the most historically significant figures in Azeroth. After the fall of Stormwind in the First War, he realized that pure priests were too vulnerable on the battlefield. Together with Uther, he founded the Order of the Silver Hand, creating the first paladins. Faol died before the Third War but was raised by the Scourge as an undead. Through unimaginable willpower, he broke free and continues to wield the Holy Light, even though it causes him physical pain as a Forsaken. In Midnight, the living legend travels to historic Alliance sites and Quel'Thalas to bless the defenders in the war against the Void.",
    timeline = {
        {era = "WC2",      text_deDE = "Gründete den Orden der Silbernen Hand und weihte die ersten fünf Paladine (darunter Uther und Turalyon).", text_enUS = "Founded the Order of the Silver Hand and ordained the first five paladins (including Uther and Turalyon).", source = "warcraft.wiki.gg/wiki/Alonsus_Faol"},
        {era = "Pre-WC3",  text_deDE = "Verstarb eines natürlichen Todes und wurde in Faols Ruh in Tirisfal beigesetzt, bevor er von der Geißel erweckt wurde.", text_enUS = "Died of natural causes and was buried in Faol's Rest in Tirisfal before being raised by the Scourge.", source = "warcraft.wiki.gg/wiki/Alonsus_Faol"},
        {era = "Legion",   text_deDE = "Trat aus dem Schatten, um die Konklave im Netherlichttempel zu gründen und die Priester gegen die Legion zu führen.", text_enUS = "Stepped out of the shadows to found the Conclave in the Netherlight Temple and lead priests against the Legion.", source = "warcraft.wiki.gg/wiki/Alonsus_Faol"},
        {era = "Midnight", text_deDE = "Unternimmt eine weitreichende Pilgerreise über Azeroth bis nach Quel'Thalas, um die spirituellen Truppen des Lichts zu sammeln.", text_enUS = "Undertakes a far-reaching pilgrimage across Azeroth to Quel'Thalas to rally the spiritual forces of the Light.", source = "warcraft.wiki.gg/wiki/Alonsus_Faol"},
    },
}

IMAGOdb.npcs["tahu_weisenwind"] = {
    displayName_deDE = "Tahu Weisenwind",
    displayName_enUS = "Tahu Sagewind",
    race_deDE = "Tauren",
    race_enUS = "Tauren",
    displayID = 251939,
    zones_deDE = {"Insel von Quel'Danas", "Parhelionplaza", "Silbermond"},
    zones_enUS = {"Isle of Quel'Danas", "Parhelion Plaza", "Silvermoon City"},
    ids = {
        251939, 240657, 242613, 243227, 251950, 241714, 248324
    },
    category = "CAT_LIGHT",
    lore_deDE = "Tahu Weisenwind ist der spirituelle Begründer der Seher, der Priesterschaft der Tauren. Während die Menschen das heilige Licht verehren, lehrte Tahu sein Volk, das Licht durch An'she – die Sonne und das rechte Auge der Erdenmutter – zu kanalisieren. Seine Anwesenheit in Quel'Thalas während Midnight ist von gewaltiger diplomatischer und poetischer Bedeutung: Der Meister der Sonnenmagie der Horde steht den Blutelfen zur Seite, um deren eigene Sonnenquelle vor dem alles verschlingenden Hunger der Leere zu beschützen.",
    lore_enUS = "Tahu Sagewind is the spiritual founder of the Seers, the tauren priesthood. While humans revere the Holy Light, Tahu taught his people to channel the Light through An'she—the sun and the right eye of the Earth Mother. His presence in Quel'Thalas during Midnight holds immense diplomatic and poetic significance: the Horde's master of sun magic stands alongside the blood elves to protect their own Sunwell from the all-consuming hunger of the Void.",
    timeline = {
        {era = "WotLK",    text_deDE = "Diskutierte mit Aponi Lichtmähne über das Ungleichgewicht zwischen Mu'sha (Mond) und An'she (Sonne) und legte so den Grundstein für die Tauren-Paladine und -Priester.", text_enUS = "Discussed the imbalance between Mu'sha (Moon) and An'she (Sun) with Aponi Brightmane, laying the foundation for tauren paladins and priests.", source = "warcraft.wiki.gg/wiki/Tahu_Sagewind"},
        {era = "Cata",     text_deDE = "Gründete offiziell den Orden der Seher und brachte den Tauren bei, die Macht von An'she zu wirken.", text_enUS = "Officially founded the order of the Seers, teaching the tauren to wield the power of An'she.", source = "warcraft.wiki.gg/wiki/Tahu_Sagewind"},
        {era = "Legion",   text_deDE = "Vertrat die Tauren in der Konklave im Netherlichttempel und kämpfte Seite an Seite mit den Priestern Azeroths.", text_enUS = "Represented the tauren in the Conclave at the Netherlight Temple, fighting alongside the priests of Azeroth.", source = "warcraft.wiki.gg/wiki/Tahu_Sagewind"},
        {era = "Midnight", text_deDE = "Reist nach Silbermond und Quel'Danas, um das Licht von An'she in die dunkelste Schlacht der Elfen zu tragen.", text_enUS = "Travels to Silvermoon and Quel'Danas to bring the light of An'she into the elves' darkest battle.", source = "warcraft.wiki.gg/wiki/Tahu_Sagewind"},
    },
}

IMAGOdb.npcs["aponi_lichtmaehne"] = {
    displayName_deDE = "Aponi Lichtmähne",
    displayName_enUS = "Aponi Brightmane",
    race_deDE = "Tauren",
    race_enUS = "Tauren",
    displayID = 239483,
    zones_deDE = {"Insel von Quel'Danas", "Parhelionplaza"},
    zones_enUS = {"Isle of Quel'Danas", "Parhelion Plaza"},
    ids = {
        239483, 238277, 240777, 243432, 246672, 247925
    },
    category = "CAT_LIGHT",
    lore_deDE = "Aponi Lichtmähne ist die Oberste Häuptling der Sonnenläufer, dem Orden der Tauren-Paladine. Als ehemalige Kriegerin wurde sie im Krieg gegen die Geißel schwer verwundet. In langen Gesprächen mit Tahu Weisenwind erkannte sie, dass ihr Volk das Gleichgewicht der Erdenmutter aus den Augen verloren hatte. Indem sie sich der Macht von An'she (der Sonne) zuwandte, wurde sie die allererste Sonnenläuferin. In Midnight steht sie Schulter an Schulter mit den Paladinen der Silbernen Hand auf der Parhelionplaza, um das Licht von An'she gegen die absolute Finsternis zu entfesseln.",
    lore_enUS = "Aponi Brightmane is the High Chieftain of the Sunwalkers, the order of tauren paladins. As a former warrior, she was severely wounded in the war against the Scourge. In long conversations with Tahu Sagewind, she realized her people had lost sight of the Earth Mother's balance. By turning to the power of An'she (the sun), she became the very first Sunwalker. In Midnight, she stands shoulder to shoulder with the paladins of the Silver Hand at Parhelion Plaza, unleashing the light of An'she against absolute darkness.",
    timeline = {
        {era = "WotLK",    text_deDE = "Wurde als Kriegerin in Nordend verwundet und legte mit Tahu den ideologischen Grundstein für die Sonnenmagie.", text_enUS = "Was wounded as a warrior in Northrend and laid the ideological foundation for sun magic with Tahu.", source = "warcraft.wiki.gg/wiki/Aponi_Brightmane"},
        {era = "Cata",     text_deDE = "Gründete offiziell die Sonnenläufer und wurde die erste Paladinin der Tauren.", text_enUS = "Officially founded the Sunwalkers and became the first tauren paladin.", source = "warcraft.wiki.gg/wiki/Aponi_Brightmane"},
        {era = "Legion",   text_deDE = "Schloss sich der reformierten Silbernen Hand im Sanktum des Lichts als hochrangiger Champion an.", text_enUS = "Joined the reformed Silver Hand in the Sanctum of Light as a high-ranking champion.", source = "warcraft.wiki.gg/wiki/Aponi_Brightmane"},
        {era = "Midnight", text_deDE = "Verteidigt Quel'Danas und die Parhelionplaza mit der geballten strahlenden Macht der Sonne.", text_enUS = "Defends Quel'Danas and Parhelion Plaza with the concentrated radiant power of the sun.", source = "warcraft.wiki.gg/wiki/Aponi_Brightmane"},
    },
}

IMAGOdb.npcs["kriegskaplanin_senn"] = {
    displayName_deDE = "Kriegskaplanin Senn",
    displayName_enUS = "War Chaplain Senn",
    race_deDE = "Lichtgeschmiedete Draenei",
    race_enUS = "Lightforged Draenei",
    displayID = 250589,
    zones_deDE = {"Die Leerenspitze", "Insel von Quel'Danas", "Leerensturm", "Parhelionplaza", "Silbermond"},
    zones_enUS = {"The Void Spire", "Isle of Quel'Danas", "Voidstorm", "Parhelion Plaza", "Silvermoon City"},
    ids = {
        250589, 249103, 240438, 246166, 248628, 246425, 247306, 243554, 
        244387, 246067, 249333, 247269, 246448
    },
    category = "CAT_LIGHT",
    lore_deDE = "Kriegskaplanin Senn ist eine lichtgeschmiedete Draenei und eine der loyalsten Offizierinnen von Hochexarch Turalyon. Nach dem Vierten Krieg unterstützte sie ihn im Arathihochland bei der unerbittlichen Jagd nach Sylvanas Windläufer. Dort musste sie widerwillig mit der Leerenelfe Celosel Nachtgeber kooperieren – eine Erfahrung, die bei der lichtgeschmiedeten Veteranin physischen Ekel vor der Leerenmagie auslöste. In Midnight schließt sie sich der Vorhut des Lichts an. Mit heiligem Zorn und tiefer Abscheu vor den Schatten stellt sie sich den Eindringlingen am Sonnenbrunnen und im Leerensturm entgegen.",
    lore_enUS = "War Chaplain Senn is a Lightforged draenei and one of High Exarch Turalyon's most loyal lieutenants. After the Fourth War, she aided him in the relentless hunt for Sylvanas Windrunner in the Arathi Highlands. There, she reluctantly had to cooperate with the void elf Celosel Nightgiver—an experience that triggered physical disgust for Void magic in the Lightforged veteran. In Midnight, she joins the Vanguard of Light. With holy wrath and a deep abhorrence for the shadows, she confronts the invaders at the Sunwell and in the Voidstorm.",
    timeline = {
        {era = "BfA",      text_deDE = "Jagte mit Turalyon im Arathihochland nach Sylvanas und zeigte offen ihren tiefen Ekel vor der Leerenmagie der Ren'dorei.", text_enUS = "Hunted Sylvanas with Turalyon in the Arathi Highlands and openly showed her deep disgust for the Void magic of the ren'dorei.", source = "warcraft.wiki.gg/wiki/War_Chaplain_Senn"},
        {era = "Midnight", text_deDE = "Dient in der Vorhut des Lichts und bekämpft die absolute Finsternis in den gefährlichsten Zonen von Quel'Thalas.", text_enUS = "Serves in the Vanguard of Light, fighting absolute darkness in the most dangerous zones of Quel'Thalas.", source = "warcraft.wiki.gg/wiki/War_Chaplain_Senn"},
    },
}

IMAGOdb.npcs["aethas_sunreaver"] = {
    displayName_deDE = "Erzmagier Aethas Sonnenhäscher",
    displayName_enUS = "Archmage Aethas Sunreaver",
    race_deDE = "Blutelf",
    race_enUS = "Blood Elf",
    displayID = 256212,
    zones_deDE = {"Immersangwald", "Silbermond"},
    zones_enUS = {"Eversong Woods", "Silvermoon City"},
    ids = {
        256212, 249450, 240285, 244698, 248844, 240259, 244586, 247450
    },
    category = "CAT_QUELTHALAS",
    lore_deDE = "Erzmagier Aethas Sonnenhäscher blickt auf eine turbulente politische Karriere zurück. Lange Zeit versuchte er als Anführer der blutelfischen Magier in den Kirin Tor eine Brücke zwischen Dalaran und Silbermond zu schlagen. Nach der tragischen Zerstörung Dalarans in Khaz Algar wandte er sich von der alten Ordnung der Magier ab. In Midnight ist er nach Quel'Thalas zurückgekehrt, um seine Heimat gegen die Leere zu verteidigen. Als am Kriegstisch von Silbermond das Bündnis mit dem Silbernen Bund debattiert wird, ist Aethas zunächst strikt dagegen. Erst als Vereesa Windläufer ihm die Asche gefallener Sonnenhäscher und uralte Relikte als Friedensangebot überreicht, lenkt er im Angesicht der drohenden Vernichtung ein.",
    lore_enUS = "Archmage Aethas Sunreaver looks back on a turbulent political career. For a long time, as the leader of the blood elven magi in the Kirin Tor, he tried to build a bridge between Dalaran and Silvermoon. After the tragic destruction of Dalaran in Khaz Algar, he turned his back on the old order of the magi. In Midnight, he has returned to Quel'Thalas to defend his homeland against the Void. When the alliance with the Silver Covenant is debated at the war table in Silvermoon, Aethas is initially strictly against it. Only when Vereesa Windrunner presents him with the ashes of fallen Sunreavers and ancient relics as an offering of peace does he relent in the face of impending annihilation.",
    timeline = {
        {era = "WotLK",    text_deDE = "Gründete die Sonnenhäscher in Dalaran und sicherte der Horde einen Zufluchtsort in der Magierstadt.", text_enUS = "Founded the Sunreavers in Dalaran, securing a sanctuary for the Horde within the magi city.", source = "warcraft.wiki.gg/wiki/Aethas_Sunreaver"},
        {era = "MoP",      text_deDE = "Wurde während der blutigen Säuberung von Dalaran durch Jaina Prachtmeer als Verräter inhaftiert und floh nach Silbermond.", text_enUS = "Was imprisoned as a traitor during the bloody Purge of Dalaran by Jaina Proudmoore and fled to Silvermoon.", source = "warcraft.wiki.gg/wiki/Aethas_Sunreaver"},
        {era = "TWW",      text_deDE = "Überlebte den Absturz Dalarans in Khaz Algar und schwor der arroganten, weltpolitischen Einmischung der Kirin Tor ab.", text_enUS = "Survived the crash of Dalaran in Khaz Algar and renounced the arrogant, global political meddling of the Kirin Tor.", source = "warcraft.wiki.gg/wiki/Aethas_Sunreaver"},
        {era = "Midnight", text_deDE = "Verteidigt Silbermond am Kriegstisch und überwindet seinen Hass auf den Silbernen Bund, um Quel'Thalas zu retten.", text_enUS = "Defends Silvermoon at the war table and overcomes his hatred of the Silver Covenant to save Quel'Thalas.", source = "warcraft.wiki.gg/wiki/Aethas_Sunreaver"},
    },
}

IMAGOdb.npcs["monte_gazlowe"] = {
    displayName_deDE = "Handelsprinz Monte Gazlowe",
    displayName_enUS = "Trade Prince Monte Gazlowe",
    race_deDE = "Goblin",
    race_enUS = "Goblin",
    displayID = 242593,
    zones_deDE = {"Die Höhle", "Harandar"},
    zones_enUS = {"The Den", "Harandar"},
    ids = {
        242593, 242693, 242934, 242881
    },
    category = "CAT_NEUTRAL",
    lore_deDE = "Monte Gazlowe ist einer der genialsten Ingenieure Azeroths und hat eine steile Karriere hinter sich. Einst der neutrale Chef von Ratchet und Erbauer von Orgrimmar, trat er nach dem Verrat von Jastor Gallywix dessen Nachfolge an. Heute ist er der Handelsprinz des Bilgewasserkartells und vertritt die Goblins im Rat der Horde. In The War Within bewies er wahre Führungsstärke, als er die Expedition tief hinab nach Lorenhall (Undermine) führte, um Gallywix' Schwarzblut-Syndikat zu zerschlagen und eine Revolution gegen die korrupten Kartelle anzuzetteln. In Midnight verlegt er seine brillante Ingenieurskunst an die Fronten von Harandar und der Höhle, um die Verteidigungslinien der vereinten Streitkräfte mit massiver goblinischer Feuerkraft auszustatten.",
    lore_enUS = "Monte Gazlowe is one of Azeroth's most brilliant engineers and has had a meteoric career. Once the neutral boss of Ratchet and builder of Orgrimmar, he succeeded Jastor Gallywix after the latter's betrayal. Today, he is the Trade Prince of the Bilgewater Cartel and represents the goblins on the Horde Council. In The War Within, he proved true leadership by leading the expedition deep into Undermine to dismantle Gallywix's Black Blood syndicate and instigating a revolution against the corrupt cartels. In Midnight, he brings his brilliant engineering to the fronts of Harandar and The Den to equip the defensive lines of the united forces with massive goblin firepower.",
    timeline = {
        {era = "WC3",      text_deDE = "Arbeitete als freier Auftragnehmer für Thrall und leitete als Chefingenieur den Bau der Hauptstadt Orgrimmar.", text_enUS = "Worked as a freelance contractor for Thrall and oversaw the construction of the capital city Orgrimmar as chief engineer.", source = "warcraft.wiki.gg/wiki/Monte_Gazlowe"},
        {era = "BfA",      text_deDE = "Übernahm nach Gallywix' Flucht die Führung des Bilgewasserkartells und integrierte die Goblins fest in den Rat der Horde.", text_enUS = "Took over leadership of the Bilgewater Cartel following Gallywix's flight, firmly integrating the goblins into the Horde Council.", source = "warcraft.wiki.gg/wiki/Monte_Gazlowe"},
        {era = "WoD",      text_deDE = "Leitete als Architekt den Aufbau der Horde-Garnison (Frostwall) auf dem alternativen Draenor.", text_enUS = "Served as the architect for the construction of the Horde garrison (Frostwall) on alternate Draenor.", source = "warcraft.wiki.gg/wiki/Monte_Gazlowe"},
        {era = "TWW",      text_deDE = "Führte die Truppen in Patch 11.1 nach Lorenhall, um die Ausbeutung durch Gallywix und Xal'atath zu stoppen.", text_enUS = "Led forces to Undermine in Patch 11.1 to stop the exploitation by Gallywix and Xal'atath.", source = "warcraft.wiki.gg/wiki/Monte_Gazlowe"},
        {era = "Midnight", text_deDE = "Errichtet in Harandar und der Höhle schwer bewaffnete technische Außenposten zur militärischen Unterstützung.", text_enUS = "Establishes heavily armed technical outposts in Harandar and The Den for military support.", source = "warcraft.wiki.gg/wiki/Monte_Gazlowe"},
    },
}

IMAGOdb.npcs["faerin_lothar"] = {
    displayName_deDE = "Faerin Lothar",
    displayName_enUS = "Faerin Lothar",
    race_deDE = "Mensch (Arathi)",
    race_enUS = "Human (Arathi)",
    displayID = 251870,
    zones_deDE = {"Insel von Quel'Danas", "Parhelionplaza", "Silbermond"},
    zones_enUS = {"Isle of Quel'Danas", "Parhelion Plaza", "Silvermoon City"},
    ids = {
        251870, 237211, 248316, 242609, 237371, 251945, 239472, 256004, 
        243989, 240887, 244037, 246412, 240021, 244032, 246130, 253144
    },
    category = "CAT_LIGHT",
    lore_deDE = "Faerin Lothar ist eine der charismatischsten Anführerinnen der Arathi-Expedition in Khaz Algar und die direkte Nachfahrin der legendären Blutlinie von Anduin Lothar. Als Kind überlebte sie nur knapp die Vernichtung der Arathi-Armada durch einen Leviathan in den tiefen Gewässern und verlor dabei einen Arm und ein Auge. Anstatt daran zu zerbrechen, nutzt sie eine massive Schild-Prothese und kämpft mit unerschütterlichem Glauben an die Heilige Flamme. In The War Within wurde sie zur wichtigsten moralischen Stütze für Anduin Wrynn. In Midnight kehrt das Erbe der Lothars an die Oberfläche zurück: Faerin bringt die feurige Entschlossenheit des Arathi-Imperiums nach Quel'Thalas, um das Licht gegen die absolute Dunkelheit zu verteidigen.",
    lore_enUS = "Faerin Lothar is one of the most charismatic leaders of the Arathi Expedition in Khaz Algar and the direct descendant of the legendary bloodline of Anduin Lothar. As a child, she barely survived the destruction of the Arathi armada by a leviathan in the deep waters, losing an arm and an eye in the process. Rather than breaking, she wields a massive shield prosthetic and fights with unwavering faith in the Sacred Flame. In The War Within, she became the most crucial moral support for Anduin Wrynn. In Midnight, the Lothar legacy returns to the surface: Faerin brings the fiery determination of the Arathi Empire to Quel'Thalas to defend the Light against absolute darkness.",
    timeline = {
        {era = "TWW",      text_deDE = "Wird in Heilsturz (Hallowfall) entdeckt. Führt den Widerstand gegen die Neruber von Azj-Kahet an und hilft Anduin Wrynn, sein schweres Trauma und seinen verlorenen Zugang zum Licht zu überwinden.", text_enUS = "Discovered in Hallowfall. Leads the resistance against the nerubians of Azj-Kahet and helps Anduin Wrynn overcome his severe trauma and lost connection to the Light.", source = "warcraft.wiki.gg/wiki/Faerin_Lothar"},
        {era = "Midnight", text_deDE = "Reist aus den Tiefen Khaz Algars an die Oberfläche, um die Verteidigung von Quel'Thalas, Silbermond und der Parhelionplaza als Champion des Lichts zu unterstützen.", text_enUS = "Travels from the depths of Khaz Algar to the surface to support the defense of Quel'Thalas, Silvermoon, and Parhelion Plaza as a champion of the Light.", source = "warcraft.wiki.gg/wiki/Faerin_Lothar"},
    },
}

IMAGOdb.npcs["generalin_bellamy"] = {
    displayName_deDE = "Generalin Amias Bellamy",
    displayName_enUS = "General Amias Bellamy",
    race_deDE = "Mensch (Arathi)",
    race_enUS = "Human (Arathi)",
    displayID = 250587,
    zones_deDE = {"Die Leerenspitze", "Insel von Quel'Danas", "Leerensturm", "Silbermond"},
    zones_enUS = {"The Voidspire", "Isle of Quel'Danas", "Voidstorm", "Silvermoon City"},
    ids = {
        250587, 240431, 246165, 248629, 244386, 247410, 249331, 247303, 
        249101, 247270, 246076, 246424, 246449, 241395
    },
    category = "CAT_LIGHT",
    lore_deDE = "Generalin Amias Bellamy ist die ranghöchste militärische Kommandantin der Arathi-Expedition. Als pragmatische und kampfgehärtete Taktikerin führte sie in Heilsturz (Hallowfall) den endlosen Krieg gegen die Neruber und die Kreaturen der Tiefe, immer geleitet vom Glauben an die Heilige Flamme. Anders als Faerin Lothar, die oft das Herz der Arathi repräsentiert, ist Bellamy der eiserne Schild und das gezogene Schwert ihres Volkes. In Midnight hat sie ihre Truppen aus dem Untergrund an die Oberfläche verlegt. Unter ihrem Kommando beschränkt sich die Armee der Arathi nicht auf die reine Verteidigung, sondern führt offensive Gegenschläge bis tief in den Leerensturm und die Leerenspitze aus.",
    lore_enUS = "General Amias Bellamy is the highest-ranking military commander of the Arathi Expedition. A pragmatic and battle-hardened tactician, she led the endless war against the nerubians and creatures of the deep in Hallowfall, always guided by her faith in the Sacred Flame. Unlike Faerin Lothar, who often represents the heart of the Arathi, Bellamy is the iron shield and drawn sword of her people. In Midnight, she has moved her troops from the underground to the surface. Under her command, the Arathi army does not limit itself to pure defense but launches offensive counterstrikes deep into the Voidstorm and the Void Spire.",
    timeline = {
        {era = "TWW",      text_deDE = "Kommandiert die Arathi-Expedition in Heilsturz und hält die Stellung gegen die unerbittlichen Angriffe aus Azj-Kahet.", text_enUS = "Commands the Arathi Expedition in Hallowfall, holding the line against the relentless attacks from Azj-Kahet.", source = "warcraft.wiki.gg/wiki/General_Amias_Bellamy"},
        {era = "Midnight", text_deDE = "Führt die militärische Offensive der Arathi an der Oberfläche und kommandiert Truppen von Silbermond bis in das Zentrum des Leerensturms.", text_enUS = "Leads the Arathi military offensive on the surface, commanding troops from Silvermoon to the center of the Voidstorm.", source = "warcraft.wiki.gg/wiki/General_Amias_Bellamy"},
    },
}

IMAGOdb.npcs["fiona"] = {
    displayName_deDE = "Fiona",
    displayName_enUS = "Fiona",
    race_deDE = "Worgen",
    race_enUS = "Worgen",
    displayID = 243406,
    zones_deDE = {"Insel von Quel'Danas"},
    zones_enUS = {"Isle of Quel'Danas"},
    ids = {
        243406, 246659
    },
    category = "CAT_NEUTRAL",
    lore_deDE = "Fiona ist eine Worgen-Abenteurerin, Heiligpriesterin und eine der treuesten Seelen Azeroths. Berühmt wurde sie durch ihre legendäre Karawane in den Östlichen Pestländern, mit der sie unzählige Abenteurer – allen voran ihre besten Freunde, die Paladine Gidwin Goldzopf und Tarenar Sonnenhieb – sicher durch Feindesland kutschierte. Sie ist das personifizierte Herzblut der Zivilisten und unabhängigen Helfer in Azeroth. In Midnight hat sie ihre Karawane auf die Insel von Quel'Danas gesteuert. Sie gehört zwar keinem militärischen Orden an, unterstützt die Verteidiger des Lichts jedoch unermüdlich mit ihrer Heilkunst, ihren Vorräten und ihrem Pragmatismus.",
    lore_enUS = "Fiona is a worgen adventurer, holy priest, and one of the most loyal souls in Azeroth. She became famous for her legendary caravan in the Eastern Plaguelands, with which she safely escorted countless adventurers—most notably her best friends, the paladins Gidwin Goldbraids and Tarenar Sunstrike—through enemy territory. She is the personified lifeblood of civilians and independent helpers in Azeroth. In Midnight, she has steered her caravan to the Isle of Quel'Danas. Although she belongs to no military order, she tirelessly supports the defenders of the Light with her healing arts, her supplies, and her pragmatism.",
    timeline = {
        {era = "Cata",     text_deDE = "Kutschierte mit ihrer berühmten Karawane durch die Östlichen Pestländer und unterstützte den Silbernen Kreuzzug.", text_enUS = "Drove her famous caravan through the Eastern Plaguelands and supported the Argent Crusade.", source = "warcraft.wiki.gg/wiki/Fiona"},
        {era = "WoD",      text_deDE = "Schloss sich der Allianz-Expedition auf Draenor an und diente als Heiligpriesterin und Kräuterkundige in der Garnison (Schattenmondtal).", text_enUS = "Joined the Alliance expedition on Draenor, serving as a holy priest and herbalist in the garrison (Shadowmoon Valley).", source = "warcraft.wiki.gg/wiki/Fiona"},
        {era = "DF",       text_deDE = "Reiste mit der Drachenschuppenexpedition ins Basislager der Küste des Erwachens, nachdem sie wieder mit Gidwin und Tarenar vereint war.", text_enUS = "Traveled with the Dragonscale Expedition to the Waking Shores basecamp after reuniting with Gidwin and Tarenar.", source = "warcraft.wiki.gg/wiki/Fiona"},
        {era = "Midnight", text_deDE = "Erscheint auf der Insel von Quel'Danas als zivile Unterstützerin und Heilerin für die vereinten Verteidiger gegen die Leere.", text_enUS = "Appears on the Isle of Quel'Danas as a civilian supporter and healer for the united defenders against the Void.", source = "warcraft.wiki.gg/wiki/Fiona"},
    },
}

IMAGOdb.npcs["valeera_sanguinar"] = {
    displayName_deDE = "Valeera Sanguinar",
    displayName_enUS = "Valeera Sanguinar",
    race_deDE = "Blutelfe",
    race_enUS = "Blood Elf",
    displayID = 242381,
    zones_deDE = {"Akademischer Aufruhr", "Atal'Aman", "Die Grollgrube", "Harandar", "Hort der Meister", "Immersangwald", "Leerensturm", "Parhelionplaza", "Silbermond", "Zul'Aman"},
    zones_enUS = {"Academic Uproar", "Atal'Aman", "The Grudge Pit", "Harandar", "Den of Masters", "Eversong Woods", "Voidstorm", "Parhelion Plaza", "Silvermoon City", "Zul'Aman"},
    ids = {
        242381, 248750, 248567, 250186, 248982, 248874, 242099, 249057,
        236540, 246979, 249083, 252788
    },
    category = "CAT_NEUTRAL",
    lore_deDE = "Valeera Sanguinar ist eine Meisterassassine, die Loyalität über Fraktionsgrenzen stellt. Als ehemalige Sklavin und Gladiatorin kämpfte sie in der Arena an der Seite von Varian Wrynn und Broll Bärenpranke, was eine tiefe Freundschaft zum Haus Wrynn schmiedete. Lange Zeit kämpfte sie gegen die Sucht nach Teufelsmagie, nachdem sie die Essenz des Schreckenslords Kathra'natir in sich aufnahm, um ihre Freunde zu retten. In Midnight kehrt sie in ihre alte Heimat Quel'Thalas zurück. Dort begleitet sie die Helden Azeroths als Delve-Companion in die gefährlichsten Gewölbe und Tiefen, um die Ausbreitung der Leere mit tödlicher Präzision zu stoppen.",
    lore_enUS = "Valeera Sanguinar is a master assassin who places loyalty above faction lines. As a former slave and gladiator, she fought in the arena alongside Varian Wrynn and Broll Bearmantle, forging a deep friendship with House Wrynn. For a long time, she battled an addiction to fel magic after absorbing the essence of the dreadlord Kathra'natir to save her friends. In Midnight, she returns to her old homeland of Quel'Thalas. There, she accompanies the heroes of Azeroth as a Delve Companion into the most dangerous vaults and depths to stop the spread of the Void with deadly precision.",
    timeline = {
        {era = "Pre-WotLK",text_deDE = "Kämpfte als Gladiatorin des Blutrings an der Seite von Lo'Gosh (Varian Wrynn) und Broll Bärenpranke.", text_enUS = "Fought as a gladiator of the Crimson Ring alongside Lo'Gosh (Varian Wrynn) and Broll Bearmantle.", source = "warcraft.wiki.gg/wiki/Valeera_Sanguinar"},
        {era = "WotLK",    text_deDE = "Begleitete Varian Wrynn bei der Schlacht um Unterstadt und unterstützte ihn als persönliche Leibwache.", text_enUS = "Accompanied Varian Wrynn during the Battle for the Undercity, supporting him as a personal bodyguard.", source = "warcraft.wiki.gg/wiki/Valeera_Sanguinar"},
        {era = "Legion",   text_deDE = "Schloss sich den Ungekrönten (Schurken-Orden) in der Halle der Schatten an und half, den Dämon Kathra'natir endgültig zu verbannen.", text_enUS = "Joined the Uncrowned (Rogue Order) in the Hall of Shadows and helped permanently banish the demon Kathra'natir.", source = "warcraft.wiki.gg/wiki/Valeera_Sanguinar"},
        {era = "BfA",      text_deDE = "Fungierte als Geheimkurierin zwischen Anduin Wrynn, Baine Bluthuf und Varok Saurfang, um Sylvanas' Herrschaft zu untergraben.", text_enUS = "Acted as a secret courier between Anduin Wrynn, Baine Bloodhoof, and Varok Saurfang to undermine Sylvanas' rule.", source = "warcraft.wiki.gg/wiki/Valeera_Sanguinar"},
        {era = "Midnight", text_deDE = "Durchstreift als Delve-Companion die gefährlichsten Instanzen und Tiefen von Quel'Thalas, um die Leereninvasion zu bekämpfen.", text_enUS = "Roams the most dangerous instances and depths of Quel'Thalas as a Delve Companion to combat the Void invasion.", source = "warcraft.wiki.gg/wiki/Valeera_Sanguinar"},
    },
}

IMAGOdb.npcs["arator"] = {
    displayName_deDE = "Arator der Retter",
    displayName_enUS = "Arator the Redeemer",
    race_deDE = "Halbelf",
    race_enUS = "Half-Elf",
    displayID = 236734,
    zones_deDE = {"Amirdrassil", "Arcantina", "Brennende Steppe", "Das Arathihochland", "Die Leerenspitze", "Harandar", "Hort der Meister", "Immersangwald", "Insel von Quel'Danas", "Leerensturm", "Östliche Pestländer", "Parhelionplaza", "Silbermond", "Zul'Aman"},
    zones_enUS = {"Amirdrassil", "Arcantina", "Burning Steppes", "Arathi Highlands", "The Void Spire", "Harandar", "Den of Masters", "Eversong Woods", "Isle of Quel'Danas", "Voidstorm", "Eastern Plaguelands", "Parhelion Plaza", "Silvermoon City", "Zul'Aman"},
    ids = {
        235393, 235469, 235479, 235485, 235503, 235523, 235533, 235537, 
        235602, 235608, 235714, 235719, 235721, 235724, 235776, 235792, 
        236100, 236132, 236391, 236567, 236568, 236611, 236686, 236716, 
        236734, 236736, 236737, 236944, 236959, 236964, 237218, 237273, 
        237288, 237502, 237503, 237508, 237510, 239575, 239827, 239979, 
        240126, 240231, 240267, 240284, 240296, 240377, 240394, 240454, 
        240694, 241109, 241148, 241205, 241255, 241390, 241428, 241470, 
        242433, 242494, 242532, 243091, 243323, 243824, 243903, 243984, 
        244001, 244297, 244551, 244557, 244644, 244982, 245061, 245419, 
        245420, 245421, 245422, 246135, 246789, 248348, 250434, 251335, 
        251871, 251943, 252283, 253055, 253603, 254884, 259261
    },
    category = "CAT_LIGHT",
    lore_deDE = 
    [[Als Alleria Windläufer und Turalyon nach Draenor aufbrachen, um Azeroth zu retten, ließen sie ihr neugeborenes Kind zurück. Arator wuchs bei Verwandten auf und kannte seine Eltern nur aus Legenden. Als Sohn zweier der berühmtesten Kriegshelden der Allianz hatte er stets damit zu kämpfen, aus ihrem Schatten herauszutreten und seine eigene Bestimmung zu finden. 
    
In dem Entschluss seinem Vater nachzueifern, wurde er Paladin der Allianz und stieg in den Rängen auf, indem er wahre Stärke und Glauben an das Licht bewies. Nun, da er wieder mit seinen Eltern vereint ist, kämpft Arator darum, seine Familie zusammenzuhalten, während sie in verschiedene Richtungen gezogen werden.]],
    lore_enUS = 
    [[When his parents Alleria Windrunner and Turalyon left for Draenor to save Azeroth, they left their newborn behind. Raised by family, Arator only knew his parents through legend. As the child of two of the Alliance's most famous war heroes, Arator has always struggled to step out of their shadows and find his own destiny. 
    
Choosing to emulate his father, he became a paladin for the Alliance and rose up in the ranks by showing true strength and faith in the Light. Now reunited with his parents, Arator struggles to hold his family together as they are pulled in different directions.]],
    timeline = {
        {
            era = "WC2", 
            text_deDE = "Wurde während des Zweiten Krieges geboren und auf Azeroth zurückgelassen, um von seiner Tante Vereesa Windläufer aufgezogen zu werden.", 
            text_enUS = "Born during the Second War and left behind on Azeroth to be raised by his aunt, Vereesa Windrunner.", 
            source = "Cadash"
        },
        {
            era = "WC3", 
            text_deDE = "Nachdem er den Dritten Krieg überlebt hatte, brachte Vereesa ihn nach Silbermond, wo er von Lor'themar und Liadrin in den Lehren des Lichts unterwiesen wurde.", 
            text_enUS = "After surviving the Third War, Vereesa brought him to Silvermoon where he was trained by Lor'themar and Liadrin in the ways of the Light.", 
            source = "Cadash"
        },
        {
            era = "TBC", 
            text_deDE = "Schloss sich der Expedition in die Scherbenwelt an, um nach seinen Eltern zu suchen. Diente unter dem Banner der Allianz als Paladin. Er erhielt den Beinamen \"Arator der Retter\".", 
            text_enUS = "Joined the expedition to Outland to look for his parents. Served under the banner Alliance as a paladin. He was dubbed \"Arator the Redeemer\".", 
            source = "Cadash"
        },
        {
            era = "Legion", 
            text_deDE = "Trat dem Orden der Silbernen Hand bei und verteidigte den Netherlichttempel. Kämpfte auf Argus gegen die Brennende Legion und war endlich wieder mit seinen Eltern vereint.", 
            text_enUS = "Joined the Order of the Silver Hand and defended the Netherlight Temple. Fought the Burning Legion on Argus and was finally reunited with his parents.", 
            source = "Cadash"
        },
        {
            era = "TWW", 
            text_deDE = "Versuchte Alleria und Sylvanas Windläufer für die bevorstehende Verteidigung von Silbermond zu mobilisieren.", 
            text_enUS = "Tried to rally Alleria and Sylvanas Windrunner to the imminent defense of Silvermoon.", 
            source = "Cadash"
        },
        {
            era = "Midnight", 
            text_deDE = "Nachdem er vom Sonnenbrunnen gerufen wurde, kämpfte Arator an vorderster Front gegen die Leere. Er organisierte die Wiedervereinigung der Elfenmächte Azeroths, um einen gemeinsamen Feind zu bekämpfen.", 
            text_enUS = "After being summoned by the Sunwell, Arator fought on the front lines against the Void. He organized the reunification of the elven nations of Azeroth to fight a common foe.", 
            source = "Cadash"
        },
    },
}

IMAGOdb.npcs["freya"] = {
    displayName_deDE = "Freya",
    displayName_enUS = "Freya",
    race_deDE = "Titanenwächterin",
    race_enUS = "Titan Keeper",
    displayID = 239608,
    zones_deDE = {"Harandar"},
    zones_enUS = {"Harandar"},
    ids = {
        239608,
    },
    category = "CAT_NEUTRAL",
    lore_deDE = "Freya ist eine der mächtigsten Titanenwächterinnen Azeroths, erschaffen vom Pantheon und ermächtigt von Eonar, um das Leben auf dem Planeten zu formen und zu schützen. Sie war es, die den Smaragdgrünen Traum kanalisierte und die ersten Samen pflanzte, aus denen die großen Weltenbäume hervorgingen. Nachdem sie in Ulduar vom Alten Gott Yogg-Saron korrumpiert und durch Abenteurer befreit wurde, zog sie sich weitgehend zurück. In Midnight greift sie jedoch direkt in das Geschehen ein: Harandar beherbergt ein uraltes, biolumineszierendes Ökosystem und die empfindlichen Wurzeln, die das Überleben des Lebens selbst sichern. Freya tritt aus dem Schatten der Geschichte, um diesen unberührten Dschungel als unnachgiebige Wächterin gegen den alles verschlingenden Hunger der Leere zu verteidigen.",
    lore_enUS = "Freya is one of the most powerful Titan Keepers of Azeroth, created by the Pantheon and empowered by Eonar to shape and protect life on the planet. It was she who channeled the Emerald Dream and planted the first seeds from which the great World Trees grew. After being corrupted by the Old God Yogg-Saron in Ulduar and freed by adventurers, she largely withdrew. In Midnight, however, she intervenes directly: Harandar harbors an ancient, bioluminescent ecosystem and the delicate roots that ensure the survival of life itself. Freya steps out of the shadows of history to defend this pristine jungle as an uncompromising guardian against the all-consuming hunger of the Void.",
    timeline = {
        {era = "Pre-History", text_deDE = "Formte den Smaragdgrünen Traum und erschuf die ersten Refugien des Lebens (wie den Un'Goro-Krater, das Sholazarbecken und das Tal der Ewigen Blüten).", text_enUS = "Shaped the Emerald Dream and created the first refuges of life (such as Un'Goro Crater, Sholazar Basin, and the Vale of Eternal Blossoms).", source = "warcraft.wiki.gg/wiki/Freya"},
        {era = "WotLK",       text_deDE = "Wurde von Yogg-Saron in Ulduar wahnsinnig gemacht, bis Azeroths Helden sie besiegten und von der Verderbnis reinigten.", text_enUS = "Was driven to madness by Yogg-Saron in Ulduar until Azeroth's heroes defeated her and cleansed her of the corruption.", source = "warcraft.wiki.gg/wiki/Freya"},
        {era = "Midnight",    text_deDE = "Wacht persönlich über den unberührten Dschungel von Harandar, um die Ausbreitung der Leere in das empfindliche Ökosystem zu verhindern.", text_enUS = "Personally watches over the pristine jungle of Harandar to prevent the spread of the Void into the fragile ecosystem.", source = "warcraft.wiki.gg/wiki/Freya"},
    },
}

IMAGOdb.npcs["salandria"] = {
    displayName_deDE = "Salandria",
    displayName_enUS = "Salandria",
    race_deDE = "Blutelfe",
    race_enUS = "Blood Elf",
    displayID = 242802,
    zones_deDE = {"Immersangwald", "Insel von Quel'Danas", "Silbermond"},
    zones_enUS = {"Eversong Woods", "Isle of Quel'Danas", "Silvermoon City"},
    ids = {
        242802, 242893, 242610, 248322, 242890, 242897, 254406, 242467
    },
    category = "CAT_QUELTHALAS",
    lore_deDE = "Salandria verbrachte ihre frühe Kindheit als Kriegswaise in Shattrath. Schon früh zeigte sich ihre starke Verbindung zum Heiligen Licht und ein enormer Ehrgeiz. Sie wurde schließlich von Lady Liadrin, der Matriarchin der Blutritter, adoptiert und in Silbermond zu einer mächtigen Paladinin ausgebildet. Schon in den Höhlen der Zeit ahnte der bronzene Drachenschwarm, dass sie eines Tages eine gewaltige Rolle im Schicksal Azeroths spielen würde. In Midnight steht die einstige Waise als erwachsene, kampfbereite Blutritterin an vorderster Front. Sie verteidigt Quel'Thalas, ihre Mentorin Liadrin und das Erbe ihres Volkes mit eiserner Entschlossenheit gegen die eindringende Leere.",
    lore_enUS = "Salandria spent her early childhood as a war orphan in Shattrath. Even then, she showed a strong connection to the Holy Light and immense ambition. She was eventually adopted by Lady Liadrin, matriarch of the Blood Knights, and trained as a powerful paladin in Silvermoon. Even in the Caverns of Time, the bronze dragonflight sensed that she would one day play a massive role in the fate of Azeroth. In Midnight, the former orphan stands on the front lines as an adult, battle-ready Blood Knight. She defends Quel'Thalas, her mentor Liadrin, and her people's legacy with iron determination against the encroaching Void.",
    timeline = {
        {era = "TBC",      text_deDE = "Wuchs als Waise in Shattrath auf und wurde während der Kinderwoche von Horde-Abenteurern betreut. Die Wachen der Höhlen der Zeit versuchten damals, sie wegen unheilvoller zukünftiger Taten anzugreifen.", text_enUS = "Grew up as an orphan in Shattrath and was cared for by Horde adventurers during Children's Week. The guards of the Caverns of Time attempted to attack her then due to ominous future deeds.", source = "warcraft.wiki.gg/wiki/Salandria"},
        {era = "WotLK",    text_deDE = "Hinterließ eine Kupfermünze im Brunnen von Dalaran mit dem Wunsch: 'Eines Tages werde ich mächtiger sein als all diese Magier!'", text_enUS = "Left a copper coin in the Dalaran fountain with the wish: 'Someday I'll be more powerful than all these mages!'", source = "warcraft.wiki.gg/wiki/Salandria"},
        {era = "SL",       text_deDE = "Trat in Patch 9.2.5 erstmals als erwachsene Blutritterin in Erscheinung und half den Blutelfen bei der Verteidigung von Tranquillien gegen den San'layn Vorath.", text_enUS = "Emerged for the first time as an adult Blood Knight in Patch 9.2.5, helping the blood elves defend Tranquillien against the San'layn Vorath.", source = "warcraft.wiki.gg/wiki/Salandria"},
        {era = "Midnight", text_deDE = "Verteidigt Silbermond, den Immersangwald und Quel'Danas als kampferprobte Blutritterin der Koalition.", text_enUS = "Defends Silvermoon, Eversong Woods, and Quel'Danas as a battle-hardened Blood Knight of the coalition.", source = "warcraft.wiki.gg/wiki/Salandria"},
    },
}

IMAGOdb.npcs["l_ura"] = {
    displayName_deDE = "L'ura",
    displayName_enUS = "L'ura",
    race_deDE = "Leeren-Naaru",
    race_enUS = "Void Naaru",
    displayID = 240391,
    zones_deDE = {"Insel von Quel'Danas"},
    zones_enUS = {"Isle of Quel'Danas"},
    ids = {
        240391, 248195,
    },
    category = "CAT_VOID",
    lore_deDE = "L'ura ist das tragische Herzstück der Leeren-Invasion in Quel'Thalas. Einst ein Wesen des Lichts, das die Flucht der Draenei von Argus deckte, fiel sie nach Äonen der Gefangenschaft in den Leerenstatus. Nachdem Alleria Windläufer ihre Essenz im Sitz des Triumvirats absorbiert hatte, diente L'ura jahrelang als Quelle von Allerias Leerenmacht. In Midnight erreicht ihr Schicksal einen schrecklichen Höhepunkt: Xal'atath stach Alleria am Leerenturm in den Rücken und riss L'uras Essenz gewaltsam aus ihr heraus. Mit dieser Macht korrumpierte die Vorbotin den Sonnenbrunnen zum 'Darkwell'. Als finale Begegnung beim Marsch auf Quel'Danas muss L'ura endgültig bezwungen werden, um die vollständige Transformation des Brunnens in eine Quelle der totalen Finsternis zu verhindern.",
    lore_enUS = "L'ura is the tragic centerpiece of the Void invasion in Quel'Thalas. Once a being of Light who covered the draenei's flight from Argus, she fell into a Void state after eons of imprisonment. After Alleria Windrunner absorbed her essence in the Seat of the Triumvirate, L'ura served as the source of Alleria's Void power for years. In Midnight, her fate reaches a horrific climax: Xal'atath stabbed Alleria in the back at the Voidspire and forcibly tore L'ura's essence from her. With this power, the Harbinger corrupted the Sunwell into the 'Darkwell.' Serving as the final encounter during the March on Quel'Danas, L'ura must be defeated once and for all to prevent the total transformation of the well into a font of absolute darkness.",
    timeline = {
        {era = "Pre-History", text_deDE = "Blieb bei der Flucht von Argus zurück, um die Legion aufzuhalten, und wurde auf Befehl Kil'jaedens im Sitz des Triumvirats eingesperrt.", text_enUS = "Stayed behind during the flight from Argus to hold back the Legion and was imprisoned in the Seat of the Triumvirate on Kil'jaeden's orders.", source = "warcraft.wiki.gg/wiki/L'ura"},
        {era = "Legion",       text_deDE = "Wurde von Alleria Windläufer und Abenteurern besiegt, wobei Alleria ihre Essenz vollständig in sich aufnahm.", text_enUS = "Was defeated by Alleria Windrunner and adventurers, with Alleria fully siphoning her essence.", source = "warcraft.wiki.gg/wiki/L'ura"},
        {era = "Midnight",    text_deDE = "Wurde im Leerensturm von Alleria manifestiert, um den Naaru T'era zu besiegen. Später von Xal'atath am Leerenturm aus Alleria gerissen, um den Sonnenbrunnen in den 'Darkwell' zu verwandeln.", text_enUS = "Manifested by Alleria in the Voidstorm to defeat the naaru T'era. Later torn from Alleria by Xal'atath at the Voidspire to transform the Sunwell into the 'Darkwell'.", source = "warcraft.wiki.gg/wiki/L'ura"},
        {era = "Midnight",    text_deDE = "Dient als Endboss beim 'Marsch auf Quel'Danas', um die Rettung des Sonnenbrunnens zu verhindern.", text_enUS = "Serves as the final encounter in the 'March on Quel'Danas' to prevent the salvation of the Sunwell.", source = "warcraft.wiki.gg/wiki/L'ura"},
    },
}

IMAGOdb.npcs["nolaki"] = {
    displayName_deDE = "Nolaki",
    displayName_enUS = "Nolaki",
    race_deDE = "Zandalari-Troll",
    race_enUS = "Zandalari Troll",
    displayID = 242607,
    zones_deDE = {"Insel von Quel'Danas"},
    zones_enUS = {"Isle of Quel'Danas"},
    ids = {
        242607, 248317
    },
    category = "CAT_LIGHT",
    lore_deDE = "Nolaki ist eine Prälatin der Zandalari und das amtierende 'Vorbild der Aufopferung' in der neugegründeten Wache von Tyr. Ihre Entschlossenheit formte sich in der Schlacht von Dazar'alor: Damals blieb sie zurück, weil sie sich für zu unerfahren hielt, während ihre Mentorin Ra'wani Kanae im Kampf gegen die Allianz fiel. Von Schuldgefühlen geplagt, schwor Nolaki, das Licht bis zu ihrem letzten Atemzug zu nutzen, um Leben zu retten. Dies führte sie auf die Dracheninseln, wo sie von Travard für die Wache von Tyr rekrutiert wurde. In Midnight stellt sie sich ihrer ultimativen Prüfung: Sie reist auf die Insel von Quel'Danas, um dort an vorderster Front jede erdenkliche Aufopferung zu erbringen, damit der Sonnenbrunnen nicht der Leere anheimfällt.",
    lore_enUS = "Nolaki is a Zandalari Prelate and the current 'Exemplar of Sacrifice' in the newly reformed Tyr's Guard. Her resolve was forged during the Battle of Dazar'alor: at the time, she stayed behind, feeling she was too inexperienced, while her mentor Ra'wani Kanae fell in battle against the Alliance. Plagued by guilt, Nolaki swore to use the Light until her dying breath to save lives. This led her to the Dragon Isles, where she was recruited by Travard into Tyr's Guard. In Midnight, she faces her ultimate test: traveling to the Isle of Quel'Danas to stand on the front lines and make every possible sacrifice to prevent the Sunwell from falling to the Void.",
    timeline = {
        {era = "BfA",      text_deDE = "Blieb während der Schlacht von Dazar'alor zurück und verlor ihre geliebte Mentorin Ra'wani Kanae, was ihren unerschütterlichen Pfad als Paladinin prägte.", text_enUS = "Stayed behind during the Battle of Dazar'alor and lost her beloved mentor Ra'wani Kanae, which shaped her unwavering path as a paladin.", source = "warcraft.wiki.gg/wiki/Nolaki"},
        {era = "DF",       text_deDE = "Reiste auf die Dracheninseln, trat der Wache von Tyr bei und übernahm stolz den Titel als Vorbild der Aufopferung.", text_enUS = "Traveled to the Dragon Isles, joined Tyr's Guard, and proudly accepted the title of Exemplar of Sacrifice.", source = "warcraft.wiki.gg/wiki/Nolaki"},
        {era = "Midnight", text_deDE = "Kämpft als externe Unterstützung der Licht-Orden auf der Insel von Quel'Danas gegen die heranrückende Leereninvasion.", text_enUS = "Fights as external support of the Light orders on the Isle of Quel'Danas against the advancing Void invasion.", source = "warcraft.wiki.gg/wiki/Nolaki"},
    },
}

IMAGOdb.npcs["valunei"] = {
    displayName_deDE = "Valunei",
    displayName_enUS = "Valunei",
    race_deDE = "Lichtgeschmiedete Draenei",
    race_enUS = "Lightforged Draenei",
    displayID = 248326,
    zones_deDE = {"Insel von Quel'Danas"},
    zones_enUS = {"Isle of Quel'Danas"},
    ids = {
        248326, 242606
    },
    category = "CAT_LIGHT",
    lore_deDE = "Valunei ist eine lichtgeschmiedete Draenei und das amtierende 'Vorbild des Mitgefühls' in der neugegründeten Wache von Tyr. Auf Argus erlernte sie die Wege des Lichts von ihrer Mentorin Verteidigerin Iriska und verbrachte unzählige Jahre damit, die Schrecken der Brennenden Legion zu bekämpfen. Sie verabscheut unnötiges Leid zutiefst und hat es sich zur Lebensaufgabe gemacht, Unschuldige zu heilen und zu beschützen. Nach ihrer Ankunft auf Azeroth wurde sie auf den Dracheninseln von Travard für die Wache von Tyr rekrutiert. In Midnight führt ihr unerschütterlicher Pfad des Mitgefühls sie auf die Insel von Quel'Danas. Dort setzt sie ihre bemerkenswerten Heilkräfte an vorderster Front ein, um das Leben der Verteidiger zu bewahren und den Sonnenbrunnen vor der Leere zu schützen.",
    lore_enUS = "Valunei is a Lightforged draenei and the current 'Exemplar of Compassion' in the newly reformed Tyr's Guard. On Argus, she learned the ways of the Light from her mentor Vindicator Iriska and spent countless years fighting the horrors of the Burning Legion. She deeply despises unnecessary suffering and has made it her life's mission to heal and protect the innocent. After arriving on Azeroth, she was recruited by Travard into Tyr's Guard on the Dragon Isles. In Midnight, her unwavering path of compassion leads her to the Isle of Quel'Danas. There, she uses her remarkable healing powers on the front lines to preserve the lives of the defenders and protect the Sunwell from the Void.",
    timeline = {
        {era = "Legion",   text_deDE = "Kämpfte als Teil der Armee des Lichts auf Argus gegen die Brennende Legion und erlernte die Lehren der Paladine.", text_enUS = "Fought as part of the Army of the Light on Argus against the Burning Legion and learned the teachings of the paladins.", source = "warcraft.wiki.gg/wiki/Valunei"},
        {era = "DF",       text_deDE = "Wurde auf den Dracheninseln in die Wache von Tyr aufgenommen und nahm den Titel 'Vorbild des Mitgefühls' an.", text_enUS = "Was inducted into Tyr's Guard on the Dragon Isles and accepted the title 'Exemplar of Compassion'.", source = "warcraft.wiki.gg/wiki/Valunei"},
        {era = "Midnight", text_deDE = "Reist auf die Insel von Quel'Danas, um ihre Heilkunst im erbitterten Krieg gegen die Leereninvasion einzusetzen.", text_enUS = "Travels to the Isle of Quel'Danas to use her healing arts in the bitter war against the Void invasion.", source = "warcraft.wiki.gg/wiki/Valunei"},
    },
}

IMAGOdb.npcs["mariella_ward"] = {
    displayName_deDE = "Mariella Ward",
    displayName_enUS = "Mariella Ward",
    race_deDE = "Mensch",
    race_enUS = "Human",
    displayID = 248325,
    zones_deDE = {"Insel von Quel'Danas", "Parhelionplaza"},
    zones_enUS = {"Isle of Quel'Danas", "Parhelion Plaza"},
    ids = {
        248325, 239504, 242615, 245539
    },
    category = "CAT_LIGHT",
    lore_deDE = "Mariella Ward ist eine ehemalige Priesterin der fanatischen Scharlachroten Offensive. Als sie die verdrehten und hasserfüllten Lehren ihres Ordens zu hinterfragen begann, wurde sie zur Ketzerin erklärt und sollte in der Drachenöde hingerichtet werden. Sie wurde im letzten Moment durch den Anführer der Priesterschaft gerettet und schwor daraufhin dem Konklave im Netherlichttempel ihre unerschütterliche Treue. Mariella kennt den Unterschied zwischen blindem Fanatismus und wahrer Hingabe an das Licht wie kaum eine Zweite. In Midnight reist sie als Vertreterin des Konklaves nach Quel'Thalas, um den Sonnenbrunnen an der Seite anderer Lichtträger vor der ultimativen Dunkelheit zu bewahren.",
    lore_enUS = "Mariella Ward is a former priestess of the fanatical Scarlet Onslaught. When she began to question the twisted and hateful teachings of her order, she was declared a heretic and sentenced to execution in Dragonblight. Rescued at the last moment by the leader of the priesthood, she pledged her unwavering loyalty to the Conclave at the Netherlight Temple. Mariella knows the difference between blind fanaticism and true devotion to the Light like few others. In Midnight, she travels to Quel'Thalas as a representative of the Conclave to protect the Sunwell from ultimate darkness alongside other Light wielders.",
    timeline = {
        {era = "Legion",   text_deDE = "Wurde vor der Hinrichtung durch die Scharlachrote Offensive gerettet und schloss sich als Champion dem Konklave der Priester an.", text_enUS = "Was rescued from execution by the Scarlet Onslaught and joined the Conclave of Priests as a champion.", source = "Quest: Champion: Mariella Ward"},
        {era = "Midnight", text_deDE = "Reist zur Parhelionplaza und zur Insel von Quel'Danas, um mit den anderen Lichtträgern den Sonnenbrunnen zu verteidigen.", text_enUS = "Travels to Parhelion Plaza and the Isle of Quel'Danas to defend the Sunwell alongside other Light wielders.", source = "warcraft.wiki.gg/wiki/Mariella_Ward"},
    },
}

IMAGOdb.npcs["hadwin"] = {
    displayName_deDE = "Hadwin",
    displayName_enUS = "Hadwin",
    race_deDE = "Mensch (Kul Tiraner)",
    race_enUS = "Human (Kul Tiran)",
    displayID = 237121,
    zones_deDE = {"Insel von Quel'Danas", "Parhelionplaza"},
    zones_enUS = {"Isle of Quel'Danas", "Parhelion Plaza"},
    ids = {
        237121, 248403, 242360
    },
    category = "CAT_LIGHT",
    lore_deDE = "Hadwin ist ein stämmiger Kul Tiraner und das amtierende 'Vorbild der Gerechtigkeit' in der neugegründeten Wache von Tyr. Ursprünglich verehrte er die Gezeitenmutter und schloss sich dem Glutorden in Drustvar als Inquisitor an, um Lady Kronsteig im Kampf gegen die Hexenzirkel zu unterstützen. Zu seiner eigenen Überraschung entwickelte er dabei eine unerklärliche, aber tiefe Verbindung zum Heiligen Licht. Er ließ sich bei der Silbernen Hand zum Paladin ausbilden, verließ sie jedoch bald wieder, um seinem eigenen pragmatischen Kodex zu folgen. Auf den Dracheninseln fand er schließlich in der Wache von Tyr seine wahre Bestimmung. In Midnight steht Hadwin mit seinem massiven Schild an vorderster Front auf der Parhelionplaza, um dafür zu sorgen, dass dem unbarmherzigen Hunger der Leere mit eiserner Gerechtigkeit begegnet wird.",
    lore_enUS = "Hadwin is a burly Kul Tiran and the current 'Exemplar of Justice' in the newly reformed Tyr's Guard. Originally a worshiper of the Tidemother, he joined the Order of Embers in Drustvar as an Inquisitor to assist Lady Waycrest in fighting the coven witches. To his own surprise, he developed an inexplicable yet profound connection to the Holy Light in the process. He trained as a paladin with the Silver Hand but soon left to follow his own pragmatic code. On the Dragon Isles, he finally found his true calling within Tyr's Guard. In Midnight, Hadwin stands on the front lines at Parhelion Plaza with his massive shield, ensuring that the merciless hunger of the Void is met with iron justice.",
    timeline = {
        {era = "BfA",      text_deDE = "Kämpfte als Inquisitor für den Glutorden in Drustvar gegen die Hexen, entdeckte dabei das Licht und wurde später Paladin der Silbernen Hand.", text_enUS = "Fought as an Inquisitor for the Order of Embers in Drustvar against witches, discovering the Light and later becoming a paladin of the Silver Hand.", source = "Quest: Ein Vorbild der Gerechtigkeit: Hadwin"},
        {era = "DF",       text_deDE = "Reiste auf die Dracheninseln, um Unrecht zu bekämpfen, und wurde von Travard als Vorbild der Gerechtigkeit in die Wache von Tyr aufgenommen.", text_enUS = "Traveled to the Dragon Isles to right wrongs and was inducted into Tyr's Guard by Travard as the Exemplar of Justice.", source = "Quest: Für Tyr!"},
        {era = "Midnight", text_deDE = "Kämpft als Vorhut der Wache von Tyr auf der Parhelionplaza und Quel'Danas gegen die Mächte der Leere.", text_enUS = "Fights as the vanguard of Tyr's Guard at Parhelion Plaza and Quel'Danas against the forces of the Void.", source = "warcraft.wiki.gg/wiki/Hadwin"},
    },
}

IMAGOdb.npcs["talthis"] = {
    displayName_deDE = "Talthis",
    displayName_enUS = "Talthis",
    race_deDE = "Blutelf",
    race_enUS = "Blood Elf",
    displayID = 248402,
    zones_deDE = {"Insel von Quel'Danas"},
    zones_enUS = {"Isle of Quel'Danas"},
    ids = {
        248402, 242359
    },
    category = "CAT_LIGHT",
    lore_deDE = "Talthis ist ein Blutelfen-Paladin und das amtierende 'Vorbild der Ordnung' in der neugegründeten Wache von Tyr. Als Kind musste er mitansehen, wie seine Heimat Silbermond durch den Angriff der Geißel an das absolute Chaos fiel. Diese traumatische Erfahrung sowie das Überleben zahlloser globaler Katastrophen formten in ihm den unerschütterlichen Wunsch nach Struktur, Sicherheit und Ordnung. Als Travard ihn während eines Angriffs der Primalisten auf den Dracheninseln entdeckte, zögerte Talthis nicht lange und schloss sich der Wache von Tyr an. In Midnight kehrt der Sohn von Quel'Thalas in seine Heimat zurück – jedoch nicht in den Reihen der Blutritter, sondern als Teil der elitären Eingreiftruppe des Lichts, um dem ultimativen Chaos der Leere auf der Insel von Quel'Danas Einhalt zu gebieten.",
    lore_enUS = "Talthis is a blood elf paladin and the current 'Exemplar of Order' in the newly reformed Tyr's Guard. As a child, he was forced to watch his homeland of Silvermoon fall to the absolute chaos of the Scourge invasion. This traumatic experience, along with surviving countless global catastrophes, forged within him an unwavering desire for structure, security, and order. When Travard discovered him during a Primalist assault on the Dragon Isles, Talthis did not hesitate to join Tyr's Guard. In Midnight, the son of Quel'Thalas returns to his homeland—not within the ranks of the Blood Knights, but as part of the Light's elite strike force to halt the ultimate chaos of the Void on the Isle of Quel'Danas.",
    timeline = {
        {era = "Warcraft 3", text_deDE = "Erlebte als Kind den verheerenden Fall von Silbermond durch die Geißel, was sein lebenslanges Streben nach Ordnung prägte.", text_enUS = "Witnessed the devastating fall of Silvermoon to the Scourge as a child, which shaped his lifelong pursuit of order.", source = "Quest: Ein Vorbild der Ordnung: Talthis"},
        {era = "DF",       text_deDE = "Kämpfte beim Frostblitzangriff gegen die Primalisten auf den Dracheninseln und wurde von Travard als Vorbild der Ordnung rekrutiert.", text_enUS = "Fought against the Primalists during the Flashfrost Assault on the Dragon Isles and was recruited by Travard as the Exemplar of Order.", source = "Quest: Ein Vorbild der Ordnung: Talthis"},
        {era = "Midnight", text_deDE = "Kehrt in seine Heimat zurück, um als Teil der Wache von Tyr das Chaos der Leereninvasion auf der Insel von Quel'Danas aufzuhalten.", text_enUS = "Returns to his homeland to stop the chaos of the Void invasion on the Isle of Quel'Danas as part of Tyr's Guard.", source = "warcraft.wiki.gg/wiki/Talthis"},
    },
}

IMAGOdb.npcs["vindicator_boros"] = {
    displayName_deDE = "Verteidiger Boros",
    displayName_enUS = "Vindicator Boros",
    race_deDE = "Draenei",
    race_enUS = "Draenei",
    displayID = 248406,
    zones_deDE = {"Insel von Quel'Danas", "Parhelionplaza"},
    zones_enUS = {"Isle of Quel'Danas", "Parhelion Plaza"},
    ids = {
        248406, 239509, 240640, 241713, 243218
    },
    category = "CAT_LIGHT",
    lore_deDE = "Verteidiger Boros ist ein unbeugsamer Veteran der Hand von Argus und ein hochrangiger Champion der Silbernen Hand. In der Zeit nach dem Absturz der Exodar auf Azeroth führte er auf der Blutmythosinsel den erbitterten Kampf der Draenei gegen die Sabotageakte der Blutelfen an. Diese ehemals tiefe Feindschaft macht seine Präsenz in Midnight umso bemerkenswerter: Im Angesicht der totalen Auslöschung durch die Leere lässt Boros den alten Groll ruhen. Mit seinem gigantischen Hammer und der reinen Macht des Lichts steht er heute auf der Parhelionplaza Schulter an Schulter mit genau jenen Elfen, die er einst bekämpfte, um den Sonnenbrunnen zu schützen.",
    lore_enUS = "Vindicator Boros is an unyielding veteran of the Hand of Argus and a high-ranking champion of the Silver Hand. Following the crash of the Exodar on Azeroth, he led the draenei's bitter fight against blood elf sabotage on Bloodmyst Isle. This previously deep-seated enmity makes his presence in Midnight all the more remarkable: faced with total annihilation by the Void, Boros lays old grudges to rest. Wielding his gigantic hammer and the pure power of the Light, he now stands shoulder-to-shoulder on Parhelion Plaza with the very elves he once fought, determined to protect the Sunwell.",
    timeline = {
        {era = "TBC",      text_deDE = "Führte die Truppen der Hand von Argus auf der Blutmythosinsel im Kampf gegen Kael'thas' Sonnenfalken an.", text_enUS = "Led the forces of the Hand of Argus on Bloodmyst Isle in the battle against Kael'thas's Sunhawks.", source = "Quest: Die Hand von Argus"},
        {era = "Legion",   text_deDE = "Schloss sich der neugegründeten Silbernen Hand an und diente dem Hochlord als treuer Champion im Kampf gegen die Legion.", text_enUS = "Joined the newly reformed Silver Hand and served the Highlord as a loyal champion in the war against the Legion.", source = "Quest: Champion: Verteidiger Boros"},
        {era = "Midnight", text_deDE = "Kämpft als Vorhut der Silbernen Hand auf der Parhelionplaza und der Insel von Quel'Danas gegen die Leereninvasion.", text_enUS = "Fights as the vanguard of the Silver Hand at Parhelion Plaza and the Isle of Quel'Danas against the Void invasion.", source = "warcraft.wiki.gg/wiki/Vindicator_Boros"},
    },
}

IMAGOdb.npcs["magister_umbric"] = {
    displayName_deDE = "Magister Umbric",
    displayName_enUS = "Magister Umbric",
    race_deDE = "Leerenelf",
    race_enUS = "Void Elf",
    displayID = 234148,
    zones_deDE = {"Amirdrassil", "Die Leerenspitze", "Immersangwald", "Insel von Quel'Danas", "Leerensturm", "Schattenhochland", "Silbermond", "Sturmwind", "Terrasse der Magister"},
    zones_enUS = {"Amirdrassil", "The Voidspire", "Eversong Woods", "Isle of Quel'Danas", "Voidstorm", "Twilight Highlands", "Silvermoon City", "Stormwind City", "Magister's Terrace"},
    ids = {
        234148, 246156, 235386, 235405, 249272, 240260, 239944, 249443, 251942, 246025, 
        237506, 253607, 235698, 239828, 235411, 235764, 247668, 241127, 235395, 243723, 
        245063, 236730, 236687, 236363, 242143, 242638, 236087, 245001, 245526, 242636, 
        237220, 237240, 244299, 253613
    },
    category = "CAT_QUELTHALAS",
    lore_deDE = "Magister Umbric ist der weise und pragmatische Anführer der Ren'dorei (Leerenelfen). Getrieben von dem Wunsch, Quel'Thalas um jeden Preis zu verteidigen, erforschte er einst verbotene Leerenmagie, was zu seiner Verbannung durch Großmagister Rommath führte. Im Exil fiel er beinahe dem Leerenprinzen Durzaan zum Opfer, wurde jedoch im letzten Moment von Alleria Windläufer gerettet. Obwohl er nun der Allianz dient, hat er die Liebe zu seiner Heimat nie verloren. Zuletzt leitete er eine Forschungsexpedition nach K'aresh, bis Arator der Erlöser ihn in Tazavesh aufsuchte und vor der drohenden Gefahr für Silbermond warnte. Ohne zu zögern sammelte Umbric sein Volk. In Midnight kehrt er trotz der bitteren Vergangenheit in seine Heimat zurück und richtet seine Meisterschaft über die Leere gegen Xal'ataths Streitkräfte.",
    lore_enUS = "Magister Umbric is the wise and pragmatic leader of the ren'dorei (Void Elves). Driven by the desire to defend Quel'Thalas at all costs, he once researched forbidden Void magic, which led to his exile by Grand Magister Rommath. In exile, he almost fell victim to the nether-prince Durzaan but was saved at the last moment by Alleria Windrunner. Although he now serves the Alliance, he has never lost his love for his homeland. Most recently, he led a research expedition to K'aresh until Arator the Redeemer sought him out in Tazavesh, warning him of the impending danger to Silvermoon. Without hesitation, Umbric gathered his people. In Midnight, despite the bitter past, he returns to his homeland, turning his mastery over the Void against Xal'atath's forces.",
    timeline = {
        {era = "BfA",      text_deDE = "Wurde für seine Leerenforschung aus Silbermond verbannt, in den Geisterlanden von der Leere transformiert und durch Alleria Windläufer gerettet.", text_enUS = "Was exiled from Silvermoon for his Void research, transformed by the Void in the Ghostlands, and saved by Alleria Windrunner.", source = "Quest: Die Geisterlande"},
        {era = "BfA",      text_deDE = "Schwor der Allianz die Treue und führte die Streitkräfte der Leerenelfen im Vierten Krieg bei entscheidenden Sabotageakten in Zandalar an.", text_enUS = "Pledged loyalty to the Alliance and led the Void Elf forces during the Fourth War in crucial acts of sabotage in Zandalar.", source = "warcraft.wiki.gg/wiki/Magister_Umbric"},
        {era = "TWW",      text_deDE = "Errichtete das Lager Shan'dorah auf K'aresh und wurde nach dem Sieg über Dimensius in Tazavesh von Arator mobilisiert, um Silbermond zu retten.", text_enUS = "Established the Shan'dorah camp on K'aresh and was mobilized in Tazavesh by Arator after the defeat of Dimensius to save Silvermoon.", source = "Quest: Die Warnung"},
        {era = "Midnight", text_deDE = "Kehrt nach Quel'Thalas zurück, um den Sonnenbrunnen zu verteidigen, und operiert tief in den von der Leere verzerrten Zonen wie der Leerenspitze.", text_enUS = "Returns to Quel'Thalas to defend the Sunwell and operates deep within Void-distorted zones like the Voidspire.", source = "warcraft.wiki.gg/wiki/Magister_Umbric"},
    },
}

IMAGOdb.npcs["orweyna"] = {
    displayName_deDE = "Orweyna",
    displayName_enUS = "Orweyna",
    race_deDE = "Haran'ir",
    race_enUS = "Haran'ir",
    displayID = 241742,
    zones_deDE = {"Das Blendende Tal", "Die Höhle", "Harandar", "Immersangwald", "Insel von Quel'Danas", "Silbermond"},
    zones_enUS = {"The Blinding Vale", "The Den", "Harandar", "Eversong Woods", "Isle of Quel'Danas", "Silvermoon City"},
    ids = {
        236704, 236743, 236903, 237210, 237234, 237325, 237333, 237346, 
        237356, 237361, 237480, 237483, 237786, 237860, 239522, 240533, 
        240962, 241070, 241331, 241704, 241742, 241795, 242592, 242694, 
        242882, 243761, 243795, 245099, 245247, 245879, 245881, 246007, 
        246485, 246722, 249068, 249151, 253343, 255822, 255828
    },
    category = "CAT_HARATI",
    lore_deDE = 
    [[    Als Späherin des geheimnisvollen Volkes der Haranir unterscheidet sich Orweyna stark von den meisten ihrer Artgenossen. Fasziniert von der Welt und ihren Bewohnern außerhalb ihrer Heimat widersetzte sie sich den Eiden der Geheimhaltung und Isolation. Zunächst nahm sie Kontakt mit dem Champion von Azeroth in Azj-Kahet auf, nun bittet sie die Elfen von Quel'Thalas um Hilfe.
    
Sie hat eine besondere Verbindung zu ihrer Göttin Aln'hara, von der sie Visionen drohender Gefahren erhält, die dem „Strahlenden Gesang” ähneln. Sie weiß, dass es mehr als nur die Streitkräfte der Haranir brauchen wird, um die Leere zu besiegen, die Aln'hara bedroht.]],
    lore_enUS = 
    [[A scout of the mysterious race called Haranir, Orweyna is quite different from most of her kind. Fascinated with the world and its people outside of her homeland, she went against her oaths of secrecy and seclusion and made contact first with the champion of Azeroth in Azj-Kahet, and now with the elves of Quel'Thalas to petition their aid.
    
She has a special connection to her goddess, Aln'hara, receiving visions of impending dangers from her that resemble the Radiant Song, and she knows that the Void that threatens Aln'hara will require more than the forces of the Haranir to vanquish.]],
    timeline = {
        {
            era = "Pre-BfA", 
            text_deDE = "Bemerkte die Bedrohung durch das Schwarze Blut in Azj-Kahet und wagte sich zum ersten Mal aus Harandar heraus, um dessen Ausbreitung zu bekämpfen.", 
            text_enUS = "Noticed the threat of the Black blood in Azj-Kahet and ventured outside of Harandar for the first time to combat the spread.", 
            source = "Cadash - IMAGO Community"
        },
        {
            era = "TWW", 
            text_deDE = "Rettete die Expedition von Alleria und Faerin in Azj-Kahet vor den Nerubern. Setzte ihre Untersuchung des Schwarzen Blutes fort, folgte ihm nach Undermine und half folglich Gazlowe bei seiner Rebellion gegen Gallywix.", 
            text_enUS = "Rescued Alleria's and Faerin's expedition in Azj-Kahet from the Nerubians. Kept investigating the Black Blood, following it to Undermine and consequently aided Gazlowe in his rebellion against Gallywix.", 
            source = "Cadash - IMAGO Community"
        },
        {
            era = "Midnight", 
            text_deDE = "Half dabei, die Lichtblüte sowohl in Harandar als auch in Quel'Thalas einzudämmen. Verhandelte ein vorläufiges Bündnis zwischen ihrem Volk und den Elfen von Quel'Thalas, was dazu führte, dass die Haranir zum ersten Mal die Außenwelt erkundeten.", 
            text_enUS = "Helped to contain the Lightbloom in both Harandar and Quel'Thalas. Negotiated a tentative Alliance between her people and the elves of Quel'Thalas, leading the Haranir to explore the outside world for the first time.", 
            source = "Cadash - IMAGO Community"
        },
    },
}

IMAGOdb.npcs["elder_hagar"] = {
    displayName_deDE = "Älteste Hagar",
    displayName_enUS = "Elder Hagar",
    race_deDE = "Haran'ir",
    race_enUS = "Haran'ir",
    displayID = 255819,
    zones_deDE = {"Die Höhle", "Harandar", "Immersangwald", "Silbermond"},
    zones_enUS = {"The Den", "Harandar", "Eversong Woods", "Silvermoon City"},
    ids = {
        255819, 237332, 237567, 237572, 240754, 240839, 241216, 245151, 
        248886, 252494, 252495, 252496, 252497
    },
    category = "CAT_HARATI",
    lore_deDE = "Älteste Hagar ist eine tief verehrte Weise der Haran'ir und fungiert in Midnight als essenzielle diplomatische Brücke zwischen der Hara'ti-Fraktion und den Völkern Azeroths. Ihr persönliches Schicksal ist von tiefer Tragik geprägt: Sie diente einst unbemerkt als Hüterin der Weltenbaumwurzeln von Teldrassil. Als der Baum verbrannte, erlebte Hagar den Tod der Wurzeln tief unter der Erde als eine ohrenbetäubende, traumatisierende Stille. Nun, da die Leere die uralten arkanen Wurzeln unterhalb von Quel'Thalas bedroht, weigert sie sich, den Tod eines weiteren Baumes tatenlos hinzunehmen. Sie hat die schützende Dunkelheit des Untergrunds verlassen und positioniert sich in Silbermond direkt am Harandar-Portal, um fähige Helden zu rekrutieren und ihr Volk offiziell als Verbündete in den globalen Konflikt zu führen.",
    lore_enUS = "Elder Hagar is a deeply revered sage of the Haran'ir and serves in Midnight as the essential diplomatic bridge between the Hara'ti faction and the peoples of Azeroth. Her personal fate is marked by deep tragedy: she once served unnoticed as the Rootwarden for the World Tree Teldrassil. When the tree burned, Hagar experienced the death of its roots deep underground as a deafening, traumatizing silence. Now, with the Void threatening the ancient arcane roots beneath Quel'Thalas, she refuses to stand by and accept the death of another tree. She has left the protective darkness of the underground and positioned herself in Silvermoon City right by the Harandar portal to recruit capable heroes and officially lead her people into the global conflict as an Allied Race.",
    timeline = {
        {era = "BfA", text_deDE = "Wachte im tiefen Untergrund als Hüterin über die Wurzeln von Teldrassil, bis der Baum vernichtet wurde.", text_enUS = "Watched over the roots of Teldrassil deep underground as a Rootwarden until the tree was destroyed.", source = "warcraft.wiki.gg/wiki/Hagar"},
        {era = "Midnight", text_deDE = "Koordiniert von Silbermond aus die diplomatische Bindung und die Freischaltung der Haran'ir als Verbündetes Volk.", text_enUS = "Coordinates the diplomatic binding and the unlock of the Haran'ir as an Allied Race from Silvermoon City.", source = "Quest: Der Krieg jenseits der Wurzeln"},
    },
}

IMAGOdb.npcs["amarakk"] = {
    displayName_deDE = "Amarakk",
    displayName_enUS = "Amarakk",
    race_deDE = "Haran'ir",
    race_enUS = "Haran'ir",
    displayID = 237236,
    zones_deDE = {"Der Traumriss", "Harandar"},
    zones_enUS = {"The Dream Rift", "Harandar"},
    ids = {
        237236, 237284, 244419, 244455, 249066
    },
    category = "CAT_HARATI",
    lore_deDE = "Amarakk ist Orweynas engster Vertrauter und lebenslanger Freund. Als die beiden in der Wildnis von Harandar vom Samen zum Schössling heranwuchsen, war er stets an ihrer Seite. Während Orweyna schon immer von wilden Impulsen getrieben wurde, bildete Amarakk als ruhige Stimme der Vernunft ihr wichtigstes Gegengewicht und ihren emotionalen Anker. Auch wenn das Überleben im Untergrund hart war, war ihr Band unzerstörbar. In Midnight weicht er nicht von Orweynas Seite, während sie an der Oberfläche die neugegründete Hara'ti-Fraktion anführt. Er unterstützt sie maßgeblich mit seinem tiefgreifenden Wissen – etwa bei der Zubereitung von Aln-Staub –, um die Kämpfer zu heilen. Selbst vor hochgefährlichen Orten wie dem Traumriss schreckt Amarakk nicht zurück, um seiner Freundin und seinem Volk im Kampf gegen die Leere beizustehen.",
    lore_enUS = "Amarakk is Orweyna's closest confidant and lifelong friend. As the two grew from seed to sapling in the wilds of Harandar, he was always at her side. While Orweyna was always driven by wilder impulses, Amarakk served as the steady voice of reason, her most important counterweight and emotional anchor. Even though surviving underground was harsh, their bond was unbreakable. In Midnight, he remains steadfastly by Orweyna's side as she leads the newly formed Hara'ti faction on the surface. He provides crucial support with his profound knowledge—such as preparing Alndust—to heal the fighters. Amarakk does not shy away from highly dangerous locations like the Dream Rift to aid his friend and his people in the fight against the Void.",
    timeline = {
        {era = "Pre-Midnight", text_deDE = "Wuchs gemeinsam mit Orweyna in Harandar auf und half ihr als ruhige Stimme der Vernunft, ihre impulsivste Seite zu zügeln.", text_enUS = "Grew up alongside Orweyna in Harandar, serving as the steady voice of reason to help ground her impulsive nature.", source = "Kurzgeschichte: Nach uns, die Stille"},
        {era = "Midnight",     text_deDE = "Begleitet Orweyna an der Oberfläche und im Traumriss, und unterstützt die Hara'ti durch sein Wissen über die Natur und Aln-Staub.", text_enUS = "Accompanies Orweyna on the surface and in the Dream Rift, supporting the Hara'ti with his knowledge of nature and Alndust.", source = "Quest: Den Ruf dämpfen"},
    },
}

IMAGOdb.npcs["loa_speaker_kinduru"] = {
    displayName_deDE = "Loasprecher Kinduru",
    displayName_enUS = "Loa Speaker Kinduru",
    race_deDE = "Waldtroll (Amani)",
    race_enUS = "Forest Troll (Amani)",
    displayID = 244479,
    zones_deDE = {"Atal'Aman", "Zul'Aman"},
    zones_enUS = {"Atal'Aman", "Zul'Aman"},
    ids = {
        237301, 244479, 245583, 245720, 261198
    },
    category = "CAT_AMANI",
    lore_deDE = "Loasprecher Kinduru ist der exzentrische, aber liebenswerte spirituelle Führer der Amani. Als direkter Sohn des legendären Zul'jin und Onkel von Zul'jan und Zul'jarra bildet er einen massiven Kontrast zu seiner kriegerischen Blutlinie. Während sein Neffe Zul'jan den Glauben an die Loa ablehnt, ist Kinduru ein tiefgläubiger Diener der mächtigen Amani-Götter – Akil'zon, Halazzi, Jan'alai und Nalorakk. Seine Persönlichkeit erinnert viele an einen weisen, leicht verrückten Schamanen. In Midnight ist er die treibende spirituelle Kraft in Zul'Aman. Er lehrt die Verteidiger geduldig, wie sie sich die Segnungen der Loa verdienen können, um den endlosen Hunger der Leere abzuwehren.",
    lore_enUS = "Loa Speaker Kinduru is the eccentric yet endearing spiritual guide of the Amani. As the direct son of the legendary Zul'jin and uncle to Zul'jan and Zul'jarra, he forms a massive contrast to his warmongering bloodline. While his nephew Zul'jan rejects faith in the Loa, Kinduru is a devout servant of the mighty Amani gods—Akil'zon, Halazzi, Jan'alai, and Nalorakk. His personality reminds many of a wise, slightly mad shaman. In Midnight, he is the driving spiritual force in Zul'Aman. He patiently teaches the defenders how to earn the blessings of the Loa to stave off the endless hunger of the Void.",
    timeline = {
        {era = "Pre-Midnight", text_deDE = "Wuchs im Schatten seines Vaters Zul'jin auf, widmete sein Leben jedoch der spirituellen Verehrung der Loa anstatt dem blinden Hass.", text_enUS = "Grew up in the shadow of his father Zul'jin, but dedicated his life to the spiritual worship of the Loa instead of blind hatred.", source = "warcraft.wiki.gg/wiki/Loa_Speaker_Kinduru"},
        {era = "Midnight", text_deDE = "Agiert als Loasprecher in Zul'Aman und lehrt die Spieler am Altar der Segnungen, die Macht der Götter gegen die Leere zu nutzen.", text_enUS = "Acts as Loa Speaker in Zul'Aman and teaches players at the Altar of Blessings how to harness the gods' power against the Void.", source = "Quest: Segen der Loa"},
    },
}

IMAGOdb.npcs["lady_darkglen"] = {
    displayName_deDE = "Lady Dunkeltal",
    displayName_enUS = "Lady Darkglen",
    race_deDE = "Untote (Dunkle Waldläuferin)",
    race_enUS = "Undead (Dark Ranger)",
    displayID = 241170,
    zones_deDE = {"Leerensturm", "Silbermond"},
    zones_enUS = {"Voidstorm", "Silvermoon City"},
    ids = {
        239426, 239616, 239722, 241169, 241170, 241171, 241173, 241175, 
        243441, 244745, 247664, 247674, 257416
    },
    category = "CAT_QUELTHALAS",
    lore_deDE = "Lady Dunkeltal ist eine furchteinflößende Kommandantin der Dunklen Waldläufer und eine eiskalte, loyale Verteidigerin von Quel'Thalas. Als Untote, die einst unter dem Banner von Sylvanas Windläufer diente, entschied sie sich nach dem Verrat der Bansheekönigin unmissverständlich dafür, ihrer wahren Heimat treu zu bleiben. Bereits während des Vierten Krieges führte sie an der Kriegsfront der Dunkelküste verheerende Schläge gegen die Allianz aus. In Midnight bringt sie ihre tödliche, pragmatische Präzision zurück nach Hause. Sie operiert kompromisslos im Leerensturm und koordiniert die Verteidigung aus Silbermond, wo ihre Pfeile nun keine Nachtelfen mehr suchen, sondern die monströsen Entitäten der Leere lautlos durchbohren.",
    lore_enUS = "Lady Darkglen is a fearsome commander of the Dark Rangers and a cold, loyal defender of Quel'Thalas. As an undead who once served under the banner of Sylvanas Windrunner, she unambiguously chose to remain loyal to her true homeland after the Banshee Queen's betrayal. Already during the Fourth War, she delivered devastating strikes against the Alliance at the Darkshore warfront. In Midnight, she brings her deadly, pragmatic precision back home. She operates ruthlessly in the Voidstorm and coordinates defenses from Silvermoon City, where her arrows no longer seek night elves, but silently pierce the monstrous entities of the Void.",
    timeline = {
        {era = "BfA",      text_deDE = "Diente als hochrangige Kommandantin der Dunklen Waldläufer an der Kriegsfront an der Dunkelküste gegen die Elune-Krieger.", text_enUS = "Served as a high-ranking commander of the Dark Rangers at the Darkshore Warfront against the warriors of Elune.", source = "Quest: Die Schlacht an der Dunkelküste"},
        {era = "Midnight", text_deDE = "Führt die Reihen der Dunklen Waldläufer an der Frontlinie im Leerensturm und in Silbermond an, um die Leereninvasion zurückzuschlagen.", text_enUS = "Leads the ranks of the Dark Rangers on the front lines in the Voidstorm and Silvermoon City to repel the Void invasion.", source = "warcraft.wiki.gg/wiki/Lady_Darkglen"},
    },
}

IMAGOdb.npcs["riftblade_maella"] = {
    displayName_deDE = "Rissklinge Maella",
    displayName_enUS = "Riftblade Maella",
    race_deDE = "Leerenelf",
    race_enUS = "Void Elf",
    displayID = 254513,
    zones_deDE = {"Die Leerenspitze", "Leerensturm", "Silbermond"},
    zones_enUS = {"The Voidspire", "Voidstorm", "Silvermoon City"},
    ids = {
        238531, 239349, 239418, 239517, 239618, 239659, 239686, 239802, 
        240116, 240538, 241076, 242930, 247595, 252949, 254427, 254512, 
        254513
    },
    category = "CAT_QUELTHALAS",
    lore_deDE = "Rissklinge Maella ist eine tödliche Nahkämpferin der Ren'dorei und gehört zur absoluten Vorhut von Magister Umbrics Streitkräften. Als Rissklinge meistert sie die Kunst, physische Kampfkraft mit der instabilen Magie des Telogrusrisses zu verschmelzen, um durch den Raum zu schneiden und ihre Feinde zu desorientieren. Dass die Leerenelfen in Midnight ihre alte Heimat Quel'Thalas verteidigen, ist für Maella eine Frage der Ehre und des Überlebens. Ihre Einsatzorte in der Leerenspitze und im Zentrum des tödlichen Leerensturms zeigen, dass sie unerschrocken dort kämpft, wo die Korruption der Leere am dichtesten ist. Sie nutzt die pure Dunkelheit gnadenlos als Waffe gegen die Leere selbst und verteidigt Silbermond mit eiskalter Präzision.",
    lore_enUS = "Riftblade Maella is a deadly melee combatant of the ren'dorei and part of the absolute vanguard of Magister Umbric's forces. As a Riftblade, she masters the art of fusing physical martial prowess with the unstable magic of the Telogrus Rift to slice through space and disorient her foes. The fact that the Void Elves are defending their old homeland of Quel'Thalas in Midnight is a matter of honor and survival for Maella. Her deployments in the Voidspire and at the center of the deadly Voidstorm show that she fearlessly fights where the corruption of the Void is thickest. She ruthlessly uses pure darkness as a weapon against the Void itself, defending Silvermoon City with ice-cold precision.",
    timeline = {
        {era = "BfA",      text_deDE = "Wurde in den Geisterlanden transformiert und im Telogrusriss zur Rissklinge ausgebildet, um die Leere auf dem Schlachtfeld zu meistern.", text_enUS = "Was transformed in the Ghostlands and trained as a Riftblade in the Telogrus Rift to master the Void on the battlefield.", source = "Quest: Der Telogrusriss"},
        {era = "Midnight", text_deDE = "Führt die Nahkampf-Vorhut der Ren'dorei im Leerensturm und in der Leerenspitze an, um den Sonnenbrunnen zu schützen.", text_enUS = "Leads the melee vanguard of the ren'dorei in the Voidstorm and the Voidspire to protect the Sunwell.", source = "warcraft.wiki.gg/wiki/Riftblade_Maella"},
    },
}

IMAGOdb.npcs["astalor_bloodsworn"] = {
    displayName_deDE = "Astalor Blutschwur",
    displayName_enUS = "Astalor Bloodsworn",
    race_deDE = "Blutelf",
    race_enUS = "Blood Elf",
    displayID = 253513,
    zones_deDE = {"Immersangwald", "Harandar", "Leerensturm", "Atal'Aman", "Silbermond"},
    zones_enUS = {"Eversong Woods", "Harandar", "Voidstorm", "Atal'Aman", "Silvermoon City"},
    ids = { 253513, 246231, 258221, 252188, 250492, 254545, 259865, 257868, 257874, 257752, 257722 },
    category = "CAT_QUELTHALAS",
    lore_deDE = 
    [[Der Magier Astalor Blutschwur, Mitbegründer der Blutritter von Silbermond, suchte schon immer nach kreativen Wegen, seinem Volk zu helfen. Als Kael'thas den gefangenen Naaru M'uru nach Silbermond schickte, war es Astalor, der dazu riet, sich nicht einfach an dem heiligen Wesen zu laben, sondern stattdessen seine Energie abzuzapfen und zu nutzen, um die Blutelfen zu Paladinen zu machen. 

Angesichts der Bedrohung durch den Leerensturm, die über Silbermond schwebt, ersinnt Astalor erneut ungewöhnliche Methoden, um der Gefahr zu begegnen: Er jagt gefährliche Individuen und erntet ihre Qualen, um diese in mächtige Energie umzuwandeln. Es bleibt abzuwarten, welche Ergebnisse er erzielen wird...]],
    lore_enUS = 
    [[Co-founder of the Blood Knights of Silvermoon, the mage Astalor Bloodsworn has always searched for creative ways to aid his people. When Kael'thas sent the captured Naaru M'uru back to Silvermoon, it was Astalor who advised to not merely feast upon the holy creature, but instead to siphon and wield its energy to empower the blood elves into paladins. 
    
With the threat of the Voidstorm looming over Silvermoon, Astalor once again thinks of unusual methods to combat the threat: by hunting down dangerous individuals and harvesting their anguish to transform it into powerful energy. It's yet to be seen what results he will yield...]],
    timeline = {
        {era = "Warcraft 3", text_deDE = "Mitbegründer des Paladinordens der Blutritter, indem er einen Weg fand, wie die Elfen das heilige Licht wieder nutzen konnten – indem sie es einem gefangenen Naaru entzogen.", text_enUS = "Co-founded the Blood Knight paladin order by finding a way for the elves to wield the holy light again – by draining it from a captured Naaru.", source = "Cadash - IMAGO Community"},
        {era = "TBC", text_deDE = "Half bei der Verteidigung von Silbermond gegen ihren verräterischen Anführer Kael'thas.", text_enUS = "Helped defend Silvermoon against their treacherous leader Kael'thas.", source = "Cadash - IMAGO Community"},
        {era = "WoD", text_deDE = "Versorgte die Streitkräfte der Blutelfen mit Golems, die durch Blutmagie angetrieben wurden, um Lady Liadrins Kreuzzug gegen die Eiserne Horde zu verstärken.", text_enUS = "Supplied blood elven forces with golems powered by blood magic to reinforce Lady Liadrin's crusade against the Iron Horde.", source = "Cadash - IMAGO Community"},
        {era = "Midnight", text_deDE = "Experimentierte mit einer neuen Art von Magie – Qual – um die Verteidigung der Stadt zu stärken und das Überleben sowie den Wohlstand der Blutelfen zu sichern.", text_enUS = "Experimented with a new type of magic – anguish – to empower the city's defenses and ensure the survival and prosperity of the blood elves.", source = "Cadash - IMAGO Community"}
    },
}

IMAGOdb.npcs["sunwalker_dezco"] = {
    displayName_deDE = "Sonnenläufer Dezco",
    displayName_enUS = "Sunwalker Dezco",
    race_deDE = "Tauren",
    race_enUS = "Tauren",
    displayID = 247299,
    zones_deDE = {"Arathihochland"},
    zones_enUS = {"Arathi Highlands"},
    ids = {
        247299, 245186, 238072
    },
    category = "CAT_LIGHT",
    lore_deDE = 
    [[Als Häuptling des Stammes der Morgenwandler ist der standhafte Taure Sonnenläufer Dezco ein Verehrer von An'she, der Sonne, und schöpft seine gewaltige Macht aus ihrem Licht. Nachdem er unvorstellbare persönliche Tragödien erlitten hatte, die einen schwächeren Geist gebrochen hätten, reiste Dezco auf der Suche nach seiner Bestimmung in ferne Länder. Obwohl ihn seine Reisen über ferne Kontinente und sogar in die Reiche des Jenseits führten, fühlte er sich unter dem einfachen Volk von Azeroth am wohlsten.

Dezco, der sich dem Dienst verschrieben hat, gilt unter den Sonnenläufern als erfahrener Veteran und weiser Ältester. Da sich erneut ein Konflikt anbahnt, übernimmt er die Rolle des anleitenden Mentors und lehrt seine Verbündeten, dass das Beschreiten des Pfades des Lichts nicht nur inbrünstigen Eifer, sondern auch tiefes Mitgefühl erfordert.]],
    lore_enUS = 
    [[Chieftain of the Dawnchaser tribe, Sunwalker Dezco is a steadfast tauren who reveres An'she, the sun, drawing his formidable power from her light. Having endured unimaginable personal tragedies that would break a lesser spirit, Dezco journeyed to distant lands in search of purpose. Though his travels have taken him across distant continents and even into the realms of the afterlife, the place he felt most at home was with the common people of Azeroth. 
    
Dedicated to service, Dezco stands as a seasoned veteran and wise elder among the Sunwalkers. As conflict brews anew, he serves as a guiding mentor, teaching allies that walking the path of the Light requires not only fervent zeal, but deep compassion as well.]],
    timeline = {
        {
            era = "Pre-MoP",
            text_deDE = "Kämpfte auf mehreren Hordenmissionen über verschiedene Kontinente hinweg an der Seite seiner engsten Verbündeten gegen Drachen, Untote und Streitkräfte der Allianz.",
            text_enUS = "Fought against dragons, the undead, and Alliance forces on several Horde missions across multiple continents alongside his closest allies.",
            source = "Lewi - IMAGO Community"
        },
        {
            era = "MoP",
            text_deDE = "Führte den Stamm der Morgenwandler nach Pandaria und durchlebte den tragischen Tod seiner Frau und eines seiner neugeborenen Söhne. Er wurde zu einem unerbittlichen Verteidiger des Tals der Ewigen Blüten und half letztendlich dabei, Garrosh Höllschrei zu stürzen, um dessen Entweihung des heiligen Landes zu stoppen.",
            text_enUS = "Led the Dawnchaser tribe to Pandaria, enduring the tragic deaths of his wife and one of his infant sons. He became a staunch defender of the Vale of Eternal Blossoms and ultimately helped overthrow Garrosh Hellscream to stop his desecration of the sacred land.",
            source = "Lewi - IMAGO Community"
        },
        {
            era = "WoD",
            text_deDE = "Reiste auf der Suche nach Frieden nach Draenor, wo er vorübergehend mit einer Sucht nach dem beruhigenden, warmen Licht eines Sonnenkristalls der Arakkoa kämpfte, um seine immense Trauer zu bewältigen.",
            text_enUS = "Traveled to Draenor in search of peace, temporarily struggling with an addiction to the soothing, warm light of an arakkoan Sun Crystal to cope with his immense grief.",
            source = "Lewi - IMAGO Community"
        },
        {
            era = "Legion",
            text_deDE = "Schloss sich den Reihen der Silbernen Hand an und unterstützte die Verteidigungsbemühungen des Paladinordens vom Sanktum des Lichts aus.",
            text_enUS = "Joined the ranks of the Silver Hand, aiding the paladin order's defensive efforts from within the Sanctum of Light.",
            source = "Lewi - IMAGO Community"
        },
        {
            era = "BfA",
            text_deDE = "Verließ die Silberne Hand infolge der gespaltenen Loyalitäten und politischen Unruhen des Vierten Krieges.",
            text_enUS = "Departed from the Silver Hand following the fractured loyalties and political turmoil of the Fourth War.",
            source = "Lewi - IMAGO Community"
        },
        {
            era = "SL",
            text_deDE = "Durchschritt den Schleier in die Schattenlande und kam in Oribos an, in der Hoffnung, die Seelen seiner verstorbenen Frau und seines Sohnes zu finden, um ihnen eine letzte Botschaft der Liebe zu überbringen.",
            text_enUS = "Crossed the veil into the Shadowlands and arrived in Oribos, hoping to find the souls of his departed wife and son to deliver a final message of love.",
            source = "Lewi - IMAGO Community"
        },
        {
            era = "TWW",
            text_deDE = "Reiste an der Seite anderer prominenter Tauren an die Küsten von Khaz Algar und überwachte voller Stolz das Kampftraining seines nun erwachsenen Sohnes Kor.",
            text_enUS = "Traveled to the shores of Khaz Algar alongside other prominent tauren, proudly overseeing the martial training of his now-grown son, Kor.",
            source = "Lewi - IMAGO Community"
        },
        {
            era = "Midnight", 
            text_deDE = "Fungiert als anleitender Mentor für die Sonnenläufer und ihre Verbündeten und lehrt eine neue Generation, dass das Führen des Lichts viel mehr bedeutet als bloße Gewalt.",
            text_enUS = "Acts as a guiding mentor for the Sunwalkers and their allies, teaching a new generation that wielding the Light is about much more than mere violence.", 
            source = "Lewi - IMAGO Community"
        },
    },
}

-- ============================================================
-- REVERSE-LOOKUP AUFBAUEN
-- Wird von IMAGO.lua → IMAGO.BuildReverseLookup() aufgerufen.
-- WICHTIG: Diese Funktion MUSS in IMAGO.lua definiert sein!
-- ============================================================

function IMAGO.BuildReverseLookup()
     IMAGOdb.idToSlug = {}
     for slug, data in pairs(IMAGOdb.npcs) do
         if data.ids then
             for _, entry in ipairs(data.ids) do
                 local id = type(entry) == "table" and entry[1] or entry
                 IMAGOdb.idToSlug[tonumber(id)] = slug
             end
         end
     end
 end