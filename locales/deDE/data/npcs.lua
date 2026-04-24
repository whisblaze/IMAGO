-- ============================================================
-- IMAGO — locales/deDE/data/npcs.lua
-- ============================================================

if GetLocale() ~= "deDE" then return end

-- CAT_QUELTHALAS
IMAGOdb.npcs.CAT_QUELTHALAS["lorthemar_theron"].name = "Lor'themar Theron"
IMAGOdb.npcs.CAT_QUELTHALAS["lorthemar_theron"].race = "Blutelf"
IMAGOdb.npcs.CAT_QUELTHALAS["lorthemar_theron"].lore =
[[
Lor'themar Theron, im Herzen ein Waldläufer, hat sich nie dazu entschieden, die Blutelfen anzuführen. Als Quel'Thalas im Dritten Krieg der Geißel zum Opfer fiel, wurde er in Ermangelung anderer überlebender Kandidaten von Prinz Kael'thas zum Regenten des gefallenen Königreichs ernannt.

Er war gezwungen, schwierige Entscheidungen zu treffen, wie das Bündnis der Blutelfen mit der Horde, die Verbannung der Hochelfen zur Bekämpfung von Unruhen und die Führung der Schlacht gegen Kael'thas nach dem Verrat des Prinzen. Lor'themars Pragmatismus und strategische List machten ihn dennoch zu einem inspirierenden Anführer, der bei Freunden und Feinden gleichermaßen Respekt genießt.

Als überzeugter Verfechter des Friedens dient Lor'themar heute sowohl als Regent-Lord von Quel'Thalas als auch als Mitglied des regierenden Hordenrats. Seine Loyalität gilt in erster Linie seinem Volk.

Jetzt, da Quel'Thalas erneut in Gefahr ist, wird er vor nichts zurückschrecken, um sein Volk und seine Stadt gegen die vordringenden Mächte der Leere zu verteidigen.]]
IMAGOdb.npcs.CAT_QUELTHALAS["lorthemar_theron"].zones = {"Amirdrassil", "Harandar", "Immersangwald", "Insel von Quel'Danas", "Silbermond"}
IMAGOdb.npcs.CAT_QUELTHALAS["lorthemar_theron"].source = "warcraft.wiki.gg/wiki/Lor'themar_Theron"
IMAGOdb.npcs.CAT_QUELTHALAS["lorthemar_theron"].timeline = {
    {era = "WC2", text = "Wurde nach der Verteidigung von Silbermond zum Waldläuferlord befördert."},
    {era = "WC3", text = "Von Kael'thas zum Regenten ernannt; befreite Silbermond von der Geißel."},
    {era = "TBC", text = "Schloss sich der Horde an; setzte den verräterischen Kael'thas ab; blieb Regent-Lord."},
    {era = "WotLK", text = "Entsandte Truppen nach Nordend gegen den Lichkönig; half bei der Rückgewinnung von Quel'delar."},
    {era = "Pre-MoP", text = "Weigerte sich, an Garroshs Angriff auf Theramore teilzunehmen."},
    {era = "MoP", text = "Verhandelte mit Varian Wrynn; schloss sich nach der Säuberung von Dalaran der Rebellion gegen Garrosh an."},
    {era = "BfA", text = "Führte die Nachtgeborenen in die Horde; kämpfte gegen Königin Azshara; wurde Mitglied des Hordenrats."},
    {era = "Pre-DF", text = "Heiratete die Erste Arkanistin Thalyssra als Symbol des Friedens."},
    {era = "DF", text = "Half bei der Verteidigung von Amirdrassil."},
    {era = "Midnight", text = "Führte die Verteidigung von Silbermond gegen die vordringende Leere an."},
}

IMAGOdb.npcs.CAT_QUELTHALAS["erste_arkanistin_thalyssra"].name = "Erste Arkanistin Thalyssra"
IMAGOdb.npcs.CAT_QUELTHALAS["erste_arkanistin_thalyssra"].race = "Nachtgeborene"
IMAGOdb.npcs.CAT_QUELTHALAS["erste_arkanistin_thalyssra"].lore = "Erste Arkanistin Thalyssra ist die Anführerin der Nachtgeborenen. Einst von einem korrupten Herrscher aus ihrer Heimatstadt Suramar verbannt, befreite Thalyssra das Volk der Shal'dorei von seiner Abhängigkeit von der Macht des Nachtbrunnens und übernahm nach der Plünderung Suramars die Führung. Heute regiert sie Seite an Seite mit Lor'themar Therons Blutelfen und vereint beide Kulturen durch ihre gemeinsame Zugehörigkeit zur Horde – und durch die Einheit ihrer Ehe."
IMAGOdb.npcs.CAT_QUELTHALAS["erste_arkanistin_thalyssra"].zones = {"Amirdrassil", "Der Ewige Palast", "Insel von Quel'Danas", "Silbermond", "Suramar"}
IMAGOdb.npcs.CAT_QUELTHALAS["erste_arkanistin_thalyssra"].source = ""
IMAGOdb.npcs.CAT_QUELTHALAS["erste_arkanistin_thalyssra"].timeline = {
    {era = "Legion", text = "Thalyssra wurde aus Suramar verbannt, weil sie sich der Legion widersetzte, und sandte ein magisches Notsignal, das von Khadgar abgefangen wurde, wodurch sie in Shal'Aran einen Widerstand aufbauen konnte. Mit Verbündeten befreite sie die Nachtgeborenen von ihrer Abhängigkeit vom Nachtbrunnen und führte einen gemeinsamen Angriff mit Streitkräften von Horde und Allianz an, um Suramar zu befreien. Nachdem sie Anführerin geworden war, ließ sie den Nachtbrunnen verblassen und verpflichtete die Nachtgeborenen der Horde."},
    {era = "BfA", text = "Während des Vierten Krieges half Thalyssra der Horde dabei, die Zandalari aus Sturmwind zu befreien, unterstützte die Hordenflotte in Nazjatar und stellte sich später auf die Seite der Rebellion gegen Sylvanas Windläufer. Nach N'Zoths Niederlage trat sie dem Hordenrat bei."},
    {era = "SL", text = "Thalyssra war Zeugin des Rituals, das am Frostthron in der Eiskronenzitadelle das Tor zum Schlund öffnete. Nach der Niederlage des Kerkermeisters reisten Thalyssra und Lor'themar kurzzeitig nach Oribos in den Schattenlanden, um Sylvanas' Prozess beizuwohnen."},
    {era = "DF", text = "Thalyssra sah die Hordenexpedition zu den Dracheninseln aufbrechen. Sie und ihr inzwischen Ehemann Lor'themar Theron sinnierten darüber, wie glücklich sie waren, eine kurze Atempause gehabt zu haben, und neckten sich spielerisch darüber, wer wem den Antrag gemacht hatte. Später schloss sich Thalyssra Alexstrasza und ihren Verbündeten an, um das wachsende Amirdrassil im Smaragdgrünen Traum gegen Fyrakk den Brennenden zu verteidigen."},
    {era = "Midnight", text = "Thalyssra blieb in der Sonnenzornspitze in Silbermond, bis die Verderbnis des Sonnenbrunnens einsetzte. Sie bat Suramar um Hilfe, doch als keine Antwort kam, ging sie der Sache nach und enttarnte Infiltratoren von Twilight’s Blade. Nachdem sie die Ordnung wiederhergestellt hatte, führte sie die Armee der Nachtgeborenen nach Silbermond, um beim Angriff auf die Verschlingende Horde zu helfen."},
}

IMAGOdb.npcs.CAT_QUELTHALAS["lady_liadrin"].name = "Lady Liadrin"
IMAGOdb.npcs.CAT_QUELTHALAS["lady_liadrin"].race = "Blutelfe"
IMAGOdb.npcs.CAT_QUELTHALAS["lady_liadrin"].lore = "Einst eine hingebungsvolle Priesterin des Lichts, verlor Lady Liadrin nach der Vernichtung Silbermonds durch die Geißel ihren Glauben. Sie wurde die erste Blutritterin und bändigte das Licht zunächst durch den Entzug der Energien des Naaru M'uru. Durch die Wiederherstellung des Sonnenbrunnens fand sie Vergebung und wahre Hingabe. Heute ist sie als Matriarchin der Blutritter eine der edelsten Verfechterinnen des Leuchtenden Heeres und steht unerschütterlich zwischen ihrer Heimat und dem endlosen Hunger der Leere."
IMAGOdb.npcs.CAT_QUELTHALAS["lady_liadrin"].zones = {"Atal'Aman", "Dornogal", "Immersangwald", "Insel von Quel'Danas", "Orgrimmar", "Parhelionplaza", "Silbermond", "Sturmwind", "Zul'Aman"}
IMAGOdb.npcs.CAT_QUELTHALAS["lady_liadrin"].source = "warcraft.wiki.gg/wiki/Lady_Liadrin"
IMAGOdb.npcs.CAT_QUELTHALAS["lady_liadrin"].timeline = {
    {era = "WC3", text = "Überlebte die Invasion der Geißel auf Quel'Thalas, verlor ihren Glauben und legte den Priesterstab nieder, um zum Schwert zu greifen."},
    {era = "TBC", text = "Gründete den Orden der Blutritter, wandte sich von Kael'thas ab, schwor den Sha'tar die Treue und half bei der Reinigung des Sonnenbrunnens."},
    {era = "WoD", text = "Führte die Sonnenverehrer (Sunsworn) in Auchindoun im Kampf gegen den Schattenrat und die Brennende Legion an."},
    {era = "Legion", text = "Wurde Hochlord der Silbernen Hand und kämpfte an der Seite der Armee des Lichts auf der Dämonenwelt Argus."},
    {era = "BfA", text = "Rekrutierte die Nachtgeborenen für die Horde und befehligte Hordenstreitkräfte an der Kriegsfront im Arathihochland."},
    {era = "Midnight", text = "Koordiniert die Streitkräfte des Lichts und der Blutritter, um Quel'Thalas gegen die Leerenmächte von Xal'atath zu verteidigen."},
}

IMAGOdb.npcs.CAT_QUELTHALAS["grand_magister_rommath"].name = "Großmagister Rommath"
IMAGOdb.npcs.CAT_QUELTHALAS["grand_magister_rommath"].race = "Blutelf"
IMAGOdb.npcs.CAT_QUELTHALAS["grand_magister_rommath"].lore = "Als Großmagister von Quel'Thalas und Anführer der Magister ist Rommath der unangefochtene Meister der arkanen Künste in Silbermond. Er war einst ein loyaler Begleiter von Kael'thas Sonnenwanderer in der Scherbenwelt, kehrte jedoch in die Heimat zurück, um sein Volk vor dem magischen Verhungern zu retten. Er hegt einen tiefen, unversöhnlichen Hass auf die Kirin Tor, die die Blutelfen einst zum Tode verurteilten. Pragmatisch, scharfzüngig und unerbittlich loyal gegenüber den Sin'dorei, entfesselt er in Midnight die volle Macht seiner Magister, um die Leereninvasion zurückzuschlagen. Dass er sich bis nach Orgrimmar und tief ins Schattenhochland begibt, zeigt, dass er bereit ist, auch das gefährlichste arkane oder schattenhafte Wissen zu nutzen, um seine Heimat zu retten."
IMAGOdb.npcs.CAT_QUELTHALAS["grand_magister_rommath"].zones = {"Immersangwald", "Orgrimmar", "Schattenhochland", "Silbermond"}
IMAGOdb.npcs.CAT_QUELTHALAS["grand_magister_rommath"].source = "warcraft.wiki.gg/wiki/Grand_Magister_Rommath"
IMAGOdb.npcs.CAT_QUELTHALAS["grand_magister_rommath"].timeline = {
    {era = "WC3", text = "Entkam mit Kael'thas aus den Kerkern von Dalaran und folgte ihm in die zersplitterte Scherbenwelt."},
    {era = "TBC", text = "Kehrte nach Quel'Thalas zurück, half beim Wiederaufbau von Silbermond und lehrte die Blutelfen, Magie zu entziehen."},
    {era = "MoP", text = "Rettete Aethas Sonnenhäscher und weitere Blutelfen bei Jaina Prachtmeers blutiger Säuberung von Dalaran."},
    {era = "Legion", text = "Verteidigte Quel'Thalas gegen die Brennende Legion und unterstützte widerwillig die Tirisgarde."},
    {era = "BfA", text = "Spielte eine Schlüsselrolle bei der Rekrutierung der Nachtgeborenen als neue Verbündete der Horde."},
    {era = "Midnight", text = "Koordiniert die arkane Verteidigung im Immersangwald und sucht im Schattenhochland nach kriegsentscheidenden Ressourcen."},
}

IMAGOdb.npcs.CAT_QUELTHALAS["halduron_brightwing"].name = "Halduron Wolkenglanz"
IMAGOdb.npcs.CAT_QUELTHALAS["halduron_brightwing"].race = "Blutelf"
IMAGOdb.npcs.CAT_QUELTHALAS["halduron_brightwing"].lore =
[[
Halduron Wolkenglanz ist der amtierende Waldläufergeneral von Silbermond, der beste Freund von Lor'themar Theron und Schützer der Grenzen seiner Heimat. Er dient seinem Volk seit Jahrzehnten und stellt sich jeder Bedrohung mit unerschütterlichem Mut entgegen – von einfallenden Amani-Trollen bis hin zu den grauenvollen Untoten der Geißel.
    
Trotz seines tödlichen Eifers, den er seinen Feinden auf dem Schlachtfeld entgegenbringt, ist Halduron bei seinen Freunden als toleranter und lebensfroher Mann mit einem guten Auge für Details bekannt.]]
IMAGOdb.npcs.CAT_QUELTHALAS["halduron_brightwing"].zones = {"Die Höhle", "Harandar", "Immersangwald", "Silbermond"}
IMAGOdb.npcs.CAT_QUELTHALAS["halduron_brightwing"].source = "Cadash"
IMAGOdb.npcs.CAT_QUELTHALAS["halduron_brightwing"].timeline = {
    {era = "WC2", text = "Kämpfte gegen die Amani-Trolle und schaffte es, ihren Anführer Zul'jin gefangen zu nehmen."},
    {era = "WC3", text = "Überlebte den Angriff der Geißel und wurde nach Sylvanas' Tod zum Waldläufergeneral ernannt. Begann damit, die verbliebenen Streitkräfte der Geißel aus der zerstörten Stadt Silbermond zu vertreiben."},
    {era = "TBC", text = "Stellte sich entschieden gegen die Gründung der Blutritter. Verhandelte als Gesandter in Orgrimmar erfolgreich die Aufnahme der Blutelfen in die Horde."},
    {era = "WotLK", text = "Beaufsichtigte den Aufbau der Verteidigungsanlagen für den erneuerten Sonnenbrunnen."},
    {era = "Cata", text = "Merzte eine sich neu formierende Streitmacht der Amani aus und ging dabei ein kurzes Bündnis mit Vereesa Windläufer ein."},
    {era = "MoP", text = "Bekämpfte die wachsende Bedrohung durch die Zandalari auf der Insel des Donners."},
    {era = "Legion", text = "Schloss sich dem Verborgenen Pfad an und half dabei, Hakkar den Hundemeister zu besiegen."},
    {era = "Pre-DF", text = "Nahm als Trauzeuge an der Hochzeit von Lor'themar und Thalyssra teil."},
    {era = "Midnight", text = "Halduron war der Erste, der die Bedrohung durch die Lichtblüte bemerkte und sich mit Orweyna auf die Reise nach Harandar begab. Durch ein vorläufiges Bündnis mit den Haranir gelang es Halduron, die Lichtblüte in Schach zu halten und die Verteidigung von Silbermond zu stärken."},
}

IMAGOdb.npcs.CAT_QUELTHALAS["alleria_windrunner"].name = "Alleria Windläufer"
IMAGOdb.npcs.CAT_QUELTHALAS["alleria_windrunner"].race = "Leerenelfe"
IMAGOdb.npcs.CAT_QUELTHALAS["alleria_windrunner"].lore = "Die älteste der Windläufer-Schwestern und eine Legende unter den Elfen. Nach Jahrtausenden der Abwesenheit und dem endlosen Krieg im Wirbelnden Nether absorbierte Alleria die Essenz eines dunklen Naaru und wurde zur ersten Leerenelfe. Sie trägt die ständige Versuchung und das Flüstern der Schatten in sich. In Midnight kehrt sie in ihre Heimat zurück, um die zersplitterten Elfen in der Verteidigung von Quel'Thalas zu vereinen und sich ihrer persönlichen Nemesis, Xal'atath, an der Front entgegenzustellen."
IMAGOdb.npcs.CAT_QUELTHALAS["alleria_windrunner"].zones = {"Die Leerenspitze", "Leerensturm"}
IMAGOdb.npcs.CAT_QUELTHALAS["alleria_windrunner"].source = "warcraft.wiki.gg/wiki/Alleria_Windrunner"
IMAGOdb.npcs.CAT_QUELTHALAS["alleria_windrunner"].timeline = {
    {era = "WC2", text = "Führte die elfischen Waldläufer im Zweiten Krieg an und reiste mit der Allianz-Expedition durch das Dunkle Portal."},
    {era = "Legion", text = "Absorbierte die Macht des dunklen Naaru L'ura auf Argus und meisterte die Energien der Leere."},
    {era = "BfA", text = "Führte die Ren'dorei (Leerenelfen) als neue Verbündete in die Ränge der Allianz."},
    {era = "TWW", text = "Jagte Xal'atath als persönliche Nemesis durch Khaz Algar, um Azeroth vor dem Fall zu bewahren."},
    {era = "Midnight", text = "Kämpft in den gefährlichsten Zonen des Leerensturms und der Leerenspitze um das Überleben von Quel'Thalas."},
}

IMAGOdb.npcs.CAT_QUELTHALAS["vereesa_windrunner"].name = "Vereesa Windläufer"
IMAGOdb.npcs.CAT_QUELTHALAS["vereesa_windrunner"].race = "Hochelfe"
IMAGOdb.npcs.CAT_QUELTHALAS["vereesa_windrunner"].lore = "Die jüngste der Windläufer-Schwestern und die entschlossene Anführerin des Silbernen Bundes. Im Gegensatz zu ihren Schwestern blieb Vereesa dem Pfad der Hochelfen treu und schlug eine tiefe Wurzel in der Allianz. Nach dem schmerzhaften Verlust ihres Ehemanns Rhonin in Theramore widmete sie ihr Leben dem Schutz Azeroths und der Ausbildung ihrer Waldläufer. In Midnight kehrt sie nach Quel'Thalas zurück, um ihre Heimat gegen die Leere zu verteidigen und sich dem schmerzhaften Erbe ihrer Familie zu stellen."
IMAGOdb.npcs.CAT_QUELTHALAS["vereesa_windrunner"].zones = {"Immersangwald", "Insel von Quel'Danas", "Silbermond"}
IMAGOdb.npcs.CAT_QUELTHALAS["vereesa_windrunner"].source = "warcraft.wiki.gg/wiki/Vereesa_Windrunner"
IMAGOdb.npcs.CAT_QUELTHALAS["vereesa_windrunner"].timeline = {
    {era = "Pre-Classic", text = "Kämpfte während der Ereignisse von 'Der Tag des Drachen' in Grim Batol und traf dort ihren späteren Ehemann Rhonin."},
    {era = "WotLK", text = "Gründete den Silbernen Bund in Dalaran, um den Einfluss der Blutelfen innerhalb der Kirin Tor zu begrenzen."},
    {era = "MoP", text = "Unterstützte Jaina Prachtmeer bei der blutigen Säuberung von Dalaran nach der Zerstörung von Theramore."},
    {era = "Legion", text = "Schloss sich dem Verborgenen Pfad an und wurde nach über tausend Jahren mit ihrer Schwester Alleria vereint."},
    {era = "Midnight", text = "Führt die Waldläufer des Silbernen Bundes bei der Verteidigung von Silbermond und der Insel von Quel'Danas an."},
}

IMAGOdb.npcs.CAT_QUELTHALAS["shandris_feathermoon"].name = "Shandris Mondfeder"
IMAGOdb.npcs.CAT_QUELTHALAS["shandris_feathermoon"].race = "Nachtelfe"
IMAGOdb.npcs.CAT_QUELTHALAS["shandris_feathermoon"].lore = [[Shandris wurde während des Krieges der Ahnen zur Waise und hat daher Kriegserfahrungen aus erster Hand. Sie wurde von Tyrande Wisperwind und Malfurion Sturmgrimm adoptiert, zur Jägerin ausgebildet und hat sich seitdem zu einer der furchterregendsten Bogenschützinnen auf Azeroth entwickelt.
Shandris hat die Streitkräfte der Nachtelfen und der Allianz bereits mehrfach als Hochgeneralin der Armee der Schildwachen angeführt. Nachdem sie bei der Verteidigung des neuen Weltenbaums Amirdrassil an vorderster Front stand, führt sie die Nachtelfen nun als deren Anführerin.
Sie setzt sich mit großer Hingabe für die Menschen ein, die ihr am Herzen liegen. So hat sie sich sogar in die Reiche des Todes gewagt, um ihre Mutter zu retten. Heutzutage ist Shandris vor allem eines wichtig: Frieden.]]
IMAGOdb.npcs.CAT_QUELTHALAS["shandris_feathermoon"].zones = {"Amirdrassil", "Harandar", "Silbermond", "Insel von Quel'Danas"}
IMAGOdb.npcs.CAT_QUELTHALAS["shandris_feathermoon"].source = "Cadash - IMAGO Community"
IMAGOdb.npcs.CAT_QUELTHALAS["shandris_feathermoon"].timeline = {
    {era = "Ancient", text = "Wurde während der ersten Invasion der Brennenden Legion zur Waise und von Tyrande Wisperwind adoptiert."},
    {era = "WC3", text = "Kämpfte im Eschental und am Berg Hyjal gegen die Brennende Legion und Archimonde selbst."},
    {era = "Classic", text = "Wurde zur Hochgeneralin der Schildwachen befördert."},
    {era = "Cata", text = "Beschützte Kalimdor vor den Bedrohungen der Naga und begann mit der Aufnahme der Worgen in die Reihen der Schildwachen. Half bei der Verteidigung des Eschentals gegen Garrosh Höllschreis Invasion."},
    {era = "Pre-MoP", text = "Versuchte vergeblich, Theramore vor der Horde zu verteidigen."},
    {era = "Legion", text = "Schloss sich dem Verborgenen Pfad an und half dabei, Hakkar den Hundemeister zu besiegen."},
    {era = "Pre-BfA", text = "Vertrieb die Invasoren der Horde an der Dunkelküste, traf jedoch zu spät ein, um bei der Verteidigung von Teldrassil zu helfen."},
    {era = "BfA", text = "Koordinierte die Kriegsanstrengungen der Allianz auf Zandalar. Half Tyrande dabei, zur Nachtkriegerin zu werden, und schlug die Horde an der Dunkelküste ein weiteres Mal zurück. Führte die Streitkräfte der Allianz gegen Königin Azshara an, nachdem die Schlacht in ihrer Heimat gewonnen war."},
    {era = "SL", text = "Folgte ihrer Mutter Tyrande in die Schattenlande und befreite sie vom Fluch der Nachtkriegerin."},
    {era = "DF", text = "Verteidigte Amirdrassil vor Fyrakks Flammen und arbeitete in einem ersten Versuch, den Vierten Krieg ruhen zu lassen, mit den Verlassenen zusammen. Danach wurde sie von Tyrande und Malfurion zur neuen Anführerin der Nachtelfen ernannt."},
    {era = "Midnight", text = "Shandris unterstützte die Blutelfen gegen die Bedrohung durch die Leere und half bei der Erschaffung des Dämmerbrunnens."},
}

IMAGOdb.npcs.CAT_QUELTHALAS["aethas_sunreaver"].name = "Erzmagier Aethas Sonnenhäscher"
IMAGOdb.npcs.CAT_QUELTHALAS["aethas_sunreaver"].race = "Blutelf"
IMAGOdb.npcs.CAT_QUELTHALAS["aethas_sunreaver"].lore = "Erzmagier Aethas Sonnenhäscher blickt auf eine turbulente politische Karriere zurück. Lange Zeit versuchte er als Anführer der blutelfischen Magier in den Kirin Tor eine Brücke zwischen Dalaran und Silbermond zu schlagen. Nach der tragischen Zerstörung Dalarans in Khaz Algar wandte er sich von der alten Ordnung der Magier ab. In Midnight ist er nach Quel'Thalas zurückgekehrt, um seine Heimat gegen die Leere zu verteidigen. Als am Kriegstisch von Silbermond das Bündnis mit dem Silbernen Bund debattiert wird, ist Aethas zunächst strikt dagegen. Erst als Vereesa Windläufer ihm die Asche gefallener Sonnenhäscher und uralte Relikte als Friedensangebot überreicht, lenkt er im Angesicht der drohenden Vernichtung ein."
IMAGOdb.npcs.CAT_QUELTHALAS["aethas_sunreaver"].zones = {"Immersangwald", "Silbermond"}
IMAGOdb.npcs.CAT_QUELTHALAS["aethas_sunreaver"].source = "warcraft.wiki.gg/wiki/Aethas_Sunreaver"
IMAGOdb.npcs.CAT_QUELTHALAS["aethas_sunreaver"].timeline = {
    {era = "WotLK", text = "Gründete die Sonnenhäscher in Dalaran und sicherte der Horde einen Zufluchtsort in der Magierstadt."},
    {era = "MoP", text = "Wurde während der blutigen Säuberung von Dalaran durch Jaina Prachtmeer als Verräter inhaftiert und floh nach Silbermond."},
    {era = "TWW", text = "Überlebte den Absturz Dalarans in Khaz Algar und schwor der arroganten, weltpolitischen Einmischung der Kirin Tor ab."},
    {era = "Midnight", text = "Verteidigt Silbermond am Kriegstisch und überwindet seinen Hass auf den Silbernen Bund, um Quel'Thalas zu retten."},
}

IMAGOdb.npcs.CAT_QUELTHALAS["salandria"].name = "Salandria"
IMAGOdb.npcs.CAT_QUELTHALAS["salandria"].race = "Blutelfe"
IMAGOdb.npcs.CAT_QUELTHALAS["salandria"].lore = [[Salandria wurde bereits als kleines Kind zur Waise. Den Großteil ihrer Kindheit verbrachte sie im Waisenhaus von Shattrath in der Scherbenwelt, bis sie schließlich von Lady Liadrin adoptiert wurde, die einst selbst ein Adoptivkind war. Inzwischen ist Salandria zu einer Blutritterin herangewachsen, die mit Entschlossenheit und unerbittlichem Optimismus für Silbermond und das Heilige Licht kämpft.

Eine Sache wirft jedoch einen dunklen Schatten auf Salandrias Zukunft: Als Kind wurde sie von einem Mitglied des bronzenen Drachenschwarms bei Sichtkontakt angegriffen – angeblich für eine schreckliche Tat, die sie in ihrer Zukunft begehen wird. Es bleibt ein Rätsel, was diese ominöse Prophezeiung für sie und für die Zukunft von Azeroth bedeutet.]]
IMAGOdb.npcs.CAT_QUELTHALAS["salandria"].zones = {"Immersangwald", "Insel von Quel'Danas", "Silbermond"}
IMAGOdb.npcs.CAT_QUELTHALAS["salandria"].source = "Cadash - IMAGO Community"
IMAGOdb.npcs.CAT_QUELTHALAS["salandria"].timeline = {
    {era = "TBC", text = "Wurde während der Kinderwoche von einem Champion der Horde auf ein Abenteuer mitgenommen und sah zum ersten Mal die Welt außerhalb von Shattrath. Sie wurde bei Sichtkontakt von einem bronzenen Drachen angegriffen, und zwar für etwas, das sie in ihrer Zukunft tun oder zu tun versäumen wird. Später wurde Salandria von Lady Liadrin adoptiert."},
    {era = "SL", text = "Begab sich auf ihre erste Mission als Blutritteranwärterin und begleitete Champions der Horde in die Schattenlande, um eine Waffe gegen die neu erhobene Geißel in Quel'Thalas zu ermächtigen. Half gemeinsam mit Liadrin dabei den San'layn Vorath zu besiegen und die Bedrohung durch die Geißel vorerst zu beenden."},
    {era = "TWW", text = "Begleitete ihre Adoptivmutter nach Heilsturz, um Xal'ataths Streitkräfte zu bekämpfen. Erfuhr dort von der Heiligen Flamme der Arathi."},
    {era = "Midnight", text = "Verteidigte den Sonnenbrunnen gegen den vordringenden Leerensturm. Gemeinsam mit Taelia Fordragon rettete sie gefangene Paladine vor den Kultisten der Zwielichtsklinge und schaffte es, deren Anführer zur Strecke zu bringen."},
}

IMAGOdb.npcs.CAT_QUELTHALAS["magister_umbric"].name = "Magister Umbric"
IMAGOdb.npcs.CAT_QUELTHALAS["magister_umbric"].race = "Leerenelf"
IMAGOdb.npcs.CAT_QUELTHALAS["magister_umbric"].lore = "Magister Umbric ist der weise und pragmatische Anführer der Ren'dorei (Leerenelfen). Getrieben von dem Wunsch, Quel'Thalas um jeden Preis zu verteidigen, erforschte er einst verbotene Leerenmagie, was zu seiner Verbannung durch Großmagister Rommath führte. Im Exil fiel er beinahe dem Leerenprinzen Durzaan zum Opfer, wurde jedoch im letzten Moment von Alleria Windläufer gerettet. Obwohl er nun der Allianz dient, hat er die Liebe zu seiner Heimat nie verloren. Zuletzt leitete er eine Forschungsexpedition nach K'aresh, bis Arator der Erlöser ihn in Tazavesh aufsuchte und vor der drohenden Gefahr für Silbermond warnte. Ohne zu zögern sammelte Umbric sein Volk. In Midnight kehrt er trotz der bitteren Vergangenheit in seine Heimat zurück und richtet seine Meisterschaft über die Leere gegen Xal'ataths Streitkräfte."
IMAGOdb.npcs.CAT_QUELTHALAS["magister_umbric"].zones = {"Amirdrassil", "Die Leerenspitze", "Immersangwald", "Insel von Quel'Danas", "Leerensturm", "Schattenhochland", "Silbermond", "Sturmwind", "Terrasse der Magister"}
IMAGOdb.npcs.CAT_QUELTHALAS["magister_umbric"].source = "Quest: Die Geisterlande"
IMAGOdb.npcs.CAT_QUELTHALAS["magister_umbric"].timeline = {
    {era = "BfA", text = "Wurde für seine Leerenforschung aus Silbermond verbannt, in den Geisterlanden von der Leere transformiert und durch Alleria Windläufer gerettet."},
    {era = "BfA", text = "Schwor der Allianz die Treue und führte die Streitkräfte der Leerenelfen im Vierten Krieg bei entscheidenden Sabotageakten in Zandalar an."},
    {era = "TWW", text = "Errichtete das Lager Shan'dorah auf K'aresh und wurde nach dem Sieg über Dimensius in Tazavesh von Arator mobilisiert, um Silbermond zu retten."},
    {era = "Midnight", text = "Kehrt nach Quel'Thalas zurück, um den Sonnenbrunnen zu verteidigen, und operiert tief in den von der Leere verzerrten Zonen wie der Leerenspitze."},
}

IMAGOdb.npcs.CAT_QUELTHALAS["lady_darkglen"].name = "Lady Dunkeltal"
IMAGOdb.npcs.CAT_QUELTHALAS["lady_darkglen"].race = "Untote (Dunkle Waldläuferin)"
IMAGOdb.npcs.CAT_QUELTHALAS["lady_darkglen"].lore = "Lady Dunkeltal ist eine furchteinflößende Kommandantin der Dunklen Waldläufer und eine eiskalte, loyale Verteidigerin von Quel'Thalas. Als Untote, die einst unter dem Banner von Sylvanas Windläufer diente, entschied sie sich nach dem Verrat der Bansheekönigin unmissverständlich dafür, ihrer wahren Heimat treu zu bleiben. Bereits während des Vierten Krieges führte sie an der Kriegsfront der Dunkelküste verheerende Schläge gegen die Allianz aus. In Midnight bringt sie ihre tödliche, pragmatische Präzision zurück nach Hause. Sie operiert kompromisslos im Leerensturm und koordiniert die Verteidigung aus Silbermond, wo ihre Pfeile nun keine Nachtelfen mehr suchen, sondern die monströsen Entitäten der Leere lautlos durchbohren."
IMAGOdb.npcs.CAT_QUELTHALAS["lady_darkglen"].zones = {"Leerensturm", "Silbermond"}
IMAGOdb.npcs.CAT_QUELTHALAS["lady_darkglen"].source = "Quest: Die Schlacht an der Dunkelküste"
IMAGOdb.npcs.CAT_QUELTHALAS["lady_darkglen"].timeline = {
    {era = "BfA", text = "Diente als hochrangige Kommandantin der Dunklen Waldläufer an der Kriegsfront an der Dunkelküste gegen die Elune-Krieger."},
    {era = "Midnight", text = "Führt die Reihen der Dunklen Waldläufer an der Frontlinie im Leerensturm und in Silbermond an, um die Leereninvasion zurückzuschlagen."},
}

IMAGOdb.npcs.CAT_QUELTHALAS["riftblade_maella"].name = "Rissklinge Maella"
IMAGOdb.npcs.CAT_QUELTHALAS["riftblade_maella"].race = "Leerenelf"
IMAGOdb.npcs.CAT_QUELTHALAS["riftblade_maella"].lore = "Rissklinge Maella ist eine tödliche Nahkämpferin der Ren'dorei und gehört zur absoluten Vorhut von Magister Umbrics Streitkräften. Als Rissklinge meistert sie die Kunst, physische Kampfkraft mit der instabilen Magie des Telogrusrisses zu verschmelzen, um durch den Raum zu schneiden und ihre Feinde zu desorientieren. Dass die Leerenelfen in Midnight ihre alte Heimat Quel'Thalas verteidigen, ist für Maella eine Frage der Ehre und des Überlebens. Ihre Einsatzorte in der Leerenspitze und im Zentrum des tödlichen Leerensturms zeigen, dass sie unerschrocken dort kämpft, wo die Korruption der Leere am dichtesten ist. Sie nutzt die pure Dunkelheit gnadenlos als Waffe gegen die Leere selbst und verteidigt Silbermond mit eiskalter Präzision."
IMAGOdb.npcs.CAT_QUELTHALAS["riftblade_maella"].zones = {"Die Leerenspitze", "Leerensturm", "Silbermond"}
IMAGOdb.npcs.CAT_QUELTHALAS["riftblade_maella"].source = "Quest: Der Telogrusriss"
IMAGOdb.npcs.CAT_QUELTHALAS["riftblade_maella"].timeline = {
    {era = "BfA", text = "Wurde in den Geisterlanden transformiert und im Telogrusriss zur Rissklinge ausgebildet, um die Leere auf dem Schlachtfeld zu meistern."},
    {era = "Midnight", text = "Führt die Nahkampf-Vorhut der Ren'dorei im Leerensturm und in der Leerenspitze an, um den Sonnenbrunnen zu schützen."},
}

IMAGOdb.npcs.CAT_QUELTHALAS["astalor_bloodsworn"].name = "Astalor Blutschwur"
IMAGOdb.npcs.CAT_QUELTHALAS["astalor_bloodsworn"].race = "Blutelf"
IMAGOdb.npcs.CAT_QUELTHALAS["astalor_bloodsworn"].lore =
[[
Der Magier Astalor Blutschwur, Mitbegründer der Blutritter von Silbermond, suchte schon immer nach kreativen Wegen, seinem Volk zu helfen. Als Kael'thas den gefangenen Naaru M'uru nach Silbermond schickte, war es Astalor, der dazu riet, sich nicht einfach an dem heiligen Wesen zu laben, sondern stattdessen seine Energie abzuzapfen und zu nutzen, um die Blutelfen zu Paladinen zu machen. 

Angesichts der Bedrohung durch den Leerensturm, die über Silbermond schwebt, ersinnt Astalor erneut ungewöhnliche Methoden, um der Gefahr zu begegnen: Er jagt gefährliche Individuen und erntet ihre Qualen, um diese in mächtige Energie umzuwandeln. Es bleibt abzuwarten, welche Ergebnisse er erzielen wird...]]
IMAGOdb.npcs.CAT_QUELTHALAS["astalor_bloodsworn"].zones = {"Immersangwald", "Harandar", "Leerensturm", "Atal'Aman", "Silbermond"}
IMAGOdb.npcs.CAT_QUELTHALAS["astalor_bloodsworn"].source = "Cadash - IMAGO Community"
IMAGOdb.npcs.CAT_QUELTHALAS["astalor_bloodsworn"].timeline = {
    {era = "WC3", text = "Mitbegründer des Paladinordens der Blutritter, indem er einen Weg fand, wie die Elfen das heilige Licht wieder nutzen konnten – indem sie es einem gefangenen Naaru entzogen."},
    {era = "TBC", text = "Half bei der Verteidigung von Silbermond gegen ihren verräterischen Anführer Kael'thas."},
    {era = "WoD", text = "Versorgte die Streitkräfte der Blutelfen mit Golems, die durch Blutmagie angetrieben wurden, um Lady Liadrins Kreuzzug gegen die Eiserne Horde zu verstärken."},
    {era = "Midnight", text = "Experimentierte mit einer neuen Art von Magie – Qual – um die Verteidigung der Stadt zu stärken und das Überleben sowie den Wohlstand der Blutelfen zu sichern."},
}


-- CAT_LIGHT
IMAGOdb.npcs.CAT_LIGHT["mehlar_daemmerklinge"].name = "Mehlar Dämmerklinge"
IMAGOdb.npcs.CAT_LIGHT["mehlar_daemmerklinge"].race = "Blutelf"
IMAGOdb.npcs.CAT_LIGHT["mehlar_daemmerklinge"].lore = "Einst ein hoffnungsvoller Paladin-Schüler von Uther dem Lichtbringer, verfiel Mehlar Dämmerklinge nach dem Fall von Quel'Thalas in tiefe Verbitterung. Er gab Uther die Schuld am Untergang seiner Heimat und ließ in seinem rasenden Zorn sogar das Grab seines alten Meisters schänden. Durch die Läuterung der Blutritter fand er jedoch schließlich zur Rechtschaffenheit zurück, schloss sich der Silbernen Hand an und kämpft in Midnight als treuer Streiter des Lichts."
IMAGOdb.npcs.CAT_LIGHT["mehlar_daemmerklinge"].zones = {"Insel von Quel'Danas", "Parhelionplaza"}
IMAGOdb.npcs.CAT_LIGHT["mehlar_daemmerklinge"].source = "warcraft.wiki.gg/wiki/Mehlar_Dawnblade"
IMAGOdb.npcs.CAT_LIGHT["mehlar_daemmerklinge"].timeline = {
    {era = "Pre-Classic", text = "Studierte als junger Elf unter Uther dem Lichtbringer, fühlte sich beim Fall von Quel'Thalas jedoch von ihm im Stich gelassen."},
    {era = "Classic", text = "Entsandte Abenteurer vom Bollwerk aus, um das Grabmal seines ehemaligen Mentors Uther zu schänden."},
    {era = "Legion", text = "Schloss sich dem neugegründeten Orden der Silbernen Hand im Sanktum des Lichts an."},
    {era = "Midnight", text = "Verteidigt die Parhelionplaza und die Insel von Quel'Danas als erfahrener Blutritter gegen die Leere."},
}

IMAGOdb.npcs.CAT_LIGHT["danath_trollbann"].name = "Danath Trollbann"
IMAGOdb.npcs.CAT_LIGHT["danath_trollbann"].race = "Mensch"
IMAGOdb.npcs.CAT_LIGHT["danath_trollbann"].lore = "Der rechtmäßige Herrscher des Königreichs Stromgarde und langjähriger Held der Allianz. Danath Trollbann hat seit den Tagen des Zweiten Krieges für die Menschheit gekämpft und geblutet. Als Mitglied der Söhne Lothars knüpfte Danath während ihrer Zeit jenseits des Dunklen Portals enge Bande zu seinen Gefährten. Nachdem er nach Azeroth zurückgekehrt war, um den Mantel des Königs von Stromgarde anzunehmen, sucht Danath danach, sein Volk zu alter Größe zurückzuführen."
IMAGOdb.npcs.CAT_LIGHT["danath_trollbann"].zones = {"Arcantina", "Brennende Steppe", "Silbermond"}
IMAGOdb.npcs.CAT_LIGHT["danath_trollbann"].source = ""
IMAGOdb.npcs.CAT_LIGHT["danath_trollbann"].timeline = {
    {era = "WC2", text = "Diente unter General Turalyon als Kommandant und Stratege der Allianz von Lordaeron, schlug die orkische Horde zurück, die die Östlichen Königreiche bedrohte, und verfolgte sie jenseits des Dunklen Portals bis in ihre Heimatwelt Draenor."},
    {era = "TBC", text = "Führte die Streitkräfte der Ehrenfeste an und hielt die dämonischen Armeen der Höllenfeuerhalbinsel in Schach."},
    {era = "Legion", text = "Unterstützte heldenhafte Krieger beim Erwerb von Strom'kar, dem Kriegsbrecher. Dieses legendäre Schwert gehörte einst König Thoradin, dem ersten Menschenkönig und einem Vorfahren Danath Trollbanns. Nach dem Fall der Legion kehrte Danath in das lange zerstörte Stromgarde zurück, um die Stadt wiederaufzubauen und sein Geburtsrecht als König einzufordern."},
    {era = "BfA", text = "Kämpfte in der Schlacht um Stromgarde und führte seine Streitkräfte bei der Verteidigung ihrer Stadt. Der Kampf um das Arathihochland tobte zwischen Horde und Allianz und säte Chaos über die ehemals friedlichen Farmlande."},
    {era = "TWW", text = "Schloss sich den nach Khaz Algar entsandten Allianzstreitkräften an, um die Vorbotin Xal'atath und ihre Neruber zu bekämpfen. Schlug eine Rebellion nieder, die von der menschlichen Suprematistin Marran Trollbann angeführt wurde, Nichte Danaths und Regentin von Stromgarde in seiner Abwesenheit."},
    {era = "Midnight", text = "Half Arator, die Geschichte seines Vaters Turalyon und dessen Anteil an den Ereignissen des Zweiten Krieges zu verstehen. Führte Helden in die Arcantina ein – ein Zuhause fern der Heimat für Abenteurer aus ganz Azeroth."},
}

IMAGOdb.npcs.CAT_LIGHT["anduin_wrynn"].name = "Anduin Wrynn"
IMAGOdb.npcs.CAT_LIGHT["anduin_wrynn"].race = "Mensch"
IMAGOdb.npcs.CAT_LIGHT["anduin_wrynn"].lore = [[Der abwesende Hochkönig der Allianz, Anduin Llane Wrynn, hat das Gefühl, nur noch ein Schatten seines einstigen, strahlenden Selbst zu sein.
Er konnte einst das Licht wie kaum ein anderer wirken, heilte ganze Schlachtfelder und inspirierte so sein Volk, als unerschütterlicher Verteidiger von Gerechtigkeit, Toleranz und Frieden weiterzukämpfen. Das änderte sich, als er vom Kerkermeister beherrscht und gezwungen wurde, dabei zu helfen, die Welt zu vernichten, die er zu beschützen geschworen hatte – bei vollem Bewusstsein, aber unfähig, seine Taten zu kontrollieren. Selbst nachdem er sich befreien konnte, entkam er nicht der Angst, zu solch grausamen Taten fähig zu sein, und etwas in Anduin zerbrach. Er verschwand für Jahre und ließ sein Volk und sein Königreich zurück.
Nun, da Xal'atath alles bedroht, was ihm lieb und teuer ist, hat sich Anduin endlich wieder in den Kampf gestürzt und beginnt langsam, sein Selbstvertrauen und seinen Glauben an das Licht zurückzugewinnen.]]
IMAGOdb.npcs.CAT_LIGHT["anduin_wrynn"].zones = {"Insel von Quel'Danas", "Parhelionplatz", "Silbermond"}
IMAGOdb.npcs.CAT_LIGHT["anduin_wrynn"].source = "Cadash - IMAGO Community"
IMAGOdb.npcs.CAT_LIGHT["anduin_wrynn"].timeline = {
    {era = "Pre-WC3", text = "Verlor seine Mutter als Kleinkind beim Aufstand der Steinmetzgilde."},
    {era = "Classic", text = "Wurde während des Verschwindens seines Vaters kurzzeitig zum König von Sturmwind gekrönt. Wurde von Onyxia gefangen genommen, aber nach der Rückkehr seines Vaters, König Varian, von diesem gerettet."},
    {era = "WotLK", text = "Rettete das Leben seines Vaters während der Geißelinvasion von Sturmwind."},
    {era = "Pre-Cata", text = "Wurde Zeuge von Magnis Verwandlung in Kristall und löste später die Krise um die Thronfolge in Eisenschmiede, wodurch er Moiras Tod durch die Hand von König Varian verhinderte. Nach einem weiteren Streit mit seinem Vater ging Anduin später zu Velen, um bei ihm zu leben und den Weg als Priester des Lichts zu studieren."},
    {era = "Cata", text = "Deckte nach seiner Rückkehr nach Sturmwind eine Verschwörung des Schattenhammers auf."},
    {era = "MoP", text = "Erkundete den neu entdeckten Kontinent Pandaria und ließ sich von der Philosophie der Pandaren inspirieren. Versuchste persönlich, Garrosh Höllschreis Kriegshetze zu stoppen, scheiterte jedoch und wurde dabei schwer verletzt. Traf sich später mit dem Drachen Furorion und freundete sich mit ihm an."},
    {era = "Pre-WoD", text = "Wohnte Garroshs Prozess bei und verhinderte die Vergiftung des ehemaligen Kriegshäuptlings, wobei er sein eigenes Leben riskierte. Versuchte erfolglos, Furorion davon abzuhalten, Garrosh zu befreien."},
    {era = "Legion", text = "Wurde nach Varians Tod zum Hochkönig der Allianz gekrönt."},
    {era = "Pre-BfA", text = "Hieß die lichtgeschmiedeten Draenei und die Dunkeleisenzwerge in der Allianz willkommen. Verhandelte mit Sylvanas Windläufer ein Ereignis namens \"Die Zusammenkunft\", um willige Verlassene mit ihren lebenden Verwandten wiederzuvereinen. Zu Anduins Entsetzen endete der Austausch in einem Massaker."},
    {era = "BfA", text = "Führte die Allianz während des Vierten Krieges gegen die Horde an, wobei er die Armee in der Schlacht um Lordaeron persönlich befehligte. Schmiedete später ein Bündnis mit Varok Saurfang und unterstützte dessen Rebellion gegen Sylvanas, was schließlich den Krieg beendete und zu einem Waffenstillstand führte."},
    {era = "SL", text = "Wurde von den Streitkräften des Kerkermeisters gefangen genommen und durch Herrschaftsmagie kontrolliert, um als Waffe für den Tod zu dienen. Letztendlich befreite sich Anduin mit der Hilfe der Geister seines Vaters und Varok Saurfangs, blieb jedoch schwer traumatisiert zurück. Ernannte Turalyon zum Regenten von Sturmwind und verschwand."},
    {era = "TWW", text = "Wurde von Thrall überzeugt, sich dem Kampf gegen Xal'atath anzuschließen. Kämpfte in Heilsturz und fand dank Faerin Lothar seinen Glauben an das Licht wieder. Rettete Khadgars Leben."},
    {era = "Midnight", text = "Verhinderte Umbrics Hinrichtung und half dabei, den Sonnenbrunnen gegen die Leere zu verteidigen."},
}

IMAGOdb.npcs.CAT_LIGHT["turalyon"].name = "Hochexarch Turalyon"
IMAGOdb.npcs.CAT_LIGHT["turalyon"].race = "Mensch"
IMAGOdb.npcs.CAT_LIGHT["turalyon"].lore = "Hochexarch Turalyon ist eine legendäre Gestalt und einer der ersten fünf Paladine der Silbernen Hand. Nach seinem Verschwinden auf Draenor kämpfte er jahrtausendelang an der Seite der Naaru als Anführer des Leuchtenden Heeres gegen die Brennende Legion. Als ein vom Licht erfüllter Unsterblicher verkörpert er den unerschütterlichen Widerstand gegen die Mächte der Finsternis. In Midnight führt er die Verteidigung der heiligen Stätten von Quel'Thalas an und steht als leuchtendes Bollwerk gegen die vordringende Leere, die nun seine Heimat und seine Familie bedroht."
IMAGOdb.npcs.CAT_LIGHT["turalyon"].zones = {"Die Leerenspitze", "Immersangwald", "Insel von Quel'Danas", "Leerensturm", "Parhelionplaza", "Silbermond"}
IMAGOdb.npcs.CAT_LIGHT["turalyon"].source = "warcraft.wiki.gg/wiki/Turalyon"
IMAGOdb.npcs.CAT_LIGHT["turalyon"].timeline = {
    {era = "WC2", text = "Diente als rechte Hand von Anduin Lothar und übernahm nach dessen Tod das Kommando, um die Horde am Schwarzfels zu besiegen."},
    {era = "WC2", text = "Führte die Allianz-Expedition durch das Dunkle Portal nach Draenor und blieb zurück, um Azeroth zu schützen, als das Portal zerstört wurde."},
    {era = "Legion", text = "Rückkehr als Hochexarch des Leuchtenden Heeres und entscheidender Anführer im finalen Schlag gegen die Brennende Legion auf Argus."},
    {era = "BfA/TWW", text = "Diente als Regent von Sturmwind und Lordkommandant der Allianzstreitkräfte während der Abwesenheit von König Anduin."},
    {era = "Midnight", text = "Befehligt die Verteidigung der Insel von Quel'Danas und führt das Licht gegen die Leereninvasion von Xal'atath."},
}

IMAGOdb.npcs.CAT_LIGHT["prophet_velen"].name = "Prophet Velen"
IMAGOdb.npcs.CAT_LIGHT["prophet_velen"].race = "Draenei"
IMAGOdb.npcs.CAT_LIGHT["prophet_velen"].lore = "Der Prophet Velen ist das spirituelle Oberhaupt der Draenei und eines der weisesten Wesen des Kosmos. Er führte sein Volk vor 25.000 Jahren von Argus fort, um der Verderbnis der Brennenden Legion zu entkommen. Velen ist untrennbar mit der Geschichte der Elfen verbunden: Nach dem Verrat von Kael'thas nutzte er den Funken des gefallenen Naaru M'uru, um den Sonnenbrunnen zu reinigen und ihn als Quelle von heiligem und arkanem Licht wiederherzustellen. In Midnight kehrt er an diesen heiligen Ort zurück, um Quel'Thalas gegen die Leere beizustehen."
IMAGOdb.npcs.CAT_LIGHT["prophet_velen"].zones = {"Insel von Quel'Danas", "Silbermond"}
IMAGOdb.npcs.CAT_LIGHT["prophet_velen"].source = "warcraft.wiki.gg/wiki/Velen"
IMAGOdb.npcs.CAT_LIGHT["prophet_velen"].timeline = {
    {era = "Pre-Classic", text = "Floh von Argus und führte die Draenei über Jahrtausende durch den Kosmos, gejagt von der Legion."},
    {era = "TBC", text = "Stürzte mit der Exodar auf Azeroth ab und reinigte am Ende den Sonnenbrunnen mit dem Herzen von M'uru."},
    {era = "Legion", text = "Führte den Angriff auf Argus an und konfrontierte schließlich seinen einstigen Bruder Kil'jaeden."},
    {era = "Midnight", text = "Steht als Mentor und Verteidiger am Sonnenbrunnen, um die Leereninvasion von Xal'atath aufzuhalten."},
}

IMAGOdb.npcs.CAT_LIGHT["calia_menethil"].name = "Calia Menethil"
IMAGOdb.npcs.CAT_LIGHT["calia_menethil"].race = "Lichtgebundene Untote"
IMAGOdb.npcs.CAT_LIGHT["calia_menethil"].lore = "Prinzessin Calia Menethil ist die letzte Erbin der Menethil-Dynastie und die Schwester von Arthas. Nachdem sie jahrzehntelang unter falschem Namen im Verborgenen lebte, trat sie während des Vierten Krieges wieder ins Rampenlicht, wurde jedoch von Sylvanas Windläufer getötet. Durch ein beispielloses Wunder des Lichts kehrte sie als einzigartige, lichtdurchflutete Untote zurück. In Midnight steht sie am Sonnenbrunnen als lebendes Paradoxon und Symbol der Hoffnung, um die Mächte des Lichts gegen die alles verschlingende Leere zu koordinieren."
IMAGOdb.npcs.CAT_LIGHT["calia_menethil"].zones = {"Insel von Quel'Danas", "Silbermond"}
IMAGOdb.npcs.CAT_LIGHT["calia_menethil"].source = "warcraft.wiki.gg/wiki/Calia_Menethil"
IMAGOdb.npcs.CAT_LIGHT["calia_menethil"].timeline = {
    {era = "WC3", text = "Floh während der Zerstörung von Lordaeron durch ihren Bruder Arthas und lebte jahrelang unerkannt unter den Menschen."},
    {era = "Legion", text = "Offenbarte sich Alonsus Faol und schloss sich der Conclave im Sanktum des Lichts an, um Priestern im Kampf gegen die Legion zu helfen."},
    {era = "BfA", text = "Wurde bei der Zusammenkunft im Arathihochland von Sylvanas getötet und durch Saa'ra und Anduin als lichtgebundene Untote wiederbelebt."},
    {era = "DF", text = "Nahm ihren Platz im Rat der Desolaten ein, um die Verlassenen in eine neue Ära ohne Sylvanas zu führen."},
    {era = "Midnight", text = "Unterstützt die Verteidigung von Quel'Thalas und dient als diplomatische Brücke zwischen dem Licht und den Untoten."},
}

IMAGOdb.npcs.CAT_LIGHT["taelia_fordragon"].name = "Taelia Fordragon"
IMAGOdb.npcs.CAT_LIGHT["taelia_fordragon"].race = "Mensch"
IMAGOdb.npcs.CAT_LIGHT["taelia_fordragon"].lore = [[Als freundliche und eigensinnige junge Frau wurde Taelia kurz vor Ausbruch der Kriege gegen die Horde in Lordaeron geboren. Nachdem sie ihre Mutter in dem Konflikt verlor, schickte ihr Vater Bolvar sie zu ihrer eigenen Sicherheit in das Königreich Kul Tiras.
Sie wurde zu einer Paladinin und kämpfte loyal für Haus Prachtmeer, für ihre neue Heimat und später für die Allianz.
Taelia ist eine aufgeschlossene Persönlichkeit, die eine enge Freundschaft mit dem ehemaligen Piraten Flynn Schönwind pflegt. Taelia ist eine aufgeschlossene Persönlichkeit, die eine enge Freundschaft mit dem ehemaligen Piraten Flynn Schönwind pflegt. Nach der Erkenntnis des wahren Schicksals ihres Vaters Bolvar, der zum Lichkönig gemacht worden war, fand sie sogar freudig wieder mit ihm zusammen.
Nun hat der Sonnenbrunnen Taelia gerufen, damit sie Silbermonds Verteidigung ihre Stärke leiht.]]
IMAGOdb.npcs.CAT_LIGHT["taelia_fordragon"].zones = {"Immersangwald", "Insel von Quel'Danas", "Silbermond"}
IMAGOdb.npcs.CAT_LIGHT["taelia_fordragon"].source = "Cadash - IMAGO Community"
IMAGOdb.npcs.CAT_LIGHT["taelia_fordragon"].timeline = {
    {era = "WC2", text = "Wurde als kleines Kind nach Kul Tiras geschickt, um dem Zweiten Krieg zu entkommen. Sie wurde in die Obhut von Cyrus Wappenfall übergeben, der sie zu einer Paladinin erzog."},
    {era = "WotLK", text = "Die Briefe ihres Vaters blieben plötzlich aus und Taelia erfuhr, dass er im Krieg gegen den Lichkönig \"gestorben\" sei."},
    {era = "BfA", text = "Deckte Priscilla Aschenwinds Verrat an Haus Prachtmeer auf. Half dabei, den verderbten und wahnsinnigen Lord Sturmsang zu besiegen. Nach dem Vierten Krieg dankte König Anduin ihr persönlich für ihre Dienste."},
    {era = "SL", text = "Taelia erfuhr endlich vom wahren Schicksal ihres Vaters und beschloss, Bolvar in die Schattenlande zu folgen. Sie wurden wiedervereint und Bolvar – nun befreit von seiner Rolle als Lichkönig – schwor, die Bindung zu seiner Tochter wieder aufzubauen."},
    {era = "Midnight", text = "Verteidigte den Sonnenbrunnen gegen den vordringenden Leerensturm. Gemeinsam mit Salandria rettete sie gefangene Paladine vor den Kultisten der Zwielichtsklinge und schaffte es, deren Anführer zur Strecke zu bringen."},
}

IMAGOdb.npcs.CAT_LIGHT["moira_thaurissan"].name = "Moira Thaurissan"
IMAGOdb.npcs.CAT_LIGHT["moira_thaurissan"].race = "Zwergin (Dunkeleisen)"
IMAGOdb.npcs.CAT_LIGHT["moira_thaurissan"].lore = "Moira Thaurissan ist die Erbin des Throns von Eisenschmiede und Regentin des Dunkeleisen-Clans. Als Mitglied des Rats der Drei Hämmer hat sie die einst zerstrittenen Zwergenvölker mit eiserner Entschlossenheit und politischem Geschick vereint. Moira ist nicht nur eine fähige Diplomatin, sondern auch eine mächtige Priesterin. In Midnight repräsentiert sie die Zwerge am Sonnenbrunnen und bringt die geballte Macht der Dunkeleisen-Magie und des Lichts ein, um Quel'Thalas vor der totalen Finsternis zu bewahren."
IMAGOdb.npcs.CAT_LIGHT["moira_thaurissan"].zones = {"Insel von Quel'Danas", "Silbermond"}
IMAGOdb.npcs.CAT_LIGHT["moira_thaurissan"].source = "warcraft.wiki.gg/wiki/Moira_Thaurissan"
IMAGOdb.npcs.CAT_LIGHT["moira_thaurissan"].timeline = {
    {era = "Classic", text = "Verschwand aus Eisenschmiede und wurde die Gemahlin von Imperator Dagran Thaurissan in den Schwarzfelstiefen."},
    {era = "Cata", text = "Kehrte nach dem Erstarren ihres Vaters Magni nach Eisenschmiede zurück und half bei der Gründung des Rats der Drei Hämmer."},
    {era = "BfA", text = "Sicherte die offizielle Eingliederung der Dunkeleisen-Zwerge in die Allianz während des Vierten Krieges."},
    {era = "TWW", text = "Begleitete die Expedition nach Khaz Algar und unterstützte ihren Sohn Dagran II. bei seinen ersten diplomatischen Schritten."},
    {era = "Midnight", text = "Kämpft als führende Priesterin und Repräsentantin der Zwerge bei der Verteidigung des Sonnenbrunnens."},
}

IMAGOdb.npcs.CAT_LIGHT["hauptmann_fareeya"].name = "Hauptmann Fareeya"
IMAGOdb.npcs.CAT_LIGHT["hauptmann_fareeya"].race = "Lichtgeschmiedete Draenei"
IMAGOdb.npcs.CAT_LIGHT["hauptmann_fareeya"].lore = "Hauptmann Fareeya ist die oberste Feldkommandantin der Lichtgeschmiedeten Draenei und eine der vertrauenswürdigsten Offiziere von Hochexarch Turalyon. Während des tausendjährigen Krieges gegen die Brennende Legion leitete sie unzählige Einsätze an Bord der Vindicaar. Fareeya ist bekannt für ihre unerschütterliche Disziplin und ihren unbändigen Glauben an das heilige Licht. In Midnight führt sie das Kontingent der Lichtgeschmiedeten auf der Insel von Quel'Danas an, um den Sonnenbrunnen mit modernster Technologie und göttlicher Macht gegen die Leere zu verbarrikadieren."
IMAGOdb.npcs.CAT_LIGHT["hauptmann_fareeya"].zones = {"Insel von Quel'Danas"}
IMAGOdb.npcs.CAT_LIGHT["hauptmann_fareeya"].source = "warcraft.wiki.gg/wiki/Captain_Fareeya"
IMAGOdb.npcs.CAT_LIGHT["hauptmann_fareeya"].timeline = {
    {era = "Legion", text = "Diente als zentrale Kommandantin der Armee des Lichts während des Feldzugs auf Argus und unterstützte die Helden Azeroths."},
    {era = "BfA", text = "Führte die Lichtgeschmiedeten Draenei offiziell in die Allianz und überwachte die Ausbildung neuer Rekruten auf der Vindicaar."},
    {era = "Midnight", text = "Befehligt die Verteidigungsstellungen auf der Insel von Quel'Danas und koordiniert die Licht-Artillerie gegen die Leerenportale."},
}

IMAGOdb.npcs.CAT_LIGHT["delas_mondfang"].name = "Delas Mondfang"
IMAGOdb.npcs.CAT_LIGHT["delas_mondfang"].race = "Nachtelfe"
IMAGOdb.npcs.CAT_LIGHT["delas_mondfang"].lore = "Delas Mondfang ist eine historische Pionierin: Als ehemalige Priesterin von Elune war sie die erste Nachtelfe, die den Weg des Paladins einschlug und sich dem Orden der Silbernen Hand anschloss. Unter der Anleitung von Mehlar Dämmerklinge lernte sie, das heilige Licht mit den Traditionen ihres Volkes in Einklang zu bringen. In Midnight dient sie als lebendiges Symbol der Einheit am Sonnenbrunnen und beweist, dass der Glaube an das Licht keine Grenzen zwischen den Elfenvölkern kennt, wenn es um die Verteidigung Azeroths geht."
IMAGOdb.npcs.CAT_LIGHT["delas_mondfang"].zones = {"Insel von Quel'Danas"}
IMAGOdb.npcs.CAT_LIGHT["delas_mondfang"].source = "warcraft.wiki.gg/wiki/Delas_Moonfang"
IMAGOdb.npcs.CAT_LIGHT["delas_mondfang"].timeline = {
    {era = "WoD", text = "Diente als Mondpriesterin im Schattenmondtal auf Draenor und unterstützte die Allianz-Streitkräfte gegen die Eiserne Horde."},
    {era = "Legion", text = "Trat der Silbernen Hand bei und wurde im Sanktum des Lichts zur ersten Nachtelf-Paladinin geweiht."},
    {era = "Midnight", text = "Kämpft als erfahrene Paladinin auf der Insel von Quel'Danas für die Verteidigung des Sonnenbrunnens."},
}

IMAGOdb.npcs.CAT_LIGHT["lord_grayson_schattenbruch"].name = "Lord Grayson Schattenbruch"
IMAGOdb.npcs.CAT_LIGHT["lord_grayson_schattenbruch"].race = "Mensch"
IMAGOdb.npcs.CAT_LIGHT["lord_grayson_schattenbruch"].lore = "Lord Grayson Schattenbruch ist ein hochangesehener Paladin-Meister der Silbernen Hand. Jahrelang diente er in der Kathedrale des Lichts in Sturmwind als Mentor und war maßgeblich an der Ausbildung und Ausrüstung der ritterlichen Kavallerie beteiligt. Während der Invasion der Brennenden Legion schloss er sich dem reformierten Orden im Sanktum des Lichts an. In Midnight führt er seine jahrzehntelange Erfahrung an die Fronten von Quel'Thalas, um die Verteidigung des Sonnenbrunnens mit dem heiligen Zorn der Silbernen Hand zu unterstützen."
IMAGOdb.npcs.CAT_LIGHT["lord_grayson_schattenbruch"].zones = {"Insel von Quel'Danas"}
IMAGOdb.npcs.CAT_LIGHT["lord_grayson_schattenbruch"].source = "warcraft.wiki.gg/wiki/Lord_Grayson_Shadowbreaker"
IMAGOdb.npcs.CAT_LIGHT["lord_grayson_schattenbruch"].timeline = {
    {era = "Classic", text = "Unterrichtete junge Paladine in Sturmwind und half ihnen, ihre heiligen Streitrosse zu beschwören."},
    {era = "Legion", text = "Schloss sich der Conclave im Sanktum des Lichts an, um den Orden der Silbernen Hand gegen Sargeras' Legion zu vereinen."},
    {era = "Midnight", text = "Kommandiert Truppen der Silbernen Hand auf der Insel von Quel'Danas zur Verteidigung des Lichts."},
}

IMAGOdb.npcs.CAT_LIGHT["eadric_der_reine"].name = "Eadric der Reine"
IMAGOdb.npcs.CAT_LIGHT["eadric_der_reine"].race = "Mensch"
IMAGOdb.npcs.CAT_LIGHT["eadric_der_reine"].lore = "Eadric der Reine ist der Großchampion des Silbernen Kreuzzugs und einer der tugendhaftesten Paladine in der Geschichte des Ordens. Bekannt für seine Demut und seinen unerschütterlichen Glauben, diente er beim Großen Turnier in Nordend als letzte Prüfung für jene, die sich gegen den Lichkönig beweisen wollten. Trotz seiner hohen Position hat er sich stets einen Funken Humor und eine tiefe Menschlichkeit bewahrt. In Midnight führt er die Verteidigung der Parhelionplaza an und beweist, dass wahre Reinheit das hellste Bollwerk gegen die Schatten der Leere ist."
IMAGOdb.npcs.CAT_LIGHT["eadric_der_reine"].zones = {"Parhelionplaza"}
IMAGOdb.npcs.CAT_LIGHT["eadric_der_reine"].source = "warcraft.wiki.gg/wiki/Eadric_the_Pure"
IMAGOdb.npcs.CAT_LIGHT["eadric_der_reine"].timeline = {
    {era = "WotLK", text = "Diente als Großchampion des Silbernen Kreuzzugs und prüfte die Helden Azeroths in der Prüfung des Kreuzfahrers."},
    {era = "Legion", text = "Schloss sich der Conclave im Sanktum des Lichts an und unterstützte den Hohenlord bei der Führung des Ordens der Silbernen Hand."},
    {era = "Midnight", text = "Verteidigt die Parhelionplaza gegen die Leereninvasion und dient als moralischer Anker für die Truppen des Lichts."},
}

IMAGOdb.npcs.CAT_LIGHT["yalia_weisenwisper"].name = "Yalia Weisenwisper"
IMAGOdb.npcs.CAT_LIGHT["yalia_weisenwisper"].race = "Pandaren"
IMAGOdb.npcs.CAT_LIGHT["yalia_weisenwisper"].lore = "Yalia Weisenwisper ist eine hochrangige Priesterin der Schado-Pan aus Pandaria. Sie ist bekannt für ihre unerschütterliche Ruhe und ihre Fähigkeit, selbst in den dunkelsten Momenten spirituellen Frieden zu stiften. Während der Invasion der Brennenden Legion schloss sie sich der Conclave im Sanktum des Lichts an, um die Priester Azeroths zu vereinen. In Midnight bringt sie die meditativen Praktiken und Heilkünste ihres Volkes an die Parhelionplaza, wo sie als moralischer Anker und Heilerin für die vereinten Verteidiger von Quel'Thalas dient."
IMAGOdb.npcs.CAT_LIGHT["yalia_weisenwisper"].zones = {"Parhelionplaza"}
IMAGOdb.npcs.CAT_LIGHT["yalia_weisenwisper"].source = "warcraft.wiki.gg/wiki/Yalia_Sagewhisper"
IMAGOdb.npcs.CAT_LIGHT["yalia_weisenwisper"].timeline = {
    {era = "MoP", text = "Diente den Schado-Pan auf der Insel des Donners und unterstützte die Helden im Kampf gegen den Donnerkönig Lei Shen."},
    {era = "Legion", text = "Wurde ein Gründungsmitglied der Conclave im Sanktum des Lichts, um die Schatten der Legion mit innerer Stärke zu bekämpfen."},
    {era = "Midnight", text = "Bietet spirituellen Beistand und Heilung auf der Parhelionplaza während der Belagerung durch die Leere."},
}

IMAGOdb.npcs.CAT_LIGHT["lothraxion"].name = "Lothraxion"
IMAGOdb.npcs.CAT_LIGHT["lothraxion"].race = "Lichtgeschmiedeter Schreckenslord"
IMAGOdb.npcs.CAT_LIGHT["lothraxion"].lore = "Lothraxion ist eine absolute Seltenheit im Kosmos: Er ist ein Nathrezim (Schreckenslord), der vom Ur-Naaru Xe'ra mit dem Heiligen Licht geschmiedet wurde. Als hochrangiger Kommandant des Leuchtenden Heeres scheint seine Loyalität zum Licht unerschütterlich, auch wenn seine wahre Herkunft aus den Schattenlanden bei manchen stets tiefes Misstrauen weckt. In Midnight koordiniert er die gigantische militärische Offensive des Lichts und ist in fast jedem Krisengebiet von Quel'Thalas und dem Leerensturm an vorderster Front zu finden."
IMAGOdb.npcs.CAT_LIGHT["lothraxion"].zones = {"Insel von Quel'Danas", "Leerensturm", "Nexuspunkt Xenas", "Parhelionplaza", "Silbermond"}
IMAGOdb.npcs.CAT_LIGHT["lothraxion"].source = "warcraft.wiki.gg/wiki/Lothraxion"
IMAGOdb.npcs.CAT_LIGHT["lothraxion"].timeline = {
    {era = "Legion", text = "Offenbarte sich als lichtgeschmiedeter Dämon und unterstützte die Paladine im Sanktum des Lichts im Kampf gegen Balnazzar."},
    {era = "SL", text = "Ein Bericht in Revendreth (Feindliche Infiltration) ließ die dunkle Vermutung zu, dass er ein Schläfer-Agent von Graf Denathrius sein könnte."},
    {era = "Midnight", text = "Tritt als oberster militärischer Stratege des Lichts in unzähligen Zonen von Quel'Thalas in Erscheinung."},
}

IMAGOdb.npcs.CAT_LIGHT["alonsus_faol"].name = "Erzbischof Alonsus Faol"
IMAGOdb.npcs.CAT_LIGHT["alonsus_faol"].race = "Verlassener"
IMAGOdb.npcs.CAT_LIGHT["alonsus_faol"].lore = "Erzbischof Alonsus Faol ist eine der historisch wichtigsten Figuren Azeroths. Nach dem Fall von Sturmwind im Ersten Krieg war er es, der erkannte, dass reine Priester auf dem Schlachtfeld zu verwundbar waren. Gemeinsam mit Uther gründete er den Orden der Silbernen Hand und erschuf damit die ersten Paladine. Faol verstarb vor dem Dritten Krieg, wurde jedoch von der Geißel als Untoter erweckt. Durch unvorstellbare Willenskraft befreite er sich und nutzt das Heilige Licht weiterhin, obwohl es ihm als Verlassenem physische Schmerzen bereitet. In Midnight reist die lebende Legende zu den historischen Stätten der Allianz und nach Quel'Thalas, um die Verteidiger im Kampf gegen die Leere zu segnen."
IMAGOdb.npcs.CAT_LIGHT["alonsus_faol"].zones = {"Brennende Steppe", "Das Arathihochland", "Insel von Quel'Danas", "Östliche Pestländer", "Parhelionplaza", "Silbermond", "Tirisfal"}
IMAGOdb.npcs.CAT_LIGHT["alonsus_faol"].source = "warcraft.wiki.gg/wiki/Alonsus_Faol"
IMAGOdb.npcs.CAT_LIGHT["alonsus_faol"].timeline = {
    {era = "WC2", text = "Gründete den Orden der Silbernen Hand und weihte die ersten fünf Paladine (darunter Uther und Turalyon)."},
    {era = "Pre-WC3", text = "Verstarb eines natürlichen Todes und wurde in Faols Ruh in Tirisfal beigesetzt, bevor er von der Geißel erweckt wurde."},
    {era = "Legion", text = "Trat aus dem Schatten, um die Konklave im Netherlichttempel zu gründen und die Priester gegen die Legion zu führen."},
    {era = "Midnight", text = "Unternimmt eine weitreichende Pilgerreise über Azeroth bis nach Quel'Thalas, um die spirituellen Truppen des Lichts zu sammeln."},
}

IMAGOdb.npcs.CAT_LIGHT["tahu_weisenwind"].name = "Tahu Weisenwind"
IMAGOdb.npcs.CAT_LIGHT["tahu_weisenwind"].race = "Tauren"
IMAGOdb.npcs.CAT_LIGHT["tahu_weisenwind"].lore = "Tahu Weisenwind ist der spirituelle Begründer der Seher, der Priesterschaft der Tauren. Während die Menschen das heilige Licht verehren, lehrte Tahu sein Volk, das Licht durch An'she – die Sonne und das rechte Auge der Erdenmutter – zu kanalisieren. Seine Anwesenheit in Quel'Thalas während Midnight ist von gewaltiger diplomatischer und poetischer Bedeutung: Der Meister der Sonnenmagie der Horde steht den Blutelfen zur Seite, um deren eigene Sonnenquelle vor dem alles verschlingenden Hunger der Leere zu beschützen."
IMAGOdb.npcs.CAT_LIGHT["tahu_weisenwind"].zones = {"Insel von Quel'Danas", "Parhelionplaza", "Silbermond"}
IMAGOdb.npcs.CAT_LIGHT["tahu_weisenwind"].source = "warcraft.wiki.gg/wiki/Tahu_Sagewind"
IMAGOdb.npcs.CAT_LIGHT["tahu_weisenwind"].timeline = {
    {era = "WotLK", text = "Diskutierte mit Aponi Lichtmähne über das Ungleichgewicht zwischen Mu'sha (Mond) und An'she (Sonne) und legte so den Grundstein für die Tauren-Paladine und -Priester."},
    {era = "Cata", text = "Gründete offiziell den Orden der Seher und brachte den Tauren bei, die Macht von An'she zu wirken."},
    {era = "Legion", text = "Vertrat die Tauren in der Konklave im Netherlichttempel und kämpfte Seite an Seite mit den Priestern Azeroths."},
    {era = "Midnight", text = "Reist nach Silbermond und Quel'Danas, um das Licht von An'she in die dunkelste Schlacht der Elfen zu tragen."},
}

IMAGOdb.npcs.CAT_LIGHT["aponi_lichtmaehne"].name = "Aponi Lichtmähne"
IMAGOdb.npcs.CAT_LIGHT["aponi_lichtmaehne"].race = "Tauren"
IMAGOdb.npcs.CAT_LIGHT["aponi_lichtmaehne"].lore = "Aponi Lichtmähne ist die Oberste Häuptling der Sonnenläufer, dem Orden der Tauren-Paladine. Als ehemalige Kriegerin wurde sie im Krieg gegen die Geißel schwer verwundet. In langen Gesprächen mit Tahu Weisenwind erkannte sie, dass ihr Volk das Gleichgewicht der Erdenmutter aus den Augen verloren hatte. Indem sie sich der Macht von An'she (der Sonne) zuwandte, wurde sie die allererste Sonnenläuferin. In Midnight steht sie Schulter an Schulter mit den Paladinen der Silbernen Hand auf der Parhelionplaza, um das Licht von An'she gegen die absolute Finsternis zu entfesseln."
IMAGOdb.npcs.CAT_LIGHT["aponi_lichtmaehne"].zones = {"Insel von Quel'Danas", "Parhelionplaza"}
IMAGOdb.npcs.CAT_LIGHT["aponi_lichtmaehne"].source = "warcraft.wiki.gg/wiki/Aponi_Brightmane"
IMAGOdb.npcs.CAT_LIGHT["aponi_lichtmaehne"].timeline = {
    {era = "WotLK", text = "Wurde als Kriegerin in Nordend verwundet und legte mit Tahu den ideologischen Grundstein für die Sonnenmagie."},
    {era = "Cata", text = "Gründete offiziell die Sonnenläufer und wurde die erste Paladinin der Tauren."},
    {era = "Legion", text = "Schloss sich der reformierten Silbernen Hand im Sanktum des Lichts als hochrangiger Champion an."},
    {era = "Midnight", text = "Verteidigt Quel'Danas und die Parhelionplaza mit der geballten strahlenden Macht der Sonne."},
}

IMAGOdb.npcs.CAT_LIGHT["kriegskaplanin_senn"].name = "Kriegskaplanin Senn"
IMAGOdb.npcs.CAT_LIGHT["kriegskaplanin_senn"].race = "Lichtgeschmiedete Draenei"
IMAGOdb.npcs.CAT_LIGHT["kriegskaplanin_senn"].lore = "Kriegskaplanin Senn ist eine lichtgeschmiedete Draenei und eine der loyalsten Offizierinnen von Hochexarch Turalyon. Nach dem Vierten Krieg unterstützte sie ihn im Arathihochland bei der unerbittlichen Jagd nach Sylvanas Windläufer. Dort musste sie widerwillig mit der Leerenelfe Celosel Nachtgeber kooperieren – eine Erfahrung, die bei der lichtgeschmiedeten Veteranin physischen Ekel vor der Leerenmagie auslöste. In Midnight schließt sie sich der Vorhut des Lichts an. Mit heiligem Zorn und tiefer Abscheu vor den Schatten stellt sie sich den Eindringlingen am Sonnenbrunnen und im Leerensturm entgegen."
IMAGOdb.npcs.CAT_LIGHT["kriegskaplanin_senn"].zones = {"Die Leerenspitze", "Insel von Quel'Danas", "Leerensturm", "Parhelionplaza", "Silbermond"}
IMAGOdb.npcs.CAT_LIGHT["kriegskaplanin_senn"].source = "warcraft.wiki.gg/wiki/War_Chaplain_Senn"
IMAGOdb.npcs.CAT_LIGHT["kriegskaplanin_senn"].timeline = {
    {era = "BfA", text = "Jagte mit Turalyon im Arathihochland nach Sylvanas und zeigte offen ihren tiefen Ekel vor der Leerenmagie der Ren'dorei."},
    {era = "Midnight", text = "Dient in der Vorhut des Lichts und bekämpft die absolute Finsternis in den gefährlichsten Zonen von Quel'Thalas."},
}

IMAGOdb.npcs.CAT_LIGHT["faerin_lothar"].name = "Faerin Lothar"
IMAGOdb.npcs.CAT_LIGHT["faerin_lothar"].race = "Mensch"
IMAGOdb.npcs.CAT_LIGHT["faerin_lothar"].lore = [[Diese junge Paladinin ist ein Leuchtfeuer der Hoffnung und des Optimismus für ihre Mitstreiter. Oft ist sie die Erste, die sich in die Schlacht stürzt, um andere mit ihrem Schild und ihrem Glauben an das Licht zu beschützen. Faerin hatte schon immer einen Hang zur Gefahr und schlich sich als bloßes Kind an Bord eines Luftschiffs der Arathiexpedition nach Heilsturz. Bei der darauffolgenden Bruchlandung verlor sie ihr Auge und ihren Arm, lernte jedoch, weiterzukämpfen und ein Leben ohne sie zu führen.

Da sie nicht lange im Imperium gelebt hat, hegt Faerin kein Interesse an einer Rückkehr an ihren Geburtsort. Stattdessen möchte sie den Rest der Welt erkunden, insbesondere jene Orte, die für ihr Erbe als Arathi und eine Lothar von Bedeutung sind. Dieses Vorhaben muss jedoch warten, bis der Sonnenbrunnen gesichert ist.]]
IMAGOdb.npcs.CAT_LIGHT["faerin_lothar"].zones = {"Insel von Quel'Danas", "Parhelionplatz", "Silbermond"}
IMAGOdb.npcs.CAT_LIGHT["faerin_lothar"].source = "Cadash - IMAGO Community"
IMAGOdb.npcs.CAT_LIGHT["faerin_lothar"].timeline = {
    {era = "Pre-Legion", text = "Schlich sich an Bord eines der Luftschiffe der Heilsturz-Expedition und erlitt bei der Ankunft schwere körperliche Verletzungen. Wurde unter Generalin Stahlstoß zur Lampenanzünderin ausgebildet."},
    {era = "TWW", text = "Verteidigte Heilsturz gegen die Neruber und kämpfte an vorderster Front, um Xal'atath zurückzuschlagen. Freundete sich mit Anduin Wrynn an und half ihm, seinen Glauben an das Licht wiederzufinden. Half später dabei, Maran Trollbanns Rebellion in Stromgarde zu verhindern."},
    {era = "Midnight", text = "Wurde vom Sonnenbrunnen gerufen und half dabei, ihn gegen die Leere zu verteidigen."},
}

IMAGOdb.npcs.CAT_LIGHT["generalin_bellamy"].name = "Generalin Amias Bellamy"
IMAGOdb.npcs.CAT_LIGHT["generalin_bellamy"].race = "Mensch (Arathi)"
IMAGOdb.npcs.CAT_LIGHT["generalin_bellamy"].lore = "Generalin Amias Bellamy ist die ranghöchste militärische Kommandantin der Arathi-Expedition. Als pragmatische und kampfgehärtete Taktikerin führte sie in Heilsturz (Hallowfall) den endlosen Krieg gegen die Neruber und die Kreaturen der Tiefe, immer geleitet vom Glauben an die Heilige Flamme. Anders als Faerin Lothar, die oft das Herz der Arathi repräsentiert, ist Bellamy der eiserne Schild und das gezogene Schwert ihres Volkes. In Midnight hat sie ihre Truppen aus dem Untergrund an die Oberfläche verlegt. Unter ihrem Kommando beschränkt sich die Armee der Arathi nicht auf die reine Verteidigung, sondern führt offensive Gegenschläge bis tief in den Leerensturm und die Leerenspitze aus."
IMAGOdb.npcs.CAT_LIGHT["generalin_bellamy"].zones = {"Die Leerenspitze", "Insel von Quel'Danas", "Leerensturm", "Silbermond"}
IMAGOdb.npcs.CAT_LIGHT["generalin_bellamy"].source = "warcraft.wiki.gg/wiki/General_Amias_Bellamy"
IMAGOdb.npcs.CAT_LIGHT["generalin_bellamy"].timeline = {
    {era = "TWW", text = "Kommandiert die Arathi-Expedition in Heilsturz und hält die Stellung gegen die unerbittlichen Angriffe aus Azj-Kahet."},
    {era = "Midnight", text = "Führt die militärische Offensive der Arathi an der Oberfläche und kommandiert Truppen von Silbermond bis in das Zentrum des Leerensturms."},
}

IMAGOdb.npcs.CAT_LIGHT["arator"].name = "Arator der Retter"
IMAGOdb.npcs.CAT_LIGHT["arator"].race = "Halbelf"
IMAGOdb.npcs.CAT_LIGHT["arator"].lore =
[[
Als Alleria Windläufer und Turalyon nach Draenor aufbrachen, um Azeroth zu retten, ließen sie ihr neugeborenes Kind zurück. Arator wuchs bei Verwandten auf und kannte seine Eltern nur aus Legenden. Als Sohn zweier der berühmtesten Kriegshelden der Allianz hatte er stets damit zu kämpfen, aus ihrem Schatten herauszutreten und seine eigene Bestimmung zu finden. 
    
In dem Entschluss seinem Vater nachzueifern, wurde er Paladin der Allianz und stieg in den Rängen auf, indem er wahre Stärke und Glauben an das Licht bewies. Nun, da er wieder mit seinen Eltern vereint ist, kämpft Arator darum, seine Familie zusammenzuhalten, während sie in verschiedene Richtungen gezogen werden.]]
IMAGOdb.npcs.CAT_LIGHT["arator"].zones = {"Die Leerenspitze", "Arkantine", "Brennende Steppe", "Das Arathihochland", "Hort der Meister", "Immersangwald", "Insel von Quel'Danas", "Leerensturm", "Östliche Pestländer", "Parhelionplaza", "Silbermond", "Zul'Aman"}
IMAGOdb.npcs.CAT_LIGHT["arator"].source = "Cadash"
IMAGOdb.npcs.CAT_LIGHT["arator"].timeline = {
    {era = "WC2", text = "Wurde während des Zweiten Krieges geboren und auf Azeroth zurückgelassen, um von seiner Tante Vereesa Windläufer aufgezogen zu werden."},
    {era = "WC3", text = "Nachdem er den Dritten Krieg überlebt hatte, brachte Vereesa ihn nach Silbermond, wo er von Lor'themar und Liadrin in den Lehren des Lichts unterwiesen wurde."},
    {era = "TBC", text = [[Schloss sich der Expedition in die Scherbenwelt an, um nach seinen Eltern zu suchen. Diente unter dem Banner der Allianz als Paladin. Er erhielt den Beinamen "Arator der Retter".]]},
    {era = "Legion", text = "Trat dem Orden der Silbernen Hand bei und verteidigte den Netherlichttempel. Kämpfte auf Argus gegen die Brennende Legion und war endlich wieder mit seinen Eltern vereint."},
    {era = "TWW", text = "Versuchte Alleria und Sylvanas Windläufer für die bevorstehende Verteidigung von Silbermond zu mobilisieren."},
    {era = "Midnight", text = "Nachdem er vom Sonnenbrunnen gerufen wurde, kämpfte Arator an vorderster Front gegen die Leere. Er organisierte die Wiedervereinigung der Elfenmächte Azeroths, um einen gemeinsamen Feind zu bekämpfen."},
}
IMAGOdb.npcs.CAT_LIGHT["nolaki"].name = "Nolaki"
IMAGOdb.npcs.CAT_LIGHT["nolaki"].race = "Zandalari-Troll"
IMAGOdb.npcs.CAT_LIGHT["nolaki"].lore = "Nolaki ist eine Prälatin der Zandalari und das amtierende 'Vorbild der Aufopferung' in der neugegründeten Wache von Tyr. Ihre Entschlossenheit formte sich in der Schlacht von Dazar'alor: Damals blieb sie zurück, weil sie sich für zu unerfahren hielt, während ihre Mentorin Ra'wani Kanae im Kampf gegen die Allianz fiel. Von Schuldgefühlen geplagt, schwor Nolaki, das Licht bis zu ihrem letzten Atemzug zu nutzen, um Leben zu retten. Dies führte sie auf die Dracheninseln, wo sie von Travard für die Wache von Tyr rekrutiert wurde. In Midnight stellt sie sich ihrer ultimativen Prüfung: Sie reist auf die Insel von Quel'Danas, um dort an vorderster Front jede erdenkliche Aufopferung zu erbringen, damit der Sonnenbrunnen nicht der Leere anheimfällt."
IMAGOdb.npcs.CAT_LIGHT["nolaki"].zones = {"Insel von Quel'Danas"}
IMAGOdb.npcs.CAT_LIGHT["nolaki"].source = "warcraft.wiki.gg/wiki/Nolaki"
IMAGOdb.npcs.CAT_LIGHT["nolaki"].timeline = {
    {era = "BfA", text = "Blieb während der Schlacht von Dazar'alor zurück und verlor ihre geliebte Mentorin Ra'wani Kanae, was ihren unerschütterlichen Pfad als Paladinin prägte."},
    {era = "DF", text = "Reiste auf die Dracheninseln, trat der Wache von Tyr bei und übernahm stolz den Titel als Vorbild der Aufopferung."},
    {era = "Midnight", text = "Kämpft als externe Unterstützung der Licht-Orden auf der Insel von Quel'Danas gegen die heranrückende Leereninvasion."},
}

IMAGOdb.npcs.CAT_LIGHT["valunei"].name = "Valunei"
IMAGOdb.npcs.CAT_LIGHT["valunei"].race = "Lichtgeschmiedete Draenei"
IMAGOdb.npcs.CAT_LIGHT["valunei"].lore = "Valunei ist eine lichtgeschmiedete Draenei und das amtierende 'Vorbild des Mitgefühls' in der neugegründeten Wache von Tyr. Auf Argus erlernte sie die Wege des Lichts von ihrer Mentorin Verteidigerin Iriska und verbrachte unzählige Jahre damit, die Schrecken der Brennenden Legion zu bekämpfen. Sie verabscheut unnötiges Leid zutiefst und hat es sich zur Lebensaufgabe gemacht, Unschuldige zu heilen und zu beschützen. Nach ihrer Ankunft auf Azeroth wurde sie auf den Dracheninseln von Travard für die Wache von Tyr rekrutiert. In Midnight führt ihr unerschütterlicher Pfad des Mitgefühls sie auf die Insel von Quel'Danas. Dort setzt sie ihre bemerkenswerten Heilkräfte an vorderster Front ein, um das Leben der Verteidiger zu bewahren und den Sonnenbrunnen vor der Leere zu schützen."
IMAGOdb.npcs.CAT_LIGHT["valunei"].zones = {"Insel von Quel'Danas"}
IMAGOdb.npcs.CAT_LIGHT["valunei"].source = "warcraft.wiki.gg/wiki/Valunei"
IMAGOdb.npcs.CAT_LIGHT["valunei"].timeline = {
    {era = "Legion", text = "Kämpfte als Teil der Armee des Lichts auf Argus gegen die Brennende Legion und erlernte die Lehren der Paladine."},
    {era = "DF", text = "Wurde auf den Dracheninseln in die Wache von Tyr aufgenommen und nahm den Titel 'Vorbild des Mitgefühls' an."},
    {era = "Midnight", text = "Reist auf die Insel von Quel'Danas, um ihre Heilkunst im erbitterten Krieg gegen die Leereninvasion einzusetzen."},
}

IMAGOdb.npcs.CAT_LIGHT["mariella_ward"].name = "Mariella Ward"
IMAGOdb.npcs.CAT_LIGHT["mariella_ward"].race = "Mensch"
IMAGOdb.npcs.CAT_LIGHT["mariella_ward"].lore = "Mariella Ward ist eine ehemalige Priesterin der fanatischen Scharlachroten Offensive. Als sie die verdrehten und hasserfüllten Lehren ihres Ordens zu hinterfragen begann, wurde sie zur Ketzerin erklärt und sollte in der Drachenöde hingerichtet werden. Sie wurde im letzten Moment durch den Anführer der Priesterschaft gerettet und schwor daraufhin dem Konklave im Netherlichttempel ihre unerschütterliche Treue. Mariella kennt den Unterschied zwischen blindem Fanatismus und wahrer Hingabe an das Licht wie kaum eine Zweite. In Midnight reist sie als Vertreterin des Konklaves nach Quel'Thalas, um den Sonnenbrunnen an der Seite anderer Lichtträger vor der ultimativen Dunkelheit zu bewahren."
IMAGOdb.npcs.CAT_LIGHT["mariella_ward"].zones = {"Insel von Quel'Danas", "Parhelionplaza"}
IMAGOdb.npcs.CAT_LIGHT["mariella_ward"].source = "Quest: Champion: Mariella Ward"
IMAGOdb.npcs.CAT_LIGHT["mariella_ward"].timeline = {
    {era = "Legion", text = "Wurde vor der Hinrichtung durch die Scharlachrote Offensive gerettet und schloss sich als Champion dem Konklave der Priester an."},
    {era = "Midnight", text = "Reist zur Parhelionplaza und zur Insel von Quel'Danas, um mit den anderen Lichtträgern den Sonnenbrunnen zu verteidigen."},
}

IMAGOdb.npcs.CAT_LIGHT["hadwin"].name = "Hadwin"
IMAGOdb.npcs.CAT_LIGHT["hadwin"].race = "Mensch (Kul Tiraner)"
IMAGOdb.npcs.CAT_LIGHT["hadwin"].lore = "Hadwin ist ein stämmiger Kul Tiraner und das amtierende 'Vorbild der Gerechtigkeit' in der neugegründeten Wache von Tyr. Ursprünglich verehrte er die Gezeitenmutter und schloss sich dem Glutorden in Drustvar als Inquisitor an, um Lady Kronsteig im Kampf gegen die Hexenzirkel zu unterstützen. Zu seiner eigenen Überraschung entwickelte er dabei eine unerklärliche, aber tiefe Verbindung zum Heiligen Licht. Er ließ sich bei der Silbernen Hand zum Paladin ausbilden, verließ sie jedoch bald wieder, um seinem eigenen pragmatischen Kodex zu folgen. Auf den Dracheninseln fand er schließlich in der Wache von Tyr seine wahre Bestimmung. In Midnight steht Hadwin mit seinem massiven Schild an vorderster Front auf der Parhelionplaza, um dafür zu sorgen, dass dem unbarmherzigen Hunger der Leere mit eiserner Gerechtigkeit begegnet wird."
IMAGOdb.npcs.CAT_LIGHT["hadwin"].zones = {"Insel von Quel'Danas", "Parhelionplaza"}
IMAGOdb.npcs.CAT_LIGHT["hadwin"].source = "Quest: Ein Vorbild der Gerechtigkeit: Hadwin"
IMAGOdb.npcs.CAT_LIGHT["hadwin"].timeline = {
    {era = "BfA", text = "Kämpfte als Inquisitor für den Glutorden in Drustvar gegen die Hexen, entdeckte dabei das Licht und wurde später Paladin der Silbernen Hand."},
    {era = "DF", text = "Reiste auf die Dracheninseln, um Unrecht zu bekämpfen, und wurde von Travard als Vorbild der Gerechtigkeit in die Wache von Tyr aufgenommen."},
    {era = "Midnight", text = "Kämpft als Vorhut der Wache von Tyr auf der Parhelionplaza und Quel'Danas gegen die Mächte der Leere."},
}

IMAGOdb.npcs.CAT_LIGHT["talthis"].name = "Talthis"
IMAGOdb.npcs.CAT_LIGHT["talthis"].race = "Blutelf"
IMAGOdb.npcs.CAT_LIGHT["talthis"].lore = "Talthis ist ein Blutelfen-Paladin und das amtierende 'Vorbild der Ordnung' in der neugegründeten Wache von Tyr. Als Kind musste er mitansehen, wie seine Heimat Silbermond durch den Angriff der Geißel an das absolute Chaos fiel. Diese traumatische Erfahrung sowie das Überleben zahlloser globaler Katastrophen formten in ihm den unerschütterlichen Wunsch nach Struktur, Sicherheit und Ordnung. Als Travard ihn während eines Angriffs der Primalisten auf den Dracheninseln entdeckte, zögerte Talthis nicht lange und schloss sich der Wache von Tyr an. In Midnight kehrt der Sohn von Quel'Thalas in seine Heimat zurück – jedoch nicht in den Reihen der Blutritter, sondern als Teil der elitären Eingreiftruppe des Lichts, um dem ultimativen Chaos der Leere auf der Insel von Quel'Danas Einhalt zu gebieten."
IMAGOdb.npcs.CAT_LIGHT["talthis"].zones = {"Insel von Quel'Danas"}
IMAGOdb.npcs.CAT_LIGHT["talthis"].source = "Quest: Ein Vorbild der Ordnung: Talthis"
IMAGOdb.npcs.CAT_LIGHT["talthis"].timeline = {
    {era = "WC3", text = "Erlebte als Kind den verheerenden Fall von Silbermond durch die Geißel, was sein lebenslanges Streben nach Ordnung prägte."},
    {era = "DF", text = "Kämpfte beim Frostblitzangriff gegen die Primalisten auf den Dracheninseln und wurde von Travard als Vorbild der Ordnung rekrutiert."},
    {era = "Midnight", text = "Kehrt in seine Heimat zurück, um als Teil der Wache von Tyr das Chaos der Leereninvasion auf der Insel von Quel'Danas aufzuhalten."},
}

IMAGOdb.npcs.CAT_LIGHT["vindicator_boros"].name = "Verteidiger Boros"
IMAGOdb.npcs.CAT_LIGHT["vindicator_boros"].race = "Draenei"
IMAGOdb.npcs.CAT_LIGHT["vindicator_boros"].lore = "Verteidiger Boros ist ein unbeugsamer Veteran der Hand von Argus und ein hochrangiger Champion der Silbernen Hand. In der Zeit nach dem Absturz der Exodar auf Azeroth führte er auf der Blutmythosinsel den erbitterten Kampf der Draenei gegen die Sabotageakte der Blutelfen an. Diese ehemals tiefe Feindschaft macht seine Präsenz in Midnight umso bemerkenswerter: Im Angesicht der totalen Auslöschung durch die Leere lässt Boros den alten Groll ruhen. Mit seinem gigantischen Hammer und der reinen Macht des Lichts steht er heute auf der Parhelionplaza Schulter an Schulter mit genau jenen Elfen, die er einst bekämpfte, um den Sonnenbrunnen zu schützen."
IMAGOdb.npcs.CAT_LIGHT["vindicator_boros"].zones = {"Insel von Quel'Danas", "Parhelionplaza"}
IMAGOdb.npcs.CAT_LIGHT["vindicator_boros"].source = "Quest: Die Hand von Argus"
IMAGOdb.npcs.CAT_LIGHT["vindicator_boros"].timeline = {
    {era = "TBC", text = "Führte die Truppen der Hand von Argus auf der Blutmythosinsel im Kampf gegen Kael'thas' Sonnenfalken an."},
    {era = "Legion", text = "Schloss sich der neugegründeten Silbernen Hand an und diente dem Hochlord als treuer Champion im Kampf gegen die Legion."},
    {era = "Midnight", text = "Kämpft als Vorhut der Silbernen Hand auf der Parhelionplaza und der Insel von Quel'Danas gegen die Leereninvasion."},
}

IMAGOdb.npcs.CAT_LIGHT["sunwalker_dezco"].name = "Sonnenläufer Dezco"
IMAGOdb.npcs.CAT_LIGHT["sunwalker_dezco"].race = "Tauren"
IMAGOdb.npcs.CAT_LIGHT["sunwalker_dezco"].lore =
[[
Als Häuptling des Stammes der Morgenwandler ist der standhafte Taure Sonnenläufer Dezco ein Verehrer von An'she, der Sonne, und schöpft seine gewaltige Macht aus ihrem Licht. Nachdem er unvorstellbare persönliche Tragödien erlitten hatte, die einen schwächeren Geist gebrochen hätten, reiste Dezco auf der Suche nach seiner Bestimmung in ferne Länder. Obwohl ihn seine Reisen über ferne Kontinente und sogar in die Reiche des Jenseits führten, fühlte er sich unter dem einfachen Volk von Azeroth am wohlsten.

Dezco, der sich dem Dienst verschrieben hat, gilt unter den Sonnenläufern als erfahrener Veteran und weiser Ältester. Da sich erneut ein Konflikt anbahnt, übernimmt er die Rolle des anleitenden Mentors und lehrt seine Verbündeten, dass das Beschreiten des Pfades des Lichts nicht nur inbrünstigen Eifer, sondern auch tiefes Mitgefühl erfordert.]]
IMAGOdb.npcs.CAT_LIGHT["sunwalker_dezco"].zones = {"Arathihochland"}
IMAGOdb.npcs.CAT_LIGHT["sunwalker_dezco"].source = "Lewi - IMAGO Community"
IMAGOdb.npcs.CAT_LIGHT["sunwalker_dezco"].timeline = {
    {era = "Pre-MoP", text = "Kämpfte auf mehreren Hordenmissionen über verschiedene Kontinente hinweg an der Seite seiner engsten Verbündeten gegen Drachen, Untote und Streitkräfte der Allianz."},
    {era = "MoP", text = "Führte den Stamm der Morgenwandler nach Pandaria und durchlebte den tragischen Tod seiner Frau und eines seiner neugeborenen Söhne. Er wurde zu einem unerbittlichen Verteidiger des Tals der Ewigen Blüten und half letztendlich dabei, Garrosh Höllschrei zu stürzen, um dessen Entweihung des heiligen Landes zu stoppen."},
    {era = "WoD", text = "Reiste auf der Suche nach Frieden nach Draenor, wo er vorübergehend mit einer Sucht nach dem beruhigenden, warmen Licht eines Sonnenkristalls der Arakkoa kämpfte, um seine immense Trauer zu bewältigen."},
    {era = "Legion", text = "Schloss sich den Reihen der Silbernen Hand an und unterstützte die Verteidigungsbemühungen des Paladinordens vom Sanktum des Lichts aus."},
    {era = "BfA", text = "Verließ die Silberne Hand infolge der gespaltenen Loyalitäten und politischen Unruhen des Vierten Krieges."},
    {era = "SL", text = "Durchschritt den Schleier in die Schattenlande und kam in Oribos an, in der Hoffnung, die Seelen seiner verstorbenen Frau und seines Sohnes zu finden, um ihnen eine letzte Botschaft der Liebe zu überbringen."},
    {era = "TWW", text = "Reiste an der Seite anderer prominenter Tauren an die Küsten von Khaz Algar und überwachte voller Stolz das Kampftraining seines nun erwachsenen Sohnes Kor."},
    {era = "Midnight", text = "Fungiert als anleitender Mentor für die Sonnenläufer und ihre Verbündeten und lehrt eine neue Generation, dass das Führen des Lichts viel mehr bedeutet als bloße Gewalt."},
}


-- CAT_NEUTRAL
IMAGOdb.npcs.CAT_NEUTRAL["allari_die_seelenfresserin"].name = "Allari die Seelenfresserin"
IMAGOdb.npcs.CAT_NEUTRAL["allari_die_seelenfresserin"].race = "Blutelf"
IMAGOdb.npcs.CAT_NEUTRAL["allari_die_seelenfresserin"].lore = "Als rücksichtslose Dämonenjägerin der Illidari ist Allari eine Meisterin der feindlichen Verhöre. Bewaffnet mit der Sichel der Seelen, nutzt sie ihre teufelserfüllten Kräfte, um die Gedanken ihrer Feinde freizulegen und ihre Essenzen zu ernten. In Midnight weitet sie ihre gnadenlosen Jagdmethoden auf eine kosmische Ebene aus und verfolgt die Mächte der Leere bis in den Telogrusriss und auf die zerrüttete Welt K'aresh."
IMAGOdb.npcs.CAT_NEUTRAL["allari_die_seelenfresserin"].zones = {"Der Telogrusriss", "Eredath", "K'aresh", "Leerensturm"}
IMAGOdb.npcs.CAT_NEUTRAL["allari_die_seelenfresserin"].source = "warcraft.wiki.gg/wiki/Allari_the_Souleater"
IMAGOdb.npcs.CAT_NEUTRAL["allari_die_seelenfresserin"].timeline = {
    {era = "TBC", text = "Reiste zum Schwarzen Tempel in der Scherbenwelt und schwor Illidan Sturmgrimm die Treue."},
    {era = "Legion", text = "Kämpfte auf Mardum und an der Verheerten Küste und nutzte ihre Sichel, um Dämonen in der Teufelshammer zu verhören."},
    {era = "BfA", text = "Beteiligte sich am Vierten Krieg und sicherte Stellungen im Arathihochland und an der Dunkelküste."},
    {era = "Midnight", text = "Führt unabhängige, fraktionsübergreifende Vorstöße in kosmischen Leeren-Zonen wie K'aresh und Eredath an."},
}

IMAGOdb.npcs.CAT_NEUTRAL["decimus"].name = "Decimus"
IMAGOdb.npcs.CAT_NEUTRAL["decimus"].race = "Domanaar"
IMAGOdb.npcs.CAT_NEUTRAL["decimus"].lore = [[Charismatisch, gefährlich, arglistig – all diese Adjektive beschreiben Decimus treffend.
Wie alle Domanaar des Leerensturms wurde er Xal'atath unterworfen und erkannte ihre Überlegenheit an. Doch sich dauerhaft dem Willen einer anderen Entität zu beugen, entsprach nicht Decimus' Plänen. Und so beginnt er nun ein riskantes Spiel – mit den Champions von Azeroth als seinen Spielfiguren.]]
IMAGOdb.npcs.CAT_NEUTRAL["decimus"].zones = {"Leerensturm"}
IMAGOdb.npcs.CAT_NEUTRAL["decimus"].source = "Cadash"
IMAGOdb.npcs.CAT_NEUTRAL["decimus"].timeline = {
    {
        era = "Midnight",
        text = [[Schmiedete ein Bündnis mit den Leerenelfen, bot ihnen einen sicheren Stützpunkt und unterstützte sie bei ihren Unternehmungen im Leerensturm. Praktischerweise entledigte er sich dabei ganz nebenbei rivalisierender Domanaar.
Er konstruierte die Leerenschmiede – einen Fokuspunkt dunkler Energie –, die seinen neuen Verbündeten als Machtquelle dienen sollte. Es bleibt jedoch unklar, ob dies ihr wahrer und einziger Zweck ist.]],
    }
}

IMAGOdb.npcs.CAT_NEUTRAL["king_mrgl-mrgl"].name = "König Mrgl-Mrgl"
IMAGOdb.npcs.CAT_NEUTRAL["king_mrgl-mrgl"].race = "Murloc"
IMAGOdb.npcs.CAT_NEUTRAL["king_mrgl-mrgl"].lore = "Hinter der großartigen Murloc-Fassade von König Mrgl-Mrgl verbirgt sich ein einfacher Nachtelfenforscher. Ursprünglich Teil einer druidischen Forschungsgruppe, ist König Mrgl-Mrgl weit über seine bescheidenen Anfänge hinausgewachsen. Nachdem er sich als Murloc verkleidet hatte, um ihre Populationen in Nordend zu beobachten, wurde Mrgl-Mrgl von den Kreaturen verehrt und zu ihrem König erwählt. Obwohl er anfangs zögerte, nahm er die Rolle an und blickte nie zurück. Seitdem wird König Mrgl-Mrgl dabei gesehen, wie er den Murlocs Azeroths hilft und sie vor äußeren Bedrohungen schützt."
IMAGOdb.npcs.CAT_NEUTRAL["king_mrgl-mrgl"].zones = {"Zul'Aman"}
IMAGOdb.npcs.CAT_NEUTRAL["king_mrgl-mrgl"].source = "austin - IMAGO Community"
IMAGOdb.npcs.CAT_NEUTRAL["king_mrgl-mrgl"].timeline = {
    {era = "WotLK", text = "Schloss sich der Expeditionstruppe von D.E.H.T.A. in der Boreanischen Tundra an und begann mithilfe seiner unorthodoxen Verkleidung seine Forschungen über Murlocs. In einer Zeit der Not wählten die Murlocs ihn zu ihrem König; König Mrgl-Mrgl verteidigte den hilflosen Stamm und festigte seinen Platz als König."},
    {era = "Legion", text = "An der Seite des jungen Murloc-Helden Murky versuchte König Mrgl-Mrgl, die Swamprock-Murlocs in Hochberg von ihren gewalttätigen Wegen abzubringen. Mit der Hilfe des Königs konnte Murky sich als friedlicherer Anführer seines neuen „Murkloc“-Stammes etablieren."},
    {era = "BfA", text = "In Nazjatar ist König Mrgl-Mrgl als Betreiber von Mrgl’s Bar and Grill anzutreffen, einem Etablissement, das ausschließlich die Murlocs der Gegend bewirtet."},
    {era = "Midnight", text = "Nachdem er die Murlocs von Zul'Aman gegen einen angreifenden Stamm von Tiefsee-Murlocs verteidigt hatte, wurde König Mrgl-Mrgl zum Loa der Murlocs erklärt. Seine Verehrer hielten ihn in ihrem sumpfgebundenen Tempel gefangen — als ihren Gott und Retter."},
}

IMAGOdb.npcs.CAT_NEUTRAL["monte_gazlowe"].name = "Handelsprinz Monte Gazlowe"
IMAGOdb.npcs.CAT_NEUTRAL["monte_gazlowe"].race = "Goblin"
IMAGOdb.npcs.CAT_NEUTRAL["monte_gazlowe"].lore = "Monte Gazlowe ist einer der genialsten Ingenieure Azeroths und hat eine steile Karriere hinter sich. Einst der neutrale Chef von Ratchet und Erbauer von Orgrimmar, trat er nach dem Verrat von Jastor Gallywix dessen Nachfolge an. Heute ist er der Handelsprinz des Bilgewasserkartells und vertritt die Goblins im Rat der Horde. In The War Within bewies er wahre Führungsstärke, als er die Expedition tief hinab nach Lorenhall (Undermine) führte, um Gallywix' Schwarzblut-Syndikat zu zerschlagen und eine Revolution gegen die korrupten Kartelle anzuzetteln. In Midnight verlegt er seine brillante Ingenieurskunst an die Fronten von Harandar und der Höhle, um die Verteidigungslinien der vereinten Streitkräfte mit massiver goblinischer Feuerkraft auszustatten."
IMAGOdb.npcs.CAT_NEUTRAL["monte_gazlowe"].zones = {"Die Höhle", "Harandar"}
IMAGOdb.npcs.CAT_NEUTRAL["monte_gazlowe"].source = "warcraft.wiki.gg/wiki/Monte_Gazlowe"
IMAGOdb.npcs.CAT_NEUTRAL["monte_gazlowe"].timeline = {
    {era = "WC3", text = "Arbeitete als freier Auftragnehmer für Thrall und leitete als Chefingenieur den Bau der Hauptstadt Orgrimmar."},
    {era = "BfA", text = "Übernahm nach Gallywix' Flucht die Führung des Bilgewasserkartells und integrierte die Goblins fest in den Rat der Horde."},
    {era = "WoD", text = "Leitete als Architekt den Aufbau der Horde-Garnison (Frostwall) auf dem alternativen Draenor."},
    {era = "TWW", text = "Führte die Truppen in Patch 11.1 nach Lorenhall, um die Ausbeutung durch Gallywix und Xal'atath zu stoppen."},
    {era = "Midnight", text = "Errichtet in Harandar und der Höhle schwer bewaffnete technische Außenposten zur militärischen Unterstützung."},
}

IMAGOdb.npcs.CAT_NEUTRAL["fiona"].name = "Fiona"
IMAGOdb.npcs.CAT_NEUTRAL["fiona"].race = "Worgen"
IMAGOdb.npcs.CAT_NEUTRAL["fiona"].lore = "Fiona ist eine Worgen-Abenteurerin, Heiligpriesterin und eine der treuesten Seelen Azeroths. Berühmt wurde sie durch ihre legendäre Karawane in den Östlichen Pestländern, mit der sie unzählige Abenteurer – allen voran ihre besten Freunde, die Paladine Gidwin Goldzopf und Tarenar Sonnenhieb – sicher durch Feindesland kutschierte. Sie ist das personifizierte Herzblut der Zivilisten und unabhängigen Helfer in Azeroth. In Midnight hat sie ihre Karawane auf die Insel von Quel'Danas gesteuert. Sie gehört zwar keinem militärischen Orden an, unterstützt die Verteidiger des Lichts jedoch unermüdlich mit ihrer Heilkunst, ihren Vorräten und ihrem Pragmatismus."
IMAGOdb.npcs.CAT_NEUTRAL["fiona"].zones = {"Insel von Quel'Danas"}
IMAGOdb.npcs.CAT_NEUTRAL["fiona"].source = "warcraft.wiki.gg/wiki/Fiona"
IMAGOdb.npcs.CAT_NEUTRAL["fiona"].timeline = {
    {era = "Cata", text = "Kutschierte mit ihrer berühmten Karawane durch die Östlichen Pestländer und unterstützte den Silbernen Kreuzzug."},
    {era = "WoD", text = "Schloss sich der Allianz-Expedition auf Draenor an und diente als Heiligpriesterin und Kräuterkundige in der Garnison (Schattenmondtal)."},
    {era = "DF", text = "Reiste mit der Drachenschuppenexpedition ins Basislager der Küste des Erwachens, nachdem sie wieder mit Gidwin und Tarenar vereint war."},
    {era = "Midnight", text = "Erscheint auf der Insel von Quel'Danas als zivile Unterstützerin und Heilerin für die vereinten Verteidiger gegen die Leere."},
}

IMAGOdb.npcs.CAT_NEUTRAL["valeera_sanguinar"].name = "Valeera Sanguinar"
IMAGOdb.npcs.CAT_NEUTRAL["valeera_sanguinar"].race = "Blutelfe"
IMAGOdb.npcs.CAT_NEUTRAL["valeera_sanguinar"].lore = "Valeera Sanguinar ist eine Meisterassassine, die Loyalität über Fraktionsgrenzen stellt. Als ehemalige Sklavin und Gladiatorin kämpfte sie in der Arena an der Seite von Varian Wrynn und Broll Bärenpranke, was eine tiefe Freundschaft zum Haus Wrynn schmiedete. Lange Zeit kämpfte sie gegen die Sucht nach Teufelsmagie, nachdem sie die Essenz des Schreckenslords Kathra'natir in sich aufnahm, um ihre Freunde zu retten. In Midnight kehrt sie in ihre alte Heimat Quel'Thalas zurück. Dort begleitet sie die Helden Azeroths als Delve-Companion in die gefährlichsten Gewölbe und Tiefen, um die Ausbreitung der Leere mit tödlicher Präzision zu stoppen."
IMAGOdb.npcs.CAT_NEUTRAL["valeera_sanguinar"].zones = {"Akademischer Aufruhr", "Atal'Aman", "Die Grollgrube", "Harandar", "Hort der Meister", "Immersangwald", "Leerensturm", "Parhelionplaza", "Silbermond", "Zul'Aman"}
IMAGOdb.npcs.CAT_NEUTRAL["valeera_sanguinar"].source = "warcraft.wiki.gg/wiki/Valeera_Sanguinar"
IMAGOdb.npcs.CAT_NEUTRAL["valeera_sanguinar"].timeline = {
    {era = "Pre-WotLK", text = "Kämpfte als Gladiatorin des Blutrings an der Seite von Lo'Gosh (Varian Wrynn) und Broll Bärenpranke."},
    {era = "WotLK", text = "Begleitete Varian Wrynn bei der Schlacht um Unterstadt und unterstützte ihn als persönliche Leibwache."},
    {era = "Legion", text = "Schloss sich den Ungekrönten (Schurken-Orden) in der Halle der Schatten an und half, den Dämon Kathra'natir endgültig zu verbannen."},
    {era = "BfA", text = "Fungierte als Geheimkurierin zwischen Anduin Wrynn, Baine Bluthuf und Varok Saurfang, um Sylvanas' Herrschaft zu untergraben."},
    {era = "Midnight", text = "Durchstreift als Delve-Companion die gefährlichsten Instanzen und Tiefen von Quel'Thalas, um die Leereninvasion zu bekämpfen."},
}

IMAGOdb.npcs.CAT_NEUTRAL["freya"].name = "Freya"
IMAGOdb.npcs.CAT_NEUTRAL["freya"].race = "Titanenwächterin"
IMAGOdb.npcs.CAT_NEUTRAL["freya"].lore = "Freya ist eine der mächtigsten Titanenwächterinnen Azeroths, erschaffen vom Pantheon und ermächtigt von Eonar, um das Leben auf dem Planeten zu formen und zu schützen. Sie war es, die den Smaragdgrünen Traum kanalisierte und die ersten Samen pflanzte, aus denen die großen Weltenbäume hervorgingen. Nachdem sie in Ulduar vom Alten Gott Yogg-Saron korrumpiert und durch Abenteurer befreit wurde, zog sie sich weitgehend zurück. In Midnight greift sie jedoch direkt in das Geschehen ein: Harandar beherbergt ein uraltes, biolumineszierendes Ökosystem und die empfindlichen Wurzeln, die das Überleben des Lebens selbst sichern. Freya tritt aus dem Schatten der Geschichte, um diesen unberührten Dschungel als unnachgiebige Wächterin gegen den alles verschlingenden Hunger der Leere zu verteidigen."
IMAGOdb.npcs.CAT_NEUTRAL["freya"].zones = {"Harandar"}
IMAGOdb.npcs.CAT_NEUTRAL["freya"].source = "warcraft.wiki.gg/wiki/Freya"
IMAGOdb.npcs.CAT_NEUTRAL["freya"].timeline = {
    {era = "Ancient", text = "Formte den Smaragdgrünen Traum und erschuf die ersten Refugien des Lebens (wie den Un'Goro-Krater, das Sholazarbecken und das Tal der Ewigen Blüten)."},
    {era = "WotLK", text = "Wurde von Yogg-Saron in Ulduar wahnsinnig gemacht, bis Azeroths Helden sie besiegten und von der Verderbnis reinigten."},
    {era = "Midnight", text = "Wacht persönlich über den unberührten Dschungel von Harandar, um die Ausbreitung der Leere in das empfindliche Ökosystem zu verhindern."},
}


-- CAT_EBON_BLADE
IMAGOdb.npcs.CAT_EBON_BLADE["darion_mograine"].name = "Hochlord Darion Mograine"
IMAGOdb.npcs.CAT_EBON_BLADE["darion_mograine"].race = "Mensch"
IMAGOdb.npcs.CAT_EBON_BLADE["darion_mograine"].lore =
[[
Darion Mograine war ein Paladin der Argentumdämmerung, der, nachdem er sein Leben geopfert hatte, um die Seele seines Vaters zu retten, als Todesritter wiedererweckt wurde, um als einer der mächtigsten Kommandanten des Lichkönigs zu dienen. Nachdem er sich in der Schlacht um die Kapelle des hoffnungsvollen Lichts aus der Kontrolle des Lichkönigs befreit hatte, gründete er die Schwarze Klinge, eine Gruppe von Todesrittern, die sich dem Schutz Azeroths vor allen Bedrohungen verschrieben hat, die ihm begegnen.

Nun, an der Spitze der Vier Reiter, verteidigt Darion die Heimat des Argentumkreuzzugs gegen die Geißel, während sie Azeroths Champion bei der Zerstörung der Verschlingenden Brut unterstützen.]]
IMAGOdb.npcs.CAT_EBON_BLADE["darion_mograine"].zones = {"Östliche Pestländer"}
IMAGOdb.npcs.CAT_EBON_BLADE["darion_mograine"].source = "Nebb - IMAGO Community"
IMAGOdb.npcs.CAT_EBON_BLADE["darion_mograine"].timeline = {
    {era = "WC3", text = "Schloss sich der Silbernen Hand an und half im Kampf gegen die Geißel."},
    {era = "Classic", text = "Rief die Hilfe der Argentumdämmerung für einen Angriff auf Naxxramas an, eroberte den Aschenbringer von seinem untoten Vater zurück, nachdem er die Vier Reiter besiegt hatte. Opferte sich, um die Argentumdämmerung zu retten, und wurde als Todesritter wiedererweckt."},
    {era = "WotLK", text = "Wurde zum Anführer der Todesritter von Acherus ernannt. Befreite sich aus der Kontrolle des Lichkönigs und gründete die Schwarze Klinge. Unterstützte den Krieg gegen die Geißel in Eiskrone und Zul'Drak. Half dabei, den Lichkönig in der Eiskronenzitadelle zu besiegen. Erfuhr, dass Bolvar Fordragon zum neuen Lichkönig gekrönt wurde."},
    {era = "WoD", text = "Reiste nach alternativem Draenor, um Ner'zhuls Geheimnisse zu entdecken — in dem Versuch, Bolvar zu retten."},
    {era = "Legion", text = "Half Bolvar und dem auserwählten Todesritter dabei, die neuen Vier Reiter zu erwecken. Wurde tödlich verwundet, als er versuchte, Tirion Fordring wiederzubeleben, wurde jedoch von Bolvar erhoben, um die Reiter anzuführen."},
    {era = "BfA", text = "Sammelte gefallene Champions der Horde und der Allianz, um sie als nächste Generation von Todesrittern zu erheben. Entsandte die neue Generation persönlich in die Hauptstädte ihrer Fraktionen."},
    {era = "SL", text = "Trat als Anführer der Schwarzen Klinge zurück und übergab den Titel nach der Zerstörung des Helms der Herrschaft an Bolvar. Rief die Champions Azeroths zusammen, um sich mit Bolvar zu treffen und in den Schlund vorzudringen. Half beim Angriff auf das Sanktum der Herrschaft. Kehrte nach dem Sieg über den Kerkermeister nach Azeroth zurück, um die Geißel zurückzuhalten."},
    {era = "Midnight", text = "Verteidigte gemeinsam mit den übrigen Vier Reitern die Kapelle des hoffnungsvollen Lichts gegen die Geißel."},
}

IMAGOdb.npcs.CAT_EBON_BLADE["thassarian"].name = "Thassarian"
IMAGOdb.npcs.CAT_EBON_BLADE["thassarian"].race = "Mensch"
IMAGOdb.npcs.CAT_EBON_BLADE["thassarian"].lore = [[Thassarian trat als junger Mann der Armee von Lordaeron bei, in der Hoffnung, in die Fußstapfen seines Vaters zu treten. Er folgte Prinz Arthas auf dessen Expedition nach Nordend. Dort wurde er erschlagen und als Todesritter wiedererweckt. Während er unter der Kontrolle des Lichkönigs stand, beging er viele Gräueltaten und tötete sogar seine eigene Mutter. Nachdem er aus der Kontrolle des Lichkönigs befreit worden war, schloss er sich den Rittern der Schwarzen Klinge an und wurde der erste Todesritter, der der Allianz diente. Damit bewies er der Menschheit einmal mehr seine unerschütterliche Loyalität. Trotz der Spaltung der Fraktionen pflegt Thassarian eine starke, komplizierte Bruderschaft mit dem Todesritter der Horde, Koltira Todesweber – ein im Tod geschmiedetes Band, das seinen weiteren Weg stark beeinflusst.]]
IMAGOdb.npcs.CAT_EBON_BLADE["thassarian"].zones = {"Östliche Pestländer"}
IMAGOdb.npcs.CAT_EBON_BLADE["thassarian"].source = "druidian - IMAGO Community"
IMAGOdb.npcs.CAT_EBON_BLADE["thassarian"].timeline = {
    {era = "WC3", text = "Thassarian trat der Armee bei und folgte Prinz Arthas nach Nordend, um Mal'Ganis zu jagen. Dort wurde er von Falric getötet und anschließend von Arthas in einen Todesritter verwandelt. Als Soldat der Geißel wurde er gezwungen, Lordaeron und Quel'Thalas anzugreifen."},
    {era = "Pre-WotLK", text = "Thassarian wurde nach Acherus entsandt, um die Kapelle des Hoffnungsvollen Lichts anzugreifen. Die Todesritter wurden jedoch besiegt und Thassarian selbst vom Geist seines Vaters davon überzeugt, die Waffen niederzulegen. Da er nicht länger unter der Kontrolle des Lichkönigs stand, reiste Thassarian nach Sturmwind und traf sich mit König Varian Wrynn, der die Ritter der Schwarzen Klinge als Verbündete akzeptierte."},
    {era = "WotLK", text = "Thassarian schloss sich der Allianz in Nordend an, um gegen die Geißel zu kämpfen und seine Schwester zu retten. Später unterstützte er die Kriegsanstrengungen in Eiskrone, indem er sein Wissen über die Geißel nutzte, um ihre Verteidigung zu schwächen und einen Weg zur Zitadelle zu öffnen. An der Seite der Ritter der Schwarzen Klinge trat er dem Lichkönig entgegen, war jedoch gezwungen, sich zurückzuziehen."},
    {era = "WoD", text = "Er reiste in das alternative Draenor, um Ner'zhuls Geheimnisse zu lüften und Bolvar zu retten."},
    {era = "Cata", text = "Thassarian führte die Streitkräfte der Allianz in Andorhal gegen die Verlassenen an. Später kämpfte er am Berg Hyjal gegen Ragnaros' Streitkräfte."},
    {era = "Legion", text = "Thassarian half dem neuen Todesgebieter dabei, die neuen Vier Reiter zu erwecken. Später kämpfte er in der Schlacht um die Exodar. Er rettete Koltira Todesweber aus Unterstadt."},
    {era = "SL", text = "Folgte Bolvar Fordragon in die Schattenlande, um Sylvanas Windläufer aufzuhalten."},
    {era = "Midnight", text = "Half bei der Verteidigung der Kapelle des Hoffnungsvollen Lichts in den Östlichen Pestländern."},
}


-- CAT_VOID
IMAGOdb.npcs.CAT_VOID["nexuskoenig_salhadaar"].name = "Nexuskönig Salhadaar"
IMAGOdb.npcs.CAT_VOID["nexuskoenig_salhadaar"].race = "Astraler"
IMAGOdb.npcs.CAT_VOID["nexuskoenig_salhadaar"].lore = "Einst der machthungrige Anführer des Ätherneums im Nethersturm der Scherbenwelt. Salhadaar versuchte schon damals, sein Volk in reine Leerenenergie umzuwandeln, bevor er von Abenteurern besiegt wurde. In Midnight kehrt er als vollendete Entität der Leere zurück. Er befehligt nun Truppen im Leerensturm unter Xal'ataths Banner und ist der lebende Beweis dafür, was aus den Astralen wird, wenn sie sich der Dunkelheit völlig hingeben."
IMAGOdb.npcs.CAT_VOID["nexuskoenig_salhadaar"].zones = {"Leerensturm"}
IMAGOdb.npcs.CAT_VOID["nexuskoenig_salhadaar"].source = "warcraft.wiki.gg/wiki/Nexus-King_Salhadaar"
IMAGOdb.npcs.CAT_VOID["nexuskoenig_salhadaar"].timeline = {
    {era = "TBC", text = "Führte das Ätherneum im Nethersturm an und wurde getötet, als er versuchte, die Energien der Leere zu meistern."},
    {era = "Midnight", text = "Kehrt als mächtige Leerenentität im Leerensturm zurück, um Xal'ataths Befehle auszuführen."},
}

IMAGOdb.npcs.CAT_VOID["l_ura"].name = "L'ura"
IMAGOdb.npcs.CAT_VOID["l_ura"].race = "Leeren-Naaru"
IMAGOdb.npcs.CAT_VOID["l_ura"].lore = "L'ura ist das tragische Herzstück der Leeren-Invasion in Quel'Thalas. Einst ein Wesen des Lichts, das die Flucht der Draenei von Argus deckte, fiel sie nach Äonen der Gefangenschaft in den Leerenstatus. Nachdem Alleria Windläufer ihre Essenz im Sitz des Triumvirats absorbiert hatte, diente L'ura jahrelang als Quelle von Allerias Leerenmacht. In Midnight erreicht ihr Schicksal einen schrecklichen Höhepunkt: Xal'atath stach Alleria am Leerenturm in den Rücken und riss L'uras Essenz gewaltsam aus ihr heraus. Mit dieser Macht korrumpierte die Vorbotin den Sonnenbrunnen zum 'Darkwell'. Als finale Begegnung beim Marsch auf Quel'Danas muss L'ura endgültig bezwungen werden, um die vollständige Transformation des Brunnens in eine Quelle der totalen Finsternis zu verhindern."
IMAGOdb.npcs.CAT_VOID["l_ura"].zones = {"Insel von Quel'Danas"}
IMAGOdb.npcs.CAT_VOID["l_ura"].source = "warcraft.wiki.gg/wiki/L'ura"
IMAGOdb.npcs.CAT_VOID["l_ura"].timeline = {
    {era = "Ancient", text = "Blieb bei der Flucht von Argus zurück, um die Legion aufzuhalten, und wurde auf Befehl Kil'jaedens im Sitz des Triumvirats eingesperrt."},
    {era = "Legion", text = "Wurde von Alleria Windläufer und Abenteurern besiegt, wobei Alleria ihre Essenz vollständig in sich aufnahm."},
    {era = "Midnight", text = "Wurde im Leerensturm von Alleria manifestiert, um den Naaru T'era zu besiegen. Später von Xal'atath am Leerenturm aus Alleria gerissen, um den Sonnenbrunnen in den 'Darkwell' zu verwandeln."},
    {era = "Midnight", text = "Dient als Endboss beim 'Marsch auf Quel'Danas', um die Rettung des Sonnenbrunnens zu verhindern."},
}


-- CAT_AMANI
IMAGOdb.npcs.CAT_AMANI["zaljarra"].name = "Zul'jarra"
IMAGOdb.npcs.CAT_AMANI["zaljarra"].race = "Waldtroll"
IMAGOdb.npcs.CAT_AMANI["zaljarra"].lore =
[[
Als Älteste von zwei Geschwistern wurde Zul'jarra als Kriegerin erzogen. Als Enkelin des berüchtigten Zul'jin wurde sie in den traditionellen Bräuchen unterwiesen, die Loa zu verehren und ihren künftigen Stamm mit Ehre zu führen. Die Zeit zu führen kam früher, als irgendjemand erwartet hätte, denn sie war noch ein Kind, als sowohl ihr Großvater als auch ihr Vater in der Tempelstadt Zul-Aman erschlagen wurden. Da man sie für zu jung zum Herrschen hielt, regierte ihre Mutter, Zarama, die Amani jahrzehntelang. Als die verkrüppelte Zarama schließlich versuchte, den Titel an ihre Tochter zu übergeben, focht ein rivalisierender Häuptling Zul'jarras Recht zu herrschen an. Weil sie verspätet zum Duell zurückkehrte, traf Zul'jarra nur ein, um zu sehen, wie ihre Mutter an ihrer Stelle fiel, was sie zwang, Zarama zu rächen und ihr Geburtsrecht im Blut zu beanspruchen.

Nun, Jahre später, versucht sie, die Stämme von Zul'Aman endlich wieder mit den Loa-Göttern zu verbinden — unterstützt, wenn auch gelegentlich bekämpft, von ihrem Bruder, Zul'jan.]]
IMAGOdb.npcs.CAT_AMANI["zaljarra"].zones = {"Atal'Aman", "Das Herz des Zorns", "Immersangwald", "Insel von Quel'Danas", "Nalorakks Bau", "Zul'Aman"}
IMAGOdb.npcs.CAT_AMANI["zaljarra"].source = "Cadash - IMAGO Community"
IMAGOdb.npcs.CAT_AMANI["zaljarra"].timeline = {
    {era = "TBC", text = "Verlor ihren Vater Man'ye und ihren Großvater Zul'jin, als sie noch ein kleines Kind war. Später wurde ihre Mutter in einem rituellen Kampf getötet. Nachdem sie sie gerächt hatte, nahm Zul'jarra ihren rechtmäßigen Platz als neue Anführerin ein."},
    {era = "Midnight", text = "Entschied sich, sich Lady Liadrin anzuschließen und ihre Hilfe anzunehmen, um hash'ey zu werden. Zul'jarra vereinte die Stämme von Zul'Aman und gewann das Vertrauen der Loa zurück. Danach führte sie die Schlacht gegen die Klinge der Dämmerung an und verteidigte ihr Volk erfolgreich gegen die Leere."},
}

IMAGOdb.npcs.CAT_AMANI["nalorakk"].name = "Nalorakk"
IMAGOdb.npcs.CAT_AMANI["nalorakk"].race = "Waldtroll"
IMAGOdb.npcs.CAT_AMANI["nalorakk"].lore = "Als stolzer Waldtroll wurde Nalorakk einst von Hexlord Malacrass durch dunkle Magie mit der Essenz des Bärengottes Rhunok erfüllt. Er diente als brutaler Wächter und erster Loa-Avatar im klassischen Zul'Aman, bevor er von Plünderern bezwungen wurde. In Midnight manifestiert sich der gewaltige Bären-Avatar aus ungeklärten Gründen erneut. Mit schierer physischer Gewalt und animalischer Wut schließt er sich den Amani an, um das Herz des Zorns gegen die Leere zu verteidigen."
IMAGOdb.npcs.CAT_AMANI["nalorakk"].zones = {"Das Herz des Zorns", "Nalorakks Bau", "Zul'Aman"}
IMAGOdb.npcs.CAT_AMANI["nalorakk"].source = "warcraft.wiki.gg/wiki/Nalorakk"
IMAGOdb.npcs.CAT_AMANI["nalorakk"].timeline = {
    {era = "TBC", text = "Wurde durch Malacrass zum Avatar des Bärengottes Rhunok und bewachte als erster Boss den Eingang von Zul'Aman."},
    {era = "Midnight", text = "Kehrt in Nalorakks Bau zurück und entfesselt die Kraft des Bären gegen die einfallenden Truppen von Xal'atath."},
}

IMAGOdb.npcs.CAT_AMANI["akilzon"].name = "Akil'zon"
IMAGOdb.npcs.CAT_AMANI["akilzon"].race = "Waldtroll"
IMAGOdb.npcs.CAT_AMANI["akilzon"].lore = "Akil'zon war einst ein mächtiger Krieger der Amani, bevor Hexlord Malacrass ihn mit dunkler Magie zum Avatar des Adlergottes Akil'darac machte. Im klassischen Zul'Aman herrschte er über die Stürme, bis Abenteurer seinem Treiben ein Ende setzten. In Midnight manifestiert sich der Adler-Avatar erneut in Zul'Aman. Bewaffnet mit der Macht der Blitze erhebt er sich in die Lüfte, um seine Heimat gegen die Eindringlinge der Leere zu verteidigen."
IMAGOdb.npcs.CAT_AMANI["akilzon"].zones = {"Zul'Aman"}
IMAGOdb.npcs.CAT_AMANI["akilzon"].source = "warcraft.wiki.gg/wiki/Akil'zon"
IMAGOdb.npcs.CAT_AMANI["akilzon"].timeline = {
    {era = "TBC", text = "Wurde durch dunkle Rituale zum Adler-Avatar und herrschte über den Gipfel der Amani als zweiter Boss in Zul'Aman."},
    {era = "Midnight", text = "Kehrt nach Zul'Aman zurück, um die Mächte der Stürme gegen Xal'ataths Truppen zu entfesseln."},
}

IMAGOdb.npcs.CAT_AMANI["janalai"].name = "Jan'alai"
IMAGOdb.npcs.CAT_AMANI["janalai"].race = "Troll"
IMAGOdb.npcs.CAT_AMANI["janalai"].lore = [[Jedes Jahr feiern die Waldschattentrolle Fetna Alai-nazdo – das Fest der Feuerjahreszeit. Es ist ein Tribut an den Wechsel der Jahreszeiten, an den Sommer und an das Feuer – allesamt Domänen unter den großen, feurigen Schwingen von Jan'alai. Die mächtige Drachenfalkenloa ist die Patronin von Leben, Tod, Erneuerung, Feuer und Magie. Sie zieht mit der Sonne über den Himmel und entfacht ein Feuer in den Herzen der Amani. Wenn der Tod naht, heißen die Waldschattentrolle ihn mit offenen Armen willkommen und singen: "Jan'alai muss sterben. Wir alle müssen sterben. Und sie wird auferstehen! Und wir werden auferstehen!"]]
IMAGOdb.npcs.CAT_AMANI["janalai"].zones = {"Zul'Aman"}
IMAGOdb.npcs.CAT_AMANI["janalai"].source = "Metrus & austin - IMAGO Community"
IMAGOdb.npcs.CAT_AMANI["janalai"].timeline = {
    {era = "TBC", text = "Litt durch die Hand von Hexlord Malacrass, der ihre Essenz stahl und sie in einen der tödlichsten Schurken der Amani band. Ihr Geist wurde mit dem Fall von Zul'jin befreit."},
    {era = "WotLK", text = "Wurde von Hexendoktor Khufu in Zul'Drak angerufen, um sie um Rat bei der Rettung der Drakkari-Loa vor ihrem eigenen Volk zu bitten."},
    {era = "Cata", text = "Jan'alai wurde erneut den Schrecken von Hexlord Malacrass ausgesetzt. Ihre Essenz wurde in einen weiteren Champion der Amani eingeflößt, um einen verdrehten Avatar zu erschaffen. Ihr Geist wurde befreit, als die Abenteurer „Daakara”, den Nachfolger von Zul'jin, besiegten."},
    {era = "Midnight", text = "Jan'alai kehrte nach Jahrzehnten des Schweigens zum Volk der Amani zurück. Der Verrat durch Zul'jin und Malacrass hatte die Loa dazu veranlasst, sich von den Trollen abzuwenden. Sie kehrte erst zurück, nachdem Hash'ey Zul'jarra für die Verbrechen ihres Volkes gebüßt hatte."},
}

IMAGOdb.npcs.CAT_AMANI["halazzi"].name = "Halazzi"
IMAGOdb.npcs.CAT_AMANI["halazzi"].race = "Luchs (Loa)"
IMAGOdb.npcs.CAT_AMANI["halazzi"].lore = [[Loa der Jagd. Der Ränkeschmied. Der Silberschatten. Langohr. Die Waldtrolle haben viele Namen für ihn, und doch kann keiner von ihnen die wahre Natur von Halazzi vollständig erfassen. Tief in den Wäldern von Zul'Aman verehren die Bleichborkentrolle Halazzi und rufen ihn bei der Jagd um Hilfe an. Der Luchsloa verbirgt Jäger vor ihrer Beute und segnet die Wildnis mit Nebel und Regen, wodurch sie stets fruchtbar bleibt. Obwohl Halazzi ein verspielter Loa ist, kann sich nichts vor seinen Ohren und Augen verbergen – sie sehen das Unsichtbare und decken jede Lüge auf. Solltet ihr jemals durch die Wälder der Amani wandern, tretet leise auf – denn Halazzi ist nie weit entfernt.]]
IMAGOdb.npcs.CAT_AMANI["halazzi"].zones = {"Zul'Aman"}
IMAGOdb.npcs.CAT_AMANI["halazzi"].source = "Metrus"
IMAGOdb.npcs.CAT_AMANI["halazzi"].timeline = {
    {
        era = "TBC",
        text = [[Seine Essenz wurde von Hexlord Malacrass gestohlen und in "Kurinje the Shadow" eingeflößt. Sein Geist wurde befreit, als Champions der Horde Zul'jin besiegten.]],
    },
    {
        era = "WotLK",
        text = [[Gehörte zu den Amani-Loa, die von Hexendoktor Khufu in Zul'Drak angerufen wurden, um ihn um Rat bei der Rettung der Drakkari-Loa zu bitten.]],
    },
    {
        era = "Cata",
        text = [[Seine Essenz wurde (erneut) von Hexlord Malacrass gestohlen und genutzt, um einen Loa-Avatar zu erschaffen. Sein Geist wurde befreit, als die Abenteurer „Daakara” besiegten.]],
    },
    {
        era = "Midnight",
        text = [[Er kehrte als primärer Loa des Stammes der Bleichborken zurück und gewährte den Waldtrollen in Zul'Aman erneut seine Kräfte, um die Leere zurückzuschlagen.]],
    }
}

IMAGOdb.npcs.CAT_AMANI["zuljan"].name = "Zul'jan"
IMAGOdb.npcs.CAT_AMANI["zuljan"].race = "Waldtroll"
IMAGOdb.npcs.CAT_AMANI["zuljan"].lore = "Als einer der bedeutendsten Anführer der Amani in Midnight steht Zul'jan fest an der Seite von Zul'jarra. Er verkörpert die tiefe schamanistische Tradition des Stammes und hält die lebenswichtige Verbindung zu den Loa-Mächten aufrecht. Seine ständige Präsenz an den hitzigsten Fronten in Zul'Aman und dem Immersangwald zeigt, dass er eine absolute Schlüsselrolle bei der Koordination der Truppen und der spirituellen Verteidigung gegen die Leere spielt."
IMAGOdb.npcs.CAT_AMANI["zuljan"].zones = {"Atal'Aman", "Immersangwald", "Zul'Aman"}
IMAGOdb.npcs.CAT_AMANI["zuljan"].source = "warcraft.wiki.gg/wiki/Zul'jan"
IMAGOdb.npcs.CAT_AMANI["zuljan"].timeline = {
    {era = "Midnight", text = "Tritt als hochrangiger Amani-Anführer in Erscheinung und unterstützt Zul'jarra bei der Verteidigung und Koordination des Stammes."},
}

IMAGOdb.npcs.CAT_AMANI["loa_speaker_kinduru"].name = "Loasprecher Kinduru"
IMAGOdb.npcs.CAT_AMANI["loa_speaker_kinduru"].race = "Waldtroll (Amani)"
IMAGOdb.npcs.CAT_AMANI["loa_speaker_kinduru"].lore = "Loasprecher Kinduru ist der exzentrische, aber liebenswerte spirituelle Führer der Amani. Als direkter Sohn des legendären Zul'jin und Onkel von Zul'jan und Zul'jarra bildet er einen massiven Kontrast zu seiner kriegerischen Blutlinie. Während sein Neffe Zul'jan den Glauben an die Loa ablehnt, ist Kinduru ein tiefgläubiger Diener der mächtigen Amani-Götter – Akil'zon, Halazzi, Jan'alai und Nalorakk. Seine Persönlichkeit erinnert viele an einen weisen, leicht verrückten Schamanen. In Midnight ist er die treibende spirituelle Kraft in Zul'Aman. Er lehrt die Verteidiger geduldig, wie sie sich die Segnungen der Loa verdienen können, um den endlosen Hunger der Leere abzuwehren."
IMAGOdb.npcs.CAT_AMANI["loa_speaker_kinduru"].zones = {"Atal'Aman", "Zul'Aman"}
IMAGOdb.npcs.CAT_AMANI["loa_speaker_kinduru"].source = "warcraft.wiki.gg/wiki/Loa_Speaker_Kinduru"
IMAGOdb.npcs.CAT_AMANI["loa_speaker_kinduru"].timeline = {
    {era = "Pre-MN", text = "Wuchs im Schatten seines Vaters Zul'jin auf, widmete sein Leben jedoch der spirituellen Verehrung der Loa anstatt dem blinden Hass."},
    {era = "Midnight", text = "Agiert als Loasprecher in Zul'Aman und lehrt die Spieler am Altar der Segnungen, die Macht der Götter gegen die Leere zu nutzen."},
}


-- CAT_HARATI
IMAGOdb.npcs.CAT_HARATI["orweyna"].name = "Orweyna"
IMAGOdb.npcs.CAT_HARATI["orweyna"].race = "Haran'ir"
IMAGOdb.npcs.CAT_HARATI["orweyna"].lore =
[[
Als Späherin des geheimnisvollen Volkes der Haranir unterscheidet sich Orweyna stark von den meisten ihrer Artgenossen. Fasziniert von der Welt und ihren Bewohnern außerhalb ihrer Heimat widersetzte sie sich den Eiden der Geheimhaltung und Isolation. Zunächst nahm sie Kontakt mit dem Champion von Azeroth in Azj-Kahet auf, nun bittet sie die Elfen von Quel'Thalas um Hilfe.
    
Sie hat eine besondere Verbindung zu ihrer Göttin Aln'hara, von der sie Visionen drohender Gefahren erhält, die dem „Strahlenden Gesang” ähneln. Sie weiß, dass es mehr als nur die Streitkräfte der Haranir brauchen wird, um die Leere zu besiegen, die Aln'hara bedroht.]]
IMAGOdb.npcs.CAT_HARATI["orweyna"].zones = {"Das Blendende Tal", "Die Höhle", "Harandar", "Immersangwald", "Insel von Quel'Danas", "Silbermond"}
IMAGOdb.npcs.CAT_HARATI["orweyna"].source = "Cadash - IMAGO Community"
IMAGOdb.npcs.CAT_HARATI["orweyna"].timeline = {
    {era = "Pre-BfA", text = "Bemerkte die Bedrohung durch das Schwarze Blut in Azj-Kahet und wagte sich zum ersten Mal aus Harandar heraus, um dessen Ausbreitung zu bekämpfen."},
    {era = "TWW", text = "Rettete die Expedition von Alleria und Faerin in Azj-Kahet vor den Nerubern. Setzte ihre Untersuchung des Schwarzen Blutes fort, folgte ihm nach Undermine und half folglich Gazlowe bei seiner Rebellion gegen Gallywix."},
    {era = "Midnight", text = "Half dabei, die Lichtblüte sowohl in Harandar als auch in Quel'Thalas einzudämmen. Verhandelte ein vorläufiges Bündnis zwischen ihrem Volk und den Elfen von Quel'Thalas, was dazu führte, dass die Haranir zum ersten Mal die Außenwelt erkundeten."},
}

IMAGOdb.npcs.CAT_HARATI["elder_hagar"].name = "Älteste Hagar"
IMAGOdb.npcs.CAT_HARATI["elder_hagar"].race = "Haran'ir"
IMAGOdb.npcs.CAT_HARATI["elder_hagar"].lore = "Älteste Hagar ist eine tief verehrte Weise der Haran'ir und fungiert in Midnight als essenzielle diplomatische Brücke zwischen der Hara'ti-Fraktion und den Völkern Azeroths. Ihr persönliches Schicksal ist von tiefer Tragik geprägt: Sie diente einst unbemerkt als Hüterin der Weltenbaumwurzeln von Teldrassil. Als der Baum verbrannte, erlebte Hagar den Tod der Wurzeln tief unter der Erde als eine ohrenbetäubende, traumatisierende Stille. Nun, da die Leere die uralten arkanen Wurzeln unterhalb von Quel'Thalas bedroht, weigert sie sich, den Tod eines weiteren Baumes tatenlos hinzunehmen. Sie hat die schützende Dunkelheit des Untergrunds verlassen und positioniert sich in Silbermond direkt am Harandar-Portal, um fähige Helden zu rekrutieren und ihr Volk offiziell als Verbündete in den globalen Konflikt zu führen."
IMAGOdb.npcs.CAT_HARATI["elder_hagar"].zones = {"Die Höhle", "Harandar", "Immersangwald", "Silbermond"}
IMAGOdb.npcs.CAT_HARATI["elder_hagar"].source = "warcraft.wiki.gg/wiki/Hagar"
IMAGOdb.npcs.CAT_HARATI["elder_hagar"].timeline = {
    {era = "BfA", text = "Wachte im tiefen Untergrund als Hüterin über die Wurzeln von Teldrassil, bis der Baum vernichtet wurde."},
    {era = "Midnight", text = "Koordiniert von Silbermond aus die diplomatische Bindung und die Freischaltung der Haran'ir als Verbündetes Volk."},
}

IMAGOdb.npcs.CAT_HARATI["amarakk"].name = "Amarakk"
IMAGOdb.npcs.CAT_HARATI["amarakk"].race = "Haran'ir"
IMAGOdb.npcs.CAT_HARATI["amarakk"].lore = "Amarakk ist Orweynas engster Vertrauter und lebenslanger Freund. Als die beiden in der Wildnis von Harandar vom Samen zum Schössling heranwuchsen, war er stets an ihrer Seite. Während Orweyna schon immer von wilden Impulsen getrieben wurde, bildete Amarakk als ruhige Stimme der Vernunft ihr wichtigstes Gegengewicht und ihren emotionalen Anker. Auch wenn das Überleben im Untergrund hart war, war ihr Band unzerstörbar. In Midnight weicht er nicht von Orweynas Seite, während sie an der Oberfläche die neugegründete Hara'ti-Fraktion anführt. Er unterstützt sie maßgeblich mit seinem tiefgreifenden Wissen – etwa bei der Zubereitung von Aln-Staub –, um die Kämpfer zu heilen. Selbst vor hochgefährlichen Orten wie dem Traumriss schreckt Amarakk nicht zurück, um seiner Freundin und seinem Volk im Kampf gegen die Leere beizustehen."
IMAGOdb.npcs.CAT_HARATI["amarakk"].zones = {"Der Traumriss", "Harandar"}
IMAGOdb.npcs.CAT_HARATI["amarakk"].source = "Kurzgeschichte: Nach uns, die Stille"
IMAGOdb.npcs.CAT_HARATI["amarakk"].timeline = {
    {era = "Pre-MN", text = "Wuchs gemeinsam mit Orweyna in Harandar auf und half ihr als ruhige Stimme der Vernunft, ihre impulsivste Seite zu zügeln."},
    {era = "Midnight", text = "Begleitet Orweyna an der Oberfläche und im Traumriss, und unterstützt die Hara'ti durch sein Wissen über die Natur und Aln-Staub."},
}

