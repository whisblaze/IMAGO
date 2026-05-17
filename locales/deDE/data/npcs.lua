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
IMAGOdb.npcs.CAT_QUELTHALAS["lady_liadrin"].lore = [[Lady Liadrin verlor ihren Glauben an das Licht, als die Geißel Silbermond dezimierte. Sie durchstreifte die Geisterlande und erschlug Untote in den Ruinen ihrer einstigen Heimat. Schließlich traten die Magister mit dem Angebot an sie heran, die Energien des Naaru M'uru zu nutzen, um als Paladin erneut das Licht führen zu können. Auf diese Weise wurde Liadrin zum ersten Blutritter. Nach der Läuterung des Sonnenbrunnens kehrte auch ihre Überzeugung zurück, und sie schwor, ihn fortan zu beschützen.

Bisweilen zweifelt sie noch immer an ihrer Würdigkeit aufgrund dessen, was sie M'uru angetan hat, doch ihr Glaube und ihre Hingabe für ihr Volk wankten nie.]]
IMAGOdb.npcs.CAT_QUELTHALAS["lady_liadrin"].zones = {"Atal'Aman", "Dornogal", "Immergesangwald", "Insel von Quel'Danas", "Orgrimmar", "Parhelionplaza", "Silbermond", "Sturmwind", "Zul'Aman"}
IMAGOdb.npcs.CAT_QUELTHALAS["lady_liadrin"].source = "Cadash - IMAGO Community"
IMAGOdb.npcs.CAT_QUELTHALAS["lady_liadrin"].timeline = {
    {era = "WC2", text = "Kämpfte gegen die Amani-Trolle und half bei der Gefangennahme von Zul'jin, nachdem sie zuvor selbst von ihm gefangen genommen worden war. Sie empfand tiefe Schuldgefühle, als sie die exzessive Folter am Kriegsfürsten der Feinde miterlebte, und hielt die Waldtrolle zum ersten Mal für würdig, Mitgefühl zu erfahren."},
    {era = "WC3", text = "Überlebte nur knapp den Fall von Silbermond. Gab das Priestertum auf, nachdem sie ihren Glauben und ihre Familie verloren hatte."},
    {era = "Pre-Classic", text = "Wurde zum ersten Blutritter-Paladin und zur Anführerin des Ordens."},
    {era = "TBC", text = "Half dabei, Kael'thas abzusetzen und den Sonnenbrunnen zu läutern. Erlangte ihren Glauben zurück."},
    {era = "WotLK", text = "Begann mit der Ausbildung neuer Paladine, ohne auf die Folter eines Naaru angewiesen zu sein."},
    {era = "WoD", text = "Führte die Sonnenzorn-Einheiten im Kampf gegen die Eiserne Horde an. Befreite Auchindoun aus den Händen des Schattenrats."},
    {era = "Legion", text = "Schloss sich den Rittern der Silbernen Hand an und verteidigte die Kapelle des Hoffnungsvollen Lichts. Führte die Truppen der Horde an, um Suramar von der Besatzung der Brennenden Legion zu befreien."},
    {era = "BfA", text = "Verließ die Ritter der Silbernen Hand und befehligte die Streitkräfte der Horde in der Schlacht um Stromgarde."},
    {era = "SL", text = "Verteidigte Silbermond an der Seite von Großmagister Rommath und Aethas Sonnenhäscher gegen neue Übergriffe der Geißel."},
    {era = "Pre-DF", text = "Führte die Trauung von Lor'themar und Thalyssra durch."},
    {era = "TWW", text = "Half bei der Verteidigung von Heilsturz gegen Xal'ataths Streitkräfte und koordinierte die Ausbildung neuer Rekruten der Irdenen für die Horde."},
    {era = "Pre-Midnight", text = "Versammelte gemeinsam mit Alonsus Faol die Priester von Azeroth in Silbermond, in Erwartung von Xal'ataths Angriff."},
    {era = "Midnight", text = "Liadrin kämpfte an vorderster Front bei der Verteidigung des Sonnenbrunnens, rekrutierte externe Hilfe von Zul'jarras Amani und half bei der Erschaffung des Düsterbrunnens."},
}

IMAGOdb.npcs.CAT_QUELTHALAS["grand_magister_rommath"].name = "Großmagister Rommath"
IMAGOdb.npcs.CAT_QUELTHALAS["grand_magister_rommath"].race = "Blutelf"
IMAGOdb.npcs.CAT_QUELTHALAS["grand_magister_rommath"].lore = [[Kompromisslos und streitlustig – der Großmagister von Silbermond ist ein Mann, dessen Loyalität seinem Volk gegenüber unerschütterlich ist. Als treuester Unterstützer von Kael'thas nach dem Dritten Krieg tat Rommath alles, was er für das Überleben der Blutelfen als notwendig erachtete. Selbst wenn dies bedeutete, Teufelsmagie einzusetzen oder einen Naaru für dessen heilige Macht zu foltern, war Rommath bereit und entschlossen dazu. Seine Treue wurde auf die Probe gestellt, als Kael'thas sich mit der Brennenden Legion verbündete; letztendlich entschied er sich für sein Volk und gegen seinen ehemaligen Prinzen. Nachdem er bereits zweimal verraten worden war – zuerst von seinem einstigen Freund Dar'khan Drathir und danach von den Kirin Tor von Dalaran –, verhärtete Kael'thas' Verrat das Herz des Elfen noch weiter. Während nun der Leerensturm sein Heimatland bedroht, wird Rommath das tun, was er schon immer getan hat: Silbermond um jeden Preis schützen, trotz allem, was er und sein Volk erlitten haben.]]
IMAGOdb.npcs.CAT_QUELTHALAS["grand_magister_rommath"].zones = {"Immersangwald", "Orgrimmar", "Schattenhochland", "Silbermond"}
IMAGOdb.npcs.CAT_QUELTHALAS["grand_magister_rommath"].source = "Cadash & Austin - IMAGO Community"
IMAGOdb.npcs.CAT_QUELTHALAS["grand_magister_rommath"].timeline = {
    {era = "Pre-WC1", text = "Studierte das Arkanum in der Magierhauptstadt Dalaran an der Seite seiner Freunde Umbric und Dar'khan Drathir."},
    {era = "WC3", text = "Überlebte die Zerstörung von Silbermond und schloss sich Kael'thas Sonnenwanderer bei der Verteidigung von Dalaran an. Er folgte dem Prinzen in die Scherbenwelt, nachdem er aus den Verliesen der Kirin Tor entkommen war, und lernte von Illidan Sturmgrimm, wie man den Magiedurst der Blutelfen bekämpft. Er kehrte als Großmagister nach Silbermond zurück."},
    {era = "TBC", text = "Half bei der Gründung des Ordens der Blutritter und beteiligte sich am Bürgerkrieg gegen Kael'thas Sonnenwanderer. Einige Zeit nach der Niederlage des Prinzen verbannte Rommath Magister Umbric und dessen Anhänger für das Praktizieren von Leerenmagie."},
    {era = "WotLK", text = "Versuchte erfolglos, Lor'themar davon abzubringen, die geschwächten Blutelfen in den Krieg nach Nordend zu schicken. Half bei der Wiederherstellung der Waffe Quel'Delar."},
    {era = "MoP", text = "Rettete Aethas Sonnenhäscher und viele andere Magier während der Säuberung von Dalaran. Er kämpfte für die Horde als Teil der Sonnenhäscher auf der Insel des Donners."},
    {era = "Legion", text = "Half dabei, Suramar von der Besatzung der Brennenden Legion zu befreien."},
    {era = "BfA", text = "Beteiligte sich an der Aufnahme der Nachtgeborenen in die Horde und verteidigte den Sonnenbrunnen vor Allerias Einfluss."},
    {era = "SL", text = "Verteidigte Silbermond an der Seite von Lady Liadrin und Aethas Sonnenhäscher gegen neue Übergriffe der Geißel."},
    {era = "Midnight", text = "Rommath führte die Magister von Silbermond bei ihrer Verteidigung gegen die Verschlingende Schar an. Er steht Umbrics Einsatz von Leerenmagie zwar immer noch skeptisch gegenüber, stimmte jedoch widerstrebend zu, dass dessen Expertise notwendig ist, um ihren gemeinsamen Feind zu besiegen."},
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
IMAGOdb.npcs.CAT_QUELTHALAS["aethas_sunreaver"].lore = [[Erzmagier Aethas Sonnenhäscher ist ein brillanter Magier der Sin'dorei, der trotz seines jungen Alters rasch in den Rat der Sechs der Kirin Tor aufstieg. Als ewiger Optimist und entschiedener Verfechter der Neutralität widmete er einen Großteil seines Lebens der Wiederherstellung des jahrtausendealten Bündnisses zwischen Silbermond und Dalaran. Seine Loyalität und seine Ideale wurden durch die Kriege zwischen den Fraktionen auf eine harte Probe gestellt. Auf seinem Weg, sein Volk zu schützen, musste er schwierige Entscheidungen treffen und erlebte Verrat sowie Gefangenschaft. Trotz immenser Entbehrungen und der wiederholten Zerstörung seiner geliebten Stadt bleibt Aethas dem Streben nach Wissen, der Zusammenarbeit und dem Fortbestand der Blutelfen tief verpflichtet.]]
IMAGOdb.npcs.CAT_QUELTHALAS["aethas_sunreaver"].zones = {"Immersangwald", "Silbermond"}
IMAGOdb.npcs.CAT_QUELTHALAS["aethas_sunreaver"].source = "Lewi - IMAGO Community"
IMAGOdb.npcs.CAT_QUELTHALAS["aethas_sunreaver"].timeline = {
    {era = "WotLK", text = "Verteidigte Dalaran gegen den Blauen Drachenschwarm und setzte sich erfolgreich für die Wiederaufnahme der Blutelfen in die Kirin Tor ein, um gegen den Lichkönig zu kämpfen. Zudem gründete er offiziell die Fraktion der Sonnenhäscher in Dalaran, um seine Anhänger und die Horde innerhalb der Stadt zu repräsentieren."},
    {era = "Pre-MoP", text = "Stimmte dafür, Hilfe der Kirin Tor zur Verteidigung von Theramore gegen die Horde zu entsenden. Später lehnte er jedoch Jaina Prachtmeers Ersuch ab, Dalaran für einen Vergeltungsschlag zu mobilisieren, nachdem die Stadt durch eine Manabombe vernichtet worden war."},
    {era = "MoP", text = "Wurde während der Säuberung von Dalaran inhaftiert, nachdem er mit Kriegsverbrechen der Horde in Verbindung gebracht worden war. Nach seiner Rettung unterstützte er Quel'Thalas beim Feldzug auf der Insel des Donners und bei der Rebellion gegen Garrosh Höllschrei."},
    {era = "Legion", text = "Organisierte die Bergung der geschichtsträchtigen Runenklinge Felo'melorn, um den Sonnenhäschern ihren Platz innerhalb der Kirin Tor zurückzuverdienen. Später kämpfte er an der Seite seiner Ratsmitglieder an der Verheerten Küste und auf Argus gegen die Brennende Legion."},
    {era = "SL", text = "Kehrte nach Quel'Thalas zurück, um beim Aufbau der magischen Verteidigung von Tristessa zu helfen. Gemeinsam mit seinen Verbündeten besiegte er erfolgreich eine erneute Invasion der Geißel, die von einem verräterischen San'layn angeführt wurde."},
    {era = "DF", text = "Versuchte, sich mit Jaina Prachtmeer auszusöhnen, indem er nach einer kostbaren kul-tiranischen Spieldose suchte, die sie verloren hatte, in der Hoffnung, sie ihr als Geste des Friedens zu überreichen."},
    {era = "TWW", text = "Überlebte die Zerstörung von Dalaran und litt unter schweren Schuldgefühlen als Überlebender. Schließlich schloss er mit seinen Ratskollegen den Pakt, die Kirin Tor ohne den Hochmut der Vergangenheit neu aufzubauen."},
    {era = "Midnight", text = "Führte die Sonnenhäscher bei der Verteidigung von Silbermond gegen die vordringende Leere an und duldete dabei die Präsenz des Silberbunds, um den Fall der Stadt zu verhindern. Nach einem erfolgreichen Angriff gegen die Leere auf Quel'Danas stimmte er dem Silbersonnenabkommen zu – einer mühsamen Übereinkunft mit dem Silberbund, Differenzen in Zeiten großer Not beiseitezulegen."},
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
IMAGOdb.npcs.CAT_QUELTHALAS["magister_umbric"].lore = [[Keine Grenzen – das war Umbrics Verlangen als Student der arkanen Künste in Dalaran. Doch er empfand die Studien der Magier als zu starr, zu einengend für seinen Geschmack. Angesichts des Falls des Sonnenbrunnens und seiner Heimat Quel'Thalas erkannte er, dass er einen anderen Zugang zur Magie finden musste. Die Elfen von Silbermond brauchten einen alternativen Weg, um im Ernstfall zu überleben... und so wandte sich Umbric den dunklen Energien der Leere zu.

Er scharte eine ganze Reihe von Akolythen um sich, die die verbotenen Künste im Geheimen praktizierten, bevor er entdeckt wurde. Ins Exil verbannt von seinem ehemaligen Freund, Großmagister Rommath, setzten Umbric und seine Anhänger ihre Studien fort und fanden schließlich einen Weg in einen Riss in Raum und Zeit – Telogrus. Hier wurden sie in die Ren'dorei verwandelt, Elfen, die von der Leere selbst durchdrungen sind.

Nachdem sie sich der Allianz angeschlossen hatten, wurden Umbric und seine Ren'dorei zu einer kleinen, aber elitären Truppe von Spezialisten und standen bereits mehrfach an vorderster Front im Kampf gegen Xal'atath.]]
IMAGOdb.npcs.CAT_QUELTHALAS["magister_umbric"].zones = {"Amirdrassil", "Die Leerenspitze", "Immersangwald", "Insel von Quel'Danas", "Leerensturm", "Schattenhochland", "Silbermond", "Sturmwind", "Terrasse der Magister"}
IMAGOdb.npcs.CAT_QUELTHALAS["magister_umbric"].source = "Cadash - IMAGO Community"
IMAGOdb.npcs.CAT_QUELTHALAS["magister_umbric"].timeline = {
    {era = "Pre-WC1", text = "Studierte das Arkane in Dalaran an der Seite seiner Freunde Rommath und Dar'Khan Drathir."},
    {era = "Pre-WotLK", text = "Wurde wegen des Praktizierens verbotener Leerenmagie aus Silbermond verbannt."},
    {era = "Legion", text = "Entdeckte den Telogrusriss und wurde zusammen mit seinen Anhängern in Ren'dorei verwandelt. Schloss sich Alleria Windläufer an, nachdem sie ihnen einen Platz in der Allianz angeboten hatte."},
    {era = "BfA", text = "Kämpfte im Vierten Krieg und bewies der Allianz seinen Wert."},
    {era = "DF", text = "Begann an der Seite von Alleria Windläufer die Jagd auf Xal'atath und verteidigte den Telogrusriss vor den Leerenstreitkräften der Heroldin."},
    {era = "TWW", text = "Errichtete einen Außenposten auf K'aresh und stellte die Stärke der Ren'dorei im Kampf gegen Dimensius zur Verfügung."},
    {era = "Midnight", text = "Da Silbermond in Gefahr war, kehrte Umbric in seine alte Heimat zurück, um die Leere zu bekämpfen. Es gelang ihm, einen Durchgang in den Leerensturm zu öffnen, und später half er bei der Erschaffung des Dämmerbrunnens. Für seine Verdienste wurde er vollständig begnadigt und wieder in Silbermond aufgenommen."},
}

IMAGOdb.npcs.CAT_QUELTHALAS["lady_darkglen"].name = "Lady Dunkeltal"
IMAGOdb.npcs.CAT_QUELTHALAS["lady_darkglen"].race = "Leerenelfe"
IMAGOdb.npcs.CAT_QUELTHALAS["lady_darkglen"].lore = [[Lady Dunkeltal ist eine Adlige aus Quel'Thalas und eine der talentiertesten Alchemistinnen und Ritualistinnen der Ren'dorei. Ihr freier und mitunter leichtsinniger Umgang mit Leerenmagie verunsichert selbst einige ihrer Gefährten, doch das kümmert sie wenig. Bereits als Hexenmeisterin riskierte sie ihren Verstand – und dann ein weiteres Mal, als sie von der Leere durchdrungen wurde. Warum also sollte sie sich jetzt noch zurückhalten?

Daher überrascht es kaum, dass sie sich gemeinsam mit ihrem Leerwandler Blocciniux Magister Umbric anschließt, um den Versuch zu wagen, den Leerensturm zu durchbrechen. Was könnte faszinierender sein als ein Ort des reinen Chaos?]]
IMAGOdb.npcs.CAT_QUELTHALAS["lady_darkglen"].zones = {"Silbermond", "Leerensturm", "Insel von Quel'Danas"}
IMAGOdb.npcs.CAT_QUELTHALAS["lady_darkglen"].source = "Cadash"
IMAGOdb.npcs.CAT_QUELTHALAS["lady_darkglen"].timeline = {
    {
        era = "DF",
        text = [[Half dabei, den Telogrusriss gegen die Astralen der Schattenwache zu verteidigen.]],
    },
    {
        era = "TWW",
        text = [[Kämpfte auf K'aresh gegen Dimensius' Streitkräfte. Übernahm Aufträge für die Mittler von Tazavesh.]],
    },
    {
        era = "Midnight",
        text = [[Verhinderte die Ausbreitung eines mutierten Krankheitserregers im Leerensturm und heilte die Ren'dorei erfolgreich von der Krankheit. Kämpfte in der Leerenspitze und untersuchte nach der Wiederherstellung des Morgenbrunnens die Ritualstätten der zersplitterten Streitkräfte der Leere.]],
    }
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

IMAGOdb.npcs.CAT_QUELTHALAS["lord_saltheril"].name = "Lord Saltheril"
IMAGOdb.npcs.CAT_QUELTHALAS["lord_saltheril"].race = "Blutelf"
IMAGOdb.npcs.CAT_QUELTHALAS["lord_saltheril"].lore = [[Als unbeträchtlicher Adliger der Blutelfen ist Lord Saltheril in ganz Quel'Thalas für seine prunkvollen Feste bekannt, bei denen seine Gäste mit magischen Weinen und extravaganten Speisen bewirtet werden. Saltheril war zudem ein Förderer von Lirath Windläufer und organisierte musikalische Darbietungen für verschiedene Adlige und Mitglieder des Königshauses von Silbermond, darunter Prinz Kael'thas Sonnenwanderer und Lor'themar Theron.

Als Überlebender zahlreicher Katastrophen – darunter des Zweiten Krieges und der Invasion der Geißel – hat Saltheril niemals aufgehört, Feste zu veranstalten. Fürstregent Lor’themar bemerkte einst, dass nicht einmal Arthas Menethil ihn lange davon abhalten konnte.]]
IMAGOdb.npcs.CAT_QUELTHALAS["lord_saltheril"].zones = {"Immersangwald"}
IMAGOdb.npcs.CAT_QUELTHALAS["lord_saltheril"].source = "Travanoid"
IMAGOdb.npcs.CAT_QUELTHALAS["lord_saltheril"].timeline = {
    {
        era = "Pre-WC2",
        text = [[Verbannte Sylvanas Windläufer von seinem Anwesen, nachdem sie auf einer seiner Feiern einen Skandal ausgelöst hatte, indem sie heimlich Kräuter in Getränke mischte und ihm vorübergehend die Zunge lähmte.]],
    },
    {
        era = "TBC",
        text = [[Veranstaltete weiterhin Feste und umgab sich mit Schmeichlern, trotz der Vorwürfe, die Realität der Lage in Quel'Thalas zu ignorieren.]],
    },
    {
        era = "Midnight",
        text = [[Öffnete sein Anwesen für die Magister, die Weltenwanderer, die Blutritter und sogar die zwielichtigen Gestalten der Mördergasse für eine Veranstaltung, die er „Saltherils Soiree“ nennt. Diese Fraktionen buhlen dort um die Gunst und Förderung der Sin’dorei-Adligen und Abenteurer.]],
    }
}


-- CAT_LIGHT
IMAGOdb.npcs.CAT_LIGHT["mehlar_daemmerklinge"].name = "Mehlar Dämmerklinge"
IMAGOdb.npcs.CAT_LIGHT["mehlar_daemmerklinge"].race = "Blutelf"
IMAGOdb.npcs.CAT_LIGHT["mehlar_daemmerklinge"].lore = [[Einst war Mehlar Dämmerklinge Uther Lichtbringers Schüler und diente vor dem Dritten Krieg der Silbernen Hand als Paladin. Er folgte einem strengen Moralkodex und führte die Befehle des Ordens buchstabengetreu aus. Als Uthers berüchtigtster Schüler - Arthas Menethil - vom Pfad des Lichts abkam und Mehlars Heimat Quel'Thalas verwüstete, verwandelte sich das Mitgefühl des Blutelfen in Zorn und ihn überkam der Durst nach Rache.

Er schloss sich Lady Liadrin und ihren Blutrittern an und kämpfte in vorbildlicher Einheit mit seinen Mitpaladinen gegen die Geißel. In einem Anfall von Wut entweihte er Uthers Grab, nur um dort dem Geist seines ehemaligen Mentors gegenüberzutreten. Da er von dem gefallenen Paladin nichts als Vergebung erhielt, schwor Mehlar, seine Sichtweise zu überdenken, und bemüht sich fortan, sich nicht mehr von Hass leiten zu lassen.]]
IMAGOdb.npcs.CAT_LIGHT["mehlar_daemmerklinge"].zones = {"Insel von Quel'Danas", "Parhelionplaza"}
IMAGOdb.npcs.CAT_LIGHT["mehlar_daemmerklinge"].source = "Cadash"
IMAGOdb.npcs.CAT_LIGHT["mehlar_daemmerklinge"].timeline = {
    {era = "Pre-WC3", text = "Wurde von Uther Lichtbringer als Ritter der Silbernen Hand ausgebildet."},
    {era = "WC3", text = "Er kämpfte an vielen Fronten gegen die Geißel und schloss sich später den Blutrittern an."},
    {era = "Classic", text = "Er entweihte Uthers Grab und stellte sich dem Geist seines Mentors. Dabei erkannte er, dass Zorn und Gewalt nicht die Gefühle waren, von denen er sich leiten lassen wollte. Gemeinsam mit Sylvanas Windläufer arbeitete er an der Herstellung des Schmuckstücks „Geißelbann“."},
    {era = "WoD", text = "Er folgte Lady Liadrin nach Draenor und half ihr dabei, Auchindoun gegen den Schattenrat zu verteidigen."},
    {era = "Legion", text = "Er reiste erneut zu Uthers Grab, diesmal um es gegen rastlose Geister zu verteidigen. Später schloss er sich kurzzeitig wieder der Silbernen Hand an, nachdem Lady Liadrin ihre Blutritter dem neuen Hochlord unterstellte."},
    {era = "DF", text = "Er war bei der Wiedererschaffung Tyrs und der Gründung des Ordens der Tyrs Hand anwesend."},
    {era = "TWW", text = "Er half dabei, neue irdene Freiwillige für die Horde auszubilden."},
    {era = "Midnight", text = "Während des ersten Angriffs auf den Sonnenbrunnen wurde Mehlar verletzt, schloss sich später jedoch erneut der Vorhut des Lichts im Kampf gegen die Leere an."},
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
IMAGOdb.npcs.CAT_LIGHT["turalyon"].lore = [[Als einer der ersten Paladine des Ordens der Silbernen Hand wurde Turalyon zu einem der berühmtesten und verehrtesten Kriegshelden der Allianz. Er kämpfte als rechte Hand Anduin Lothars, und nachdem sein Kommandant im Kampf fiel, war es Turalyon, der die entscheidende Schlacht gegen die orcische Horde zugunsten der Allianz und des Heiligen Lichts entschied.

Im Zweiten Krieg begegnete er der Frau, mit der er sein Leben teilen würde - Alleria Windläufer. Inmitten des Wahnsinns des Kriegs wurden aus den beiden schließlich drei. Doch als Turalyon und Alleria in die Heimatwelt der Orcs aufbrachen, um die Horde ein für alle Mal aufzuhalten, trafen sie die schwere Entscheidung, ihren Sohn Arator auf Azeroth zurückzulassen - im Wissen, dass sie ihn womöglich niemals würden aufwachsen sehen.

Draenor zerbrach, und das Paar wurde fortgerissen, um als Teil der Armee des Lichts in einem tausend Jahre andauernden Krieg gegen die Brennende Legion zu kämpfen. Turalyon wurde unsterblich - ein lichtgeschmiedetes Bollwerk für Gerechtigkeit und Rechtschaffenheit. Alleria hingegen wandte sich der Magie der Leere zu, einer Macht, die in Turalyons Augen nichts als das reine Böses verkörpert.

Nun, da die Brennende Legion besiegt wurde, sind Turalyon und Alleria nach Azeroth zurückgekehrt - in eine veränderte Welt. Sie müssen versuchen, eine Verbindung zu einem ihnen fremden Sohn aufzubauen, zu verstehen wie sie sich als Liebende so voneinander entfernen konnten, und vor allem erneut ihre Welt zu retten.]]
IMAGOdb.npcs.CAT_LIGHT["turalyon"].zones = {"Die Leerenspitze", "Immersangwald", "Insel von Quel'Danas", "Leerensturm", "Parhelionplaza", "Silbermond"}
IMAGOdb.npcs.CAT_LIGHT["turalyon"].source = "Cadash - IMAGO Community"
IMAGOdb.npcs.CAT_LIGHT["turalyon"].timeline = {
    {era = "Pre-WC1", text = "Wurde als Waisenkind der Kirche des Heiligen Lichts übergeben, um Priester zu werden."},
    {era = "Pre-WC2", text = "Wurde einer der ersten fünf Paladine des Ordens der Silbernen Hand. Kämpfte als General von Anduin Lothar und entschied den Zweiten Krieg, indem er die Horde zurückdrängte. Lernte Alleria Windläufer kennen, bekam mit ihr einen Sohn und reiste in die Scherbenwelt, wo beide schließlich strandeten."},
    {era = "Pre-WC3", text = "Reiste mit Alleria durch den Wirbelnden Nether und wurde in die Armee des Lichts eingezogen, um gegen die Brennende Legion zu kämpfen. Was auf Azeroth nur wenige Jahrzehnte dauern würde, bedeutete für sie tausend Jahre Krieg. Turalyon wurde lichtgeschmiedet."},
    {era = "Legion", text = "Führte die finale Schlacht gegen die Legion in ihrer Festung Antorus an und besiegte die Dämonen. Nachdem sein Kreuzzug endlich beendet war, wurden er und Alleria wieder mit ihrem Sohn Arator vereint."},
    {era = "Pre-BfA", text = "Rekrutierte die Armee des Lichts, insbesondere die Lichtgeschmiedeten Draenei, in die Reihen der Allianz. Turalyon führte sie an als ihr Hochexarch."},
    {era = "BfA", text = "Half seinem alten Freund Danath Trollbann, die Schlacht um Stromgarde gegen die neue Horde zu gewinnen."},
    {era = "Pre-SL", text = "Beteiligte sich an der Jagd auf Sylvanas Windläufer. Nutzte das Heilige Licht, um einen Zivilisten der Horde zu foltern."},
    {era = "SL", text = "Wurde nach dem Verschwinden von Sturmwinds König Anduin Wrynn zum Regenten des Königreichs ernannt."},
    {era = "Pre-DF", text = "Nahm an der Hochzeit von Lor'themar Theron und der Ersten Arkanistin Thalyssra teil, als Zeichen des guten Willens für den Waffenstillstand mit der Horde."},
    {era = "DF", text = "Wurde unter den Adligen von Sturmwind recht beliebt, nachdem er die Allianz fünf Jahre lang kompetent regiert hatte. Half persönlich mit bei der Verteidigung Amirdrassils gegen Fyrakk den Lodernden."},
    {era = "TWW", text = "Führte die Streitkräfte der Allianz auf der Insel von Dorn gegen Xal'ataths Armeen an und hielt persönlich die Front gegen die Neruber in Heilsturz."},
    {era = "Pre-MN", text = "Vereitelte gemeinsam mit Alleria und Arator Windläufer ein Wiedererstarken der Brennenden Legion, wobei die drei sich scheinbar wieder als Familie annäherten. Dennoch entschied sich Alleria trotz all der gemeinsam verbrachten Jahre gegen eine Heirat, ließ Turalyon vor dem Altar zurück und brach ihm damit das Herz. In dieser Zeit verlor sich Turalyon immer häufiger in lichtblindem Fanatismus."},
    {era = "Midnight", text = "Vom Sonnenbrunnen gerufen, um Silbermond gegen die Leere zu verteidigen, führte Turalyon erneut die Streitkräfte des Lichts an. Sein religiöser Eifer geriet außer Kontrolle, und in einem schrecklichen Unfall verletzte er seinen Sohn schwer, verlor jedoch dennoch nicht den Glauben an das Licht. Er stellte sich Xal'atath in ihrer Leerenspitze entgegen und ging gemeinsam mit Alleria im Dunkelbrunnen verloren."},
}

IMAGOdb.npcs.CAT_LIGHT["prophet_velen"].name = "Prophet Velen"
IMAGOdb.npcs.CAT_LIGHT["prophet_velen"].race = "Draenei"
IMAGOdb.npcs.CAT_LIGHT["prophet_velen"].lore = [[Von den Völkern Azeroths bewundert und geschätzt, führt der alte Prophet Velen die Draenei bereits seit über dreizehntausend Jahren an. Als Erwählter der Naaru wurde ihm durch Visionen des Lichts die Gabe der Voraussicht verliehen. Diese Visionen haben nicht nur mehrfach das Leben seines Volkes gerettet, sondern ihm auch die Zuversicht gegeben, an eine Zukunft glauben zu können, in der das Böse eines Tages aus dem Kosmos verschwindet.

Velens Glaube an das Licht ist unerschütterlich, und seine Aufrichtigkeit sowie seine Güte haben sowohl Freunde als auch Feinde inspiriert - insbesondere Anduin Wrynn und Lady Liadrin.

Daher überrascht es kaum, dass der Sonnenbrunnen ihn um Hilfe gerufen hat. Schließlich hatte Velen ihn bereits einst von der Verderbnis gereinigt... und er wird nicht zulassen, dass er erneut verdunkelt wird.]]
IMAGOdb.npcs.CAT_LIGHT["prophet_velen"].zones = {"Insel von Quel'Danas", "Silbermond"}
IMAGOdb.npcs.CAT_LIGHT["prophet_velen"].source = "Cadash"
IMAGOdb.npcs.CAT_LIGHT["prophet_velen"].timeline = {
    {
        era = "Ancient",
        text = [[Herrschte vor Jahrtausenden als Teil des Triumvirats über Argus. Als Sargeras den Eredar Macht und einen Platz in der Brennenden Legion anbot, lehnte Velen ab und sammelte so viele Anhänger wie möglich, bevor er dem Planeten entfloh. Kil'jaeden, einst Velen so nah wie ein Bruder, schwor, ihn für diesen Verrat zu jagen.]],
    },
    {
        era = "Pre-WC1",
        text = [[Nach Jahrtausenden auf der Flucht vor der Brennenden Legion stürzte die Genedar auf Draenor ab, und Velens Volk - nun als Draenei bekannt - strandete dort. Als Kil'jaeden sie schließlich fand, verdarb er die Orcs und trieb sie zum Völkermord gegen die Draenei an. Velen konnte nur knapp mit einer Handvoll Überlebender entkommen.]],
    },
    {
        era = "WC2",
        text = [[Überlebte die Zerschmetterung Draenors durch Ner'zhul, musste jedoch mit ansehen, wie seine ehemalige Heimat in den Wirbelnden Nether gerissen wurde.]],
    },
    {
        era = "WC3",
        text = [[Entwendete das Naaruschiff „Exodar“, welches sich im Besitz von Kael'thas Sonnenwanderer befand, um der Scherbenwelt zu entkommen. Die überlebenden Draenei wurden jedoch entdeckt und der Antrieb des Schiffes sabotiert - wodurch sie ziellos durch den Wirbelnden Nether trieben.]],
    },
    {
        era = "Pre-TBC",
        text = [[Jahre später verließ die Exodar die transdimensionalen Ebenen und stürzte auf der Azurmythosinsel in Kalimdor auf Azeroth ab. Die Verwundeten versorgt, erkundeten die Draenei ihre neue Welt - nur um festzustellen, dass sie von denselben Orcs bewohnt wurde, die ihr Volk einst auf Draenor abgeschlachtet hatten. Velen schloss sich, auf der Suche nach Verbündeten, der Allianz an und fand Trost in Gesellschaft der Menschen, Zwerge und Nachtelfen, welche ebenfalls an das Licht glaubten.]],
    },
    {
        era = "TBC",
        text = [[Drängte seine neuen Verbündeten dazu, die Invasion der Scherbenwelt voranzutreiben. Nach Kil'jaedens Niederlage auf dem Sonnenbrunnenplateau stellte Velen den verdorbenen Sonnenbrunnen mithilfe des verbliebenen Fragments des gefallenen Naaru M'uru wieder her. Anschließend inspirierte er die Blutritter - allen voran Lady Liadrin - dazu, künftig verantwortungsvoller mit dem Licht umzugehen.]],
    },
    {
        era = "Pre-Cata",
        text = [[Als seine Schamanen ihn vor Erdbeben und elementaren Unruhen warnten, die jenen auf Draenor erschreckend ähnelten, zog Velen kurzzeitig in Betracht, auch Azeroth zu verlassen. Letztlich entschied er sich jedoch dagegen. Müde vom ewigen Davonlaufen erklärte er Azeroth zur neuen Heimat seines Volkes und schwor, künftig für diese Welt zu kämpfen.]],
    },
    {
        era = "Cata",
        text = [[Nahm an einem Treffen der Anführer der Allianz in Darnassus teil und wurde dort vom jungen Anduin Wrynn gebeten, ihn als Schüler aufzunehmen und ihn in den Wegen des Lichts zu unterweisen. Velen stimmte zu und sah eine Vision eines deutlich älteren Anduin, der die Armeen ganz Azeroths in eine letzte Schlacht gegen einen alles verschlingenden Schatten führte.]],
    },
    {
        era = "MoP",
        text = [[Heilte Anduin Wrynn gemeinsam mit Pandarenmönchen, nachdem der Prinz verletzt worden war, als er versucht hatte, Garrosh Höllschrei allein aufzuhalten.]],
    },
    {
        era = "Legion",
        text = [[Verteidigte die Exodar und musste mit ansehen, wie sein eigener Sohn Rakeesh starb. Nahm am zweiten Angriff auf die Verheere Küste teil und stellte sich Kil'jaeden in einer letzten Schlacht im Wirbelnden Nether entgegen. Der Dämon und Velen führten noch ein letztes Gespräch, bevor der Betrüger starb. Gemeinsam mit Illidan Sturmgrimm und Khadgar führte Velen Azeroths Streitkräfte auf Argus an und wurde Zeuge der Niederlage der Brennenden Legion.]],
    },
    {
        era = "BfA",
        text = [[Beteiligte sich an der Heilung von Azeroths Wunden, die Sargeras’ Schwert hinterlassen hatte. Versorgte persönlich die Flüchtlinge von Teldrassil.]],
    },
    {
        era = "DF",
        text = [[Organisierte das erste Tishamaat und vereinte damit zum ersten Mal auf Azeroth Draenei, Zerschlagene und Eredar. Half außerdem persönlich bei der Verteidigung von Amirdrassil gegen Fyrakk.]],
    },
    {
        era = "Midnight",
        text = [[Wurde vom Sonnenbrunnen gerufen, um ihn gegen den Leerensturm zu verteidigen. Beaufsichtigte die Magiewirker um den Sonnenbrunnen und war der Einzige, der keine magischen Verstärkungen benötigte, um weiterhin das Licht zu beschwören.]],
    }
}

IMAGOdb.npcs.CAT_LIGHT["calia_menethil"].name = "Calia Menethil"
IMAGOdb.npcs.CAT_LIGHT["calia_menethil"].race = "Verlassene des Lichts"
IMAGOdb.npcs.CAT_LIGHT["calia_menethil"].lore = [[Die bleiche Lady als politisch umstrittene Persönlichkeit zu bezeichnen, wäre eine gewaltige Untertreibung. Sie ist die Schwester des berüchtigten Arthas Menethil und die letzte verbliebene Erbin des Thrones von Lordaeron, welcher sich nun in den Händen der Verlassenen befindet - genau jener untoten Hände, die zu Arthas' ersten Opfern gehörten. Als Mitglied der Allianz und Priesterin des Lichts hatte Calia lange bestritten, jemals über ihr ehemaliges Volk herrschen zu wollen.

Das änderte sich jedoch, als sie selbst getötet und von dem Naaru Saa'ra als Untote wiedererweckt wurde. Sie schloss sich der Horde an und wurde Mitglied des Trostlosen Rates der Verlassenen. Obwohl sie inzwischen den Wunsch gezeigt hat, ihrem Volk zu helfen und sich sogar für diesen Zweck in Gefahr begibt, scheint sie das volle Vertrauen der Verlassenen noch immer nicht gewonnen zu haben.

Vorerst müssen ihre politischen Ambitionen - welcher Art sie auch sein mögen - jedoch warten. Das Licht hat sie nach Silbermond gerufen, und Calia ist dem Ruf gefolgt.]]
IMAGOdb.npcs.CAT_LIGHT["calia_menethil"].zones = {"Insel von Quel'Danas", "Silbermond"}
IMAGOdb.npcs.CAT_LIGHT["calia_menethil"].source = "Cadash"
IMAGOdb.npcs.CAT_LIGHT["calia_menethil"].timeline = {
    {era = "WC2", text = "Wurde gegen ihren Willen im Alter von nur 16 Jahren von ihrem Vater mit dem Adligen Lord Daval Prestor aus Alterac verlobt. Prestor, der in Wahrheit der Drache Todesschwinge war, verschwand nach dem Krieg, und Calia war erleichtert, unverheiratet zu bleiben."},
    {era = "Pre-WC3", text = "Verliebte sich in einen einfachen Fußsoldaten der Armee Lordaerons und wurde mit seinem Kind schwanger."},
    {era = "WC3", text = "Sie überlebte den Fall Lordaerons durch pures Glück und konnte gemeinsam mit ihrem Ehemann und gemeinsamer Tochter nach Süderstade fliehen, wo die drei eine Zeit lang heimlich glücklich zusammenlebten. Nach einem Angriff auf die Stadt wurde Calia von ihrer Familie getrennt."},
    {era = "Pre-Legion", text = "Irgendwann vor der dritten Invasion der Brennenden Legion traf sie auf Alonsus Faol, der ihr den Unterschied zwischen der willenlosen Geißel und den Untoten der Verlassenen zeigte. Voller Hoffnung, dass ihre Familie unter den Verlassenen sein könnte, schloss sich Calia Alonsus an."},
    {era = "Legion", text = "Sie trat dem Konklave bei und half Faol dabei, die Leerengöttin Saraka wieder in ihre heilige Naaru-Gestalt Saa'ra zurückzubringen. Außerdem half sie dabei, die Exodar gegen die Brennende Legion zu verteidigen."},
    {era = "Pre-BfA", text = "Sie trat erneut als öffentliche Persönlichkeit auf und wurde von König Anduin Wrynn als rechtmäßige Herrscherin von Lordaeron angesehen. Sie nahm am so genannten Treffen teil, in der Hoffnung, ihre Familie wiederzusehen. Dort gab sie sich zu erkennen und forderte die Verlassenen auf, zur Allianz zu desertieren. Anstatt ihre Liebsten wiederzufinden, fand sie im darauffolgenden Massaker nur den Tod. Saa'ra und Anduin erweckten sie als Untote des Lichts wieder zum Leben."},
    {era = "BfA", text = "Nach dem Ende des Vierten Krieges freundete sich Calia mit Derek Prachtmeer an, der ebenfalls zu einem Untoten gemacht worden war. Beide beschlossen, sich der Horde anzuschließen, und Calia erklärte, dass sie nicht nur ihrem Volk helfen, sondern auch den Namen Menethil rehabilitieren wolle."},
    {era = "Pre-SL", text = "Sie übernahm die Rolle einer Beraterin der Verlassenen und trat dem Rat der Horde als Anführerin bei. Außerdem begleitete sie Thrall auf einer diplomatischen Mission zu den Überresten von Teldrassil."},
    {era = "SL", text = "Sie reiste in die Schattenlande und half im Feldzug gegen den Kerkermeister. Später spielte Calia eine entscheidende Rolle bei der Rückeroberung der Unterstadt von der Seuche des Vierten Krieges und nutzte ihr Licht als Schutzschild gegen das verbleibende Gift. Sie trat dem Trostlosen Rat als eine seiner Anführerinnen bei, ernannte Derek Prachtmeer zu ihrem Champion und schwor, die Truppen der Verlassenen aus Gilneas abzuziehen."},
    {era = "DF", text = "Sie leitete erfolgreich den Gegenangriff der Verlassenen, nachdem der Scharlachrote Kreuzzug gegen die Unterstadt vorgerückt war. Sie hielt Wort und zog nicht nur ihre untoten Truppen aus den Ruinen von Gilneas ab, sondern half auch persönlich König Genn Graumähne und Prinzessin Tess dabei, die Stadt der Worgen von der Besatzung des Scharlachroten Kreuzzugs zurückzuerobern."},
    {era = "Midnight", text = "Sie wurde vom Sonnenbrunnen gerufen und verteidigte Silbermond gegen den Leerensturm."},
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
IMAGOdb.npcs.CAT_LIGHT["hauptmann_fareeya"].lore = [[Als Stellvertreterin von Hochexarch Turalyon ist Fareeya eine der Anführerinnen der Armee des Lichts. Als Überlebende der Brennenden Legion floh sie ursprünglich gemeinsam mit Prophet Velen von Argus, doch später führte ihr Weg sie zurück auf ihre verderbte Heimatwelt. Zusammen mit ihren elitärsten Draenei-Soldaten war sie fest entschlossen, nicht länger zu fliehen, sondern standzuhalten und zu kämpfen.

Aus ihrer Truppe entstand die Armee des Lichts, die sich dem Licht mit Leib und Seele verschrieb. Der heilige Kreuzzug wuchs stetig und inspirierte sogar Angehörige anderer Völker dazu, sich der Mission anzuschließen. Schlussendlich wurden die Dämonen - mit der Hilfe der Champions von Azeroth - endgültig besiegt. Fareeya dachte jedoch nicht daran, sich auf ihren Lorbeeren auszuruhen, und folgte Turalyon in die Reihen der Allianz auf Azeroth, entschlossen, weiterhin für alles Heilige und Gute zu kämpfen.]]
IMAGOdb.npcs.CAT_LIGHT["hauptmann_fareeya"].zones = {"Insel von Quel'Danas", "Silbermond"}
IMAGOdb.npcs.CAT_LIGHT["hauptmann_fareeya"].source = "Cadash"
IMAGOdb.npcs.CAT_LIGHT["hauptmann_fareeya"].timeline = {
    {
        era = "Ancient",
        text = [[Sie entkam gemeinsam mit Prophet Velen an Bord der Genedar von Argus, als sich die Eredar der Brennenden Legion anschlossen. Später übernahm sie ein weiteres Raumschiff - die Xenedar - und kehrte damit in den Wirbelnden Nether zurück. Unter dem Kommando des Naaru Xe'ra wurde sie lichtgeschmiedet und zu einer Anführerin der Armee des Lichts.]],
    },
    {
        era = "Legion",
        text = [[Kämpfte an vorderster Front während des Angriffs auf Antorus. Mit der Unterstützung der Champions von Azeroth konnte die Armee des Lichts der Brennenden Legion auf Argus ein für alle Mal ein Ende bereiten.]],
    },
    {
        era = "BfA",
        text = [[Begrüßte die Entscheidung des Hochexarchen Turalyon ausdrücklich, die Armee des Lichts der Allianz anzuschließen. Sie wurde mit Velen und ihrem Volk wiedervereint und begann damit, neue Draenei aus Azeroth zu lichtgeschmiedeten Soldaten auszubilden. Außerdem kämpfte sie im Vierten Krieg.]],
    },
    {
        era = "DF",
        text = [[Nahm am ersten Tishamaat-Fest der Draenei auf Azeroth teil.]],
    },
    {
        era = "TWW",
        text = [[Reiste nach Heilsturz, um Beledars Licht zu erleben, und inspirierte die jungen Arathi mit ihrer Begabung im Umgang mit dem Licht.]],
    },
    {
        era = "Midnight",
        text = [[Half bei der Verteidigung des Sonnenbrunnens gegen den Leerensturm.]],
    }
}

IMAGOdb.npcs.CAT_LIGHT["delas_moonfang"].name = "Delas Mondfang"
IMAGOdb.npcs.CAT_LIGHT["delas_moonfang"].race = "Nachtelfe"
IMAGOdb.npcs.CAT_LIGHT["delas_moonfang"].lore = "Delas Mondfang ist eine historische Pionierin: Als ehemalige Priesterin von Elune war sie die erste Nachtelfe, die den Weg des Paladins einschlug und sich dem Orden der Silbernen Hand anschloss. Unter der Anleitung von Mehlar Dämmerklinge lernte sie, das heilige Licht mit den Traditionen ihres Volkes in Einklang zu bringen. In Midnight dient sie als lebendiges Symbol der Einheit am Sonnenbrunnen und beweist, dass der Glaube an das Licht keine Grenzen zwischen den Elfenvölkern kennt, wenn es um die Verteidigung Azeroths geht."
IMAGOdb.npcs.CAT_LIGHT["delas_moonfang"].zones = {"Insel von Quel'Danas"}
IMAGOdb.npcs.CAT_LIGHT["delas_moonfang"].source = "warcraft.wiki.gg/wiki/Delas_Moonfang"
IMAGOdb.npcs.CAT_LIGHT["delas_moonfang"].timeline = {
    {era = "WoD", text = "Diente als Mondpriesterin im Schattenmondtal auf Draenor und unterstützte die Allianz-Streitkräfte gegen die Eiserne Horde."},
    {era = "Legion", text = "Trat der Silbernen Hand bei und wurde im Sanktum des Lichts zur ersten Nachtelf-Paladinin geweiht."},
    {era = "Midnight", text = "Kämpft als erfahrene Paladinin auf der Insel von Quel'Danas für die Verteidigung des Sonnenbrunnens."},
}

IMAGOdb.npcs.CAT_LIGHT["lord_grayson_schattenbruch"].name = "Lord Grayson Schattenbruch"
IMAGOdb.npcs.CAT_LIGHT["lord_grayson_schattenbruch"].race = "Mensch"
IMAGOdb.npcs.CAT_LIGHT["lord_grayson_schattenbruch"].lore = [[Der wichtigste menschliche Paladinausbilder und ein erfahrener Kämpfer des Ordens der Silbernen Hand, ist seit Jahrzehnten ein unverzichtbarer Teil der Allianz.

Er ist nicht nur für die Ausbildung neuer Rekruten verantwortlich und hilft ihnen dabei, zu leuchtenden Vorbildern der Rechtschaffenheit zu werden, sondern überwacht auch Bedrohungen in ganz Azeroth und entsendet bei Bedarf Verstärkungen.

Schattenbruch ist ein Paladin mit sehr traditionellen Werten und verachtet die Untoten nach wie vor zutiefst. Er ist weder besonders freundlich noch nachsichtig – weder mit seinen Schülern noch mit seinen Feinden –, strebt letztlich jedoch danach, das Beste für die Allianz und den Orden der Silbernen Hand zu erreichen.]]
IMAGOdb.npcs.CAT_LIGHT["lord_grayson_schattenbruch"].zones = {"Insel von Quel'Danas"}
IMAGOdb.npcs.CAT_LIGHT["lord_grayson_schattenbruch"].source = "Cadash"
IMAGOdb.npcs.CAT_LIGHT["lord_grayson_schattenbruch"].timeline = {
    {era = "Pre-Classic", text = "Wurde von seiner Schwester Jubeka besucht, die nach der Geißelung von Lordaeron zu einer Verlassenen geworden war. Grayson jagte sie voller Abscheu fort, da er in ihr nichts weiter als ein Monster sah."},
    {era = "Classic", text = "In Sturmwind stationiert überwachte er Bedrohungen in ganz Azeroth und vergab Aufträge sowohl an neue als auch erfahrene Paladine. Er half anderen Paladinen dabei, ihre heiligen Streitrosse zu erhalten – treue Reittiere, die jedem Ritter des Ordens als loyale Gefährten dienen."},
    {era = "TBC", text = "Er schloss sich der Expedition in die Scherbenwelt an, mit Arator Windläufer als seinem Knappen, und kämpfte gegen die Höllenorcs in der Höllenfeuerzitadelle."},
    {era = "Pre-Cata", text = "Bei der Zeremonie zu Ehren der gefallenen Allianzhelden von Nordend servierte er Speisen und Getränke und bewies damit, dass keine Aufgabe für einen Paladin seines Ranges zu bescheiden ist, solange sie anderen hilft."},
    {era = "Cata", text = "Er entsandte Paladintruppen, um einige der größten Bedrohungen Azeroths zu bekämpfen, darunter die Orcs und Dunkeleisenzwerge des Schwarzfels."},
    {era = "Legion", text = "Er wurde damit beauftragt, die verschiedenen Paladinorden in der Kapelle des hoffnungsvollen Lichts aufeinander abzustimmen, und vereitelte eine neue untote Bedrohung in den Östlichen Pestländern. Erlöste Schattenmähne, das untote Pferd des verstorbenen Barons Totenschwur, und machte es zum heiligen Reittier des Hochlords der Silbernen Hand. Später kämpfte er auf Argus gegen die Brennende Legion."},
    {era = "Pre-MN", text = "Nun in der Kapelle des hoffnungsvollen Lichts als oberster Paladinlehrer stationiert, war er bei der Beförderung seines ehemaligen Knappen Arator anwesend. Er leugnete die Existenz seiner Schwester."},
    {era = "Midnight", text = "Er wurde vom Sonnenbrunnen gerufen und verteidigte Silbermond gegen den Leerensturm."},
}

IMAGOdb.npcs.CAT_LIGHT["eadric_der_reine"].name = "Eadric der Reine"
IMAGOdb.npcs.CAT_LIGHT["eadric_der_reine"].race = "Mensch"
IMAGOdb.npcs.CAT_LIGHT["eadric_der_reine"].lore = [[Als Paladin und Quartiermeister des Argentumkreuzzuges ist Eadric vor allem für seine Verdienste um den Orden während des Krieges gegen den Lichkönig in Nordend bekannt. Die Spannungen zwischen der Allianz und der Horde nahmen erneut zu, und Hochlord Tirion Fordring schlug vor, ein freundschaftliches Turnier auszurichten, um einen größeren Konflikt zu verhindern. Sein Großchampion Eadric war für den Großteil der Organisation dieses Turniers verantwortlich.

Seitdem ist er meistens in Nordend stationiert, doch wie jeder wahre Paladin geht er dorthin, wohin das Licht ihn ruft.]]
IMAGOdb.npcs.CAT_LIGHT["eadric_der_reine"].zones = {"Parhelionplaza"}
IMAGOdb.npcs.CAT_LIGHT["eadric_der_reine"].source = "Cadash"
IMAGOdb.npcs.CAT_LIGHT["eadric_der_reine"].timeline = {
    {
        era = "WotLK",
        text = [[Diente dem Argentumkreuzzug und Tirion Fordring als Großchampion. Er war für die Organisation des Argentumturniers im nördlichen Teil von Eiskrone verantwortlich, indem er das Turniergelände sicherte und mit Vorräten versorgte sowie das Training der Kämpfer überwachte. Er diente als Quartiermeister und nahm gelegentlich selbst als Kämpfer am Turnier teil.]],
    },
    {
        era = "Legion",
        text = [[Schloss sich den neu formierten Rittern der Silbernen Hand an und diente als Quartiermeister der Kapelle des hoffnungsvollen Lichts.]],
    },
    {
        era = "Pre-SL",
        text = [[Hielt die wütende Geißel in Nordend zurück.]],
    },
    {
        era = "Midnight",
        text = [[Wurde vom Sonnenbrunnen gerufen und kämpfte auf der Parhelionplaza gegen die Leere.]],
    }
}

IMAGOdb.npcs.CAT_LIGHT["yalia_weisenwisper"].name = "Yalia Weisenwisper"
IMAGOdb.npcs.CAT_LIGHT["yalia_weisenwisper"].race = "Pandaren"
IMAGOdb.npcs.CAT_LIGHT["yalia_weisenwisper"].lore = [[Als Fischerin aufgewachsen, bei den Shado-Pan ausgebildet und als Priesterin sowie Alchemistin tätig, ist Yalia eine Frau mit vielen Talenten. Nachdem sie ihre Familie schon in jungen Jahren zurücklassen musste, widmete sie den Großteil ihres Lebens der Heilung ihrer Mitpandaren im Shado-Pan-Kloster im Gipfel von Kun-Lai.

Nachdem sie im Kampf gegen Feinde wie Lei Shen und die Brennende Legion ihre Unterstützung gewährt hatte, wurden Yalias Weisheit und ihr Wunsch, die Welt zu einem besseren Ort zu machen, vom Heiligen Licht erkannt. Nun wurde sie nach Silbermond gerufen, um erneut für ihre Welt zu kämpfen.]]
IMAGOdb.npcs.CAT_LIGHT["yalia_weisenwisper"].zones = {"Parhelionplaza"}
IMAGOdb.npcs.CAT_LIGHT["yalia_weisenwisper"].source = "Cadash"
IMAGOdb.npcs.CAT_LIGHT["yalia_weisenwisper"].timeline = {
    {
        era = "Pre-WC3",
        text = [[Da zwei Pandarenjungen in eine gefährliche Rivalität verfielen, um eines Tages ihre Hand zu gewinnen, sah Yalia keinen anderen Ausweg, als ihre Heimat und ihre Familie hinter sich zu lassen. Bereits im Alter von fünf Jahren schloss sie sich dem Orden der Shado-Pan an.]],
    },
    {
        era = "MoP",
        text = [[Mittlerweile zu einer erfahrenen Shado-Panpriesterin aufgestiegen, beaufsichtigte Yalia die Ausbildung neuer Rekruten. Als der Konflikt zwischen Allianz und Horde auf Pandaria ausbrach, kämpfte sie zur Verteidigung der Tonlongsteppe gegen die manifestierten Sha. Später wurde sie mit ihrer Familie wiedervereint und verteidigte das Shado-Pan-Kloster gegen den Angriff der Zandalari. Dort begegnete sie Chen Sturmbräu, und die beiden verliebten sich ineinander.]],
    },
    {
        era = "Legion",
        text = [[Wurde von Prophet Velen für das Konklave rekrutiert, um dort als Alchemistin zu dienen. Half bei der Verteidigung des Netherlichttempels.]],
    },
    {
        era = "Midnight",
        text = [[Wurde vom Sonnenbrunnen gerufen, um ihn gegen die Leere zu verteidigen.]],
    }
}

IMAGOdb.npcs.CAT_LIGHT["lothraxion"].name = "Lothraxion"
IMAGOdb.npcs.CAT_LIGHT["lothraxion"].race = "Lichtgeschmiedeter Nathrezim"
IMAGOdb.npcs.CAT_LIGHT["lothraxion"].lore = [[Man sagt, dass Schreckenslords grausame, sadistische und manipulative Wesen seien - entweder Spione der Brennenden Legion oder der Reiche des Todes selbst. Gestaltwandler, die die Reihen ihrer Feinde infiltrieren und selbst die edelsten Seelen gegeneinander aufbringen. Man sagt, man könne ihnen nicht vertrauen.

Lothraxion ist die eine Ausnahme von dieser Regel. Er zerstörte unzählige Welten im Dienst von Sargeras’ großer Vision und machte die Leere zu seinem größten Feind. Als der Kreuzzug der Dämonen ihn mit den Draenei zusammenführte, ließ sich Lothraxion dazu bewegen, seine früheren Herren zu verraten. Er schloss sich der Armee des Lichts an und wurde lichtgeschmiedet.

Da er all die Schrecken kennt, die sowohl das Fel als auch die Leere über den Kosmos gebracht haben, akzeptiert Lothraxion keinerlei Kompromisse im Umgang mit Wesen, die diesen Mächten dienen. Er ist überzeugt, dass einzig das Licht diese Übel besiegen kann. Nun wurde Lothraxion unter dem Befehl seines Hochexarchen Turalyon zum Sonnenbrunnen gerufen, um erneut gegen die Mächte der Dunkelheit zu kämpfen.]]
IMAGOdb.npcs.CAT_LIGHT["lothraxion"].zones = {"Insel von Quel'Danas", "Nexuspunkt Xenas", "Parhelionplaza", "Silbermond", "Leerensturm"}
IMAGOdb.npcs.CAT_LIGHT["lothraxion"].source = "Cadash"
IMAGOdb.npcs.CAT_LIGHT["lothraxion"].timeline = {
    {
        era = "Ancient",
        text = [[Half dabei, als Dämon der Brennenden Legion zahllose Welten in den Großen Dunklen Weiten zu vernichten. Verließ die Dämonen und seine Mitstreiter der Nathrezim, nachdem er den Draenei begegnet war. Schloss sich schließlich der Armee des Lichts an, schwor Xe'ra, der Mutter des Lichts, die Treue und wurde selbst vom Licht durchdrungen.]],
    },
    {
        era = "Pre-WC3",
        text = [[Nach der Zerstörung von Draenor rekrutierte Lothraxion Turalyon und Alleria Windläufer in die Armee des Lichts. Als Alleria von der Leere infiziert wurde, half Lothraxion ihr, ihren Verstand zu bewahren, und überzeugte sogar Xe'ra davon, sie nicht hinzurichten. Später kämpfte er an der Seite von Hochexarch Turalyon auf Argus.]],
    },
    {
        era = "Legion",
        text = [[Wurde auf der Dämonenwelt Niskara gefangen genommen und eingesperrt, jedoch vom Hochlord der Silbernen Hand gerettet. Half bei der Verteidigung des Netherlichttempels und schloss sich später den Armeen Azeroths auf der Vindikaar an, um den Kampf auf Argus fortzusetzen. Nach der Niederlage der Brennenden Legion schloss sich Lothraxion jedoch nicht der Allianz an, sondern zog weiter, um andernorts im Kosmos Dämonen zu bekämpfen.]],
    },
    {
        era = "Midnight",
        text = [[Wurde vom Sonnenbrunnen gerufen, um ihn gegen die Verschlingende Heerschar zu verteidigen, und schloss sich Alleria Windläufer sowie Magister Umbric beim Angriff auf den Leerensturm an. Die überwältigende Präsenz der dunklen Energien trieb Lothraxion dazu, nach immer radikaleren Methoden im Kampf gegen die Leere zu suchen, wodurch er sogar Verbündete gefährdete, um sein Ziel zu erreichen. Als sein Fanatismus schließlich ganz Silbermond zu vernichten drohte, wurde Lothraxion von seinen eigenen Verbündeten getötet.]],
    }
}

IMAGOdb.npcs.CAT_LIGHT["alonsus_faol"].name = "Erzbischof Alonsus Faol"
IMAGOdb.npcs.CAT_LIGHT["alonsus_faol"].race = "Verlassener"
IMAGOdb.npcs.CAT_LIGHT["alonsus_faol"].lore = [[Ehemals der Erzbischof der Kirche des Heiligen Lichts, war Alonsus Faol wohl der angesehenste Mann in ganz Lordaeron. Als die Horde zum ersten Mal in Azeroth einfiel, war es Faol, der die ersten Paladine ausbildete und weihte – eine Entscheidung, die der Allianz letztlich den Sieg im Krieg sicherte. Stolz auf seine Errungenschaften, verstarb der betagte Bischof schließlich friedlich.

Doch Arthas Menethil ließ ihn nicht ruhen und erweckte ihn als geistlosen Diener der Geißel wieder. Als Alonsus sich schließlich aus der Kontrolle des gefallenen Paladins befreien konnte, wurde er von der Allianz gemieden und von radikalen Dienern des Lichts gejagt; zudem bereitete ihm die Anwendung heiliger Magie fortan schreckliche Schmerzen. Er zog sich für viele Jahre von der Welt zurück.

Als die Legion einfiel, konnte Alonsus nicht länger tatenlos zusehen. Als Anführer des Konklaves vereinte er die Priesterorden und half bei der Bergung verschiedener Artefakte im Kampf gegen die Dämonen. Eines dieser Artefakte war die Klinge des Schwarzen Imperiums – Xal'atath. Heute kämpft Alonsus für den Sonnenbrunnen und das Licht, um seinen einstigen Fehler wiedergutzumachen.]]
IMAGOdb.npcs.CAT_LIGHT["alonsus_faol"].zones = {"Brennende Steppe", "Das Arathihochland", "Insel von Quel'Danas", "Östliche Pestländer", "Parhelionplaza", "Silbermond", "Tirisfal"}
IMAGOdb.npcs.CAT_LIGHT["alonsus_faol"].source = "Cadash - IMAGO Community"
IMAGOdb.npcs.CAT_LIGHT["alonsus_faol"].timeline = {
    {era = "Pre-WC1", text = "Führte die Kirche des Heiligen Lichts als Erzbischof an und nahm Uther als seinen Lehrling auf."},
    {era = "WC2", text = "Gründete den Orden der Silbernen Hand und bildete die ersten Paladine persönlich aus."},
    {era = "Pre-WC3", text = "Sammelte Spenden für den Wiederaufbau von Sturmwind sowie verschiedener Siedlungen im Königreich Lordaeron. Erbaute gemeinsam mit seinem neuen Lehrling Benediktus die Kathedrale von Sturmwind. Kurze Zeit später starb Alonsus eines natürlichen Todes."},
    {era = "WC3", text = "Wurde von Arthas Menethil wiedererweckt und gezwungen, für die Geißel zu kämpfen. Wurde zusammen mit den anderen Verlassenen aus der Gedankenkontrolle befreit, weigerte sich jedoch, sich ihren Reihen anzuschließen, und verschwand."},
    {era = "Legion", text = "Führte das Konklave an, welches die verschiedenen Priesterorden im Kampf gegen die Brennende Legion vereinte. Half bei der Bergung mächtiger Waffen, darunter Xal'atath. Rief die Paladine zur Hilfe auf, um den Netherlichttempel zu verteidigen."},
    {era = "Pre-BfA", text = "Führte Calia Menethil zurück in die Welt. Auf Geheiß von König Anduin half er bei der Organisation der Zusammenkunft, um die Verlassenen und die lebenden Menschen einander wieder näherzubringen. Während der Verhandlungen lehnte Alonsus es ab, der Horde beizutreten. Half dabei, Calia als vom Licht berührte Untote wiederzuerwecken, nachdem sie beim Massaker der Zusammenkunft getötet worden war."},
    {era = "BfA", text = "Unterstützte die Nachtelfen-Flüchtlinge von Teldrassil bei der Bereitstellung von Notunterkünften und entsandte Priester, um die Verwundeten zu heilen."},
    {era = "SL", text = "Half den Verlassenen dabei, Unterstadt von der Seuche des Vierten Krieges zu befreien, und war bei der Gründung des Desolaten Rates anwesend."},
    {era = "Pre-Midnight", text = "Versammelte auf Lady Liadrins Ersuchen die Priester in Silbermond, in Erwartung von Xal'ataths Angriff auf den Sonnenbrunnen."},
    {era = "Midnight", text = "Überwachte die Verteidigung des Sonnenbrunnens und stärkte die erschöpften Verteidiger mit heiliger Magie. Half Arator dabei, seine Zweifel an seinem Vater und dem Licht zu überwinden."},
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
IMAGOdb.npcs.CAT_LIGHT["aponi_lichtmaehne"].lore = [[Während des Krieges gegen den Lichkönig in Nordend hatte die Taurenkriegerin Aponi Lichtmähne eine Eingebung. Sie wollte ihrem Volk und der Horde mit mehr als nur ihrer Stärke helfen. Nach einem Gespräch mit ihrem Freund Tahu Weisenwind verband Aponi die Lehren der Gottheit An'she - der Sonne - mit ihrem Kampfstil. So wurde sie zum ersten Taurenpaladin.

Seit sie sich während der dritten und letzten Invasion der Brennenden Legion dem Orden der Silbernen Hand angeschlossen hat, sind Aponis Sonnenläufer in ganz Azeroth anzutreffen und helfen jedem, der ihre Unterstützung benötigt.]]
IMAGOdb.npcs.CAT_LIGHT["aponi_lichtmaehne"].zones = {"Insel von Quel'Danas", "Parhelionplaza"}
IMAGOdb.npcs.CAT_LIGHT["aponi_lichtmaehne"].source = "Cadash"
IMAGOdb.npcs.CAT_LIGHT["aponi_lichtmaehne"].timeline = {
    {
        era = "WotLK",
        text = [[Kämpfte als Kriegerin in Nordend gegen die Armeen des Lichkönigs, wurde jedoch schwer verwundet und kehrte nach Donnerfels zurück. Dort legten sie und Tahu Weisenwind den Grundstein für die ersten taurischen Paladin- und Priesterorden. Nachdem sie geheilt worden war, kehrte Aponi in den Krieg zurück und kämpfte nun mit dem Licht An'shes an ihrer Seite.]],
    },
    {
        era = "Cata",
        text = [[Gründete offiziell den Paladinorden der Sonnenläufer und war die wichtigste Ausbilderin neuer taurischer Rekruten. Außerdem half sie dabei, Donnerfels gegen die tobenden Elementare zu verteidigen.]],
    },
    {
        era = "Legion",
        text = [[Schloss sich den Streitkräften des Ordens der Silbernen Hand an. Sie versuchte erfolglos, den Dämon Balnazzar aufzuspüren, wurde dabei jedoch gefangen genommen und musste vom Hochlord gerettet werden. Zudem half sie bei der Verteidigung des Netherlichttempels und der Exodar gegen die Brennende Legion.]],
    },
    {
        era = "BfA",
        text = [[Als sich der Orden der Silbernen Hand aufgrund des Fraktionskonflikts im Vierten Krieg aufspaltete, kehrte Aponi nach Donnerfels zurück, um erneut neue Rekruten auszubilden.]],
    },
    {
        era = "DF",
        text = [[Schloss sich der Drachenschuppenexpedition auf die Dracheninseln an und wurde zur Freundin und Unterstützerin der Zentauren von Teerakai.]],
    },
    {
        era = "TWW",
        text = [[Kämpfte auf der Insel von Dorn gegen die Streitkräfte von Xal'atath, nachdem sie von der Zerstörung Dalarans erfahren hatte.]],
    },
    {
        era = "Midnight",
        text = [[Wurde vom Sonnenbrunnen gerufen und verteidigte ihn gegen den Leerensturm.]],
    }
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

IMAGOdb.npcs.CAT_LIGHT["general_amias_bellamy"].name = "Generalin Amias Bellamy"
IMAGOdb.npcs.CAT_LIGHT["general_amias_bellamy"].race = "Arathi"
IMAGOdb.npcs.CAT_LIGHT["general_amias_bellamy"].lore = [[Nur wenige können behaupten, dass ihr Glaube eine so bedeutende Rolle in ihrem Leben gespielt hat wie bei den Arathi von Heilsturz. Bellamy unternahm - wie viele ihrer Mitstreiter unter den Paladinen - die gefährliche Expedition über das Meer, um einer Vision des Lichts zu folgen.

Letztlich strandete sie unter Khaz Algar, wobei die Heilige Flamme und ihr Stern Beledar das einzige Licht in ihrem neuen Leben voller ständiger Dunkelheit und Gefahr waren. Der Glaube war nicht länger bloß ein Trost – er war das, was sie am Leben hielt.

Natürlich wurde sie nach der Verteidigung von Heilsturz vom Sonnenbrunnen gerufen.

Natürlich wird sie weiter für das Licht kämpfen - und nur für das Licht.

Natürlich sollte jedes Wesen der Leere als Feind betrachtet werden.]]
IMAGOdb.npcs.CAT_LIGHT["general_amias_bellamy"].zones = {"Insel von Quel'Danas", "Silbermond", "Die Leerenspitze", "Leerensturm"}
IMAGOdb.npcs.CAT_LIGHT["general_amias_bellamy"].source = "Cadash"
IMAGOdb.npcs.CAT_LIGHT["general_amias_bellamy"].timeline = {
    {
        era = "Pre-Legion",
        text = [[Schloss sich der Arathi-Expedition auf Geheiß der Vision ihres Kaisers an. Überlebte die Reise und strandete in Heilsturz, wo sie fortan als Paladin kämpfte, um den Kristall Beledar zu beschützen und jeden Feind zu vernichten, der ihre neue Heimat bedrohte.]],
    },
    {
        era = "Midnight",
        text = [[Wurde vom Sonnenbrunnen gerufen und verteidigte ihn als Generalin der Vorhut des Lichts unter Turalyon. Reagierte zunehmend gereizt auf die Bewohner Silbermonds, da diese der Vorhut nicht ihre bedingungslose Unterstützung gewährten. Beteiligte sich am Angriff auf die Leerenspitze von Xal'atath und wurde dabei so sehr von Lichtblindheit verzehrt, dass sie begann, ihre eigenen Verbündeten anzugreifen. Wurde schließlich von Turalyon und den Champions von Azeroth getötet.]],
    }
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
IMAGOdb.npcs.CAT_LIGHT["mariella_ward"].lore = [[Bekannt als Mariella „die Häretikerin“, diente sie einst dem Scharlachroten Ansturm. Da sie die fanatische Art und Weise, wie der Orden das Licht führte, ablehnte, wurde sie wegen Ungehorsams zum Tode verurteilt. Dank einer rechtzeitigen Rettung durch den von Alonsus Faol entsandten Hohepriester konnte sie gerettet werden und schloss sich dem Konklave an.
Nachdem sie Vergebung für ihre vergangenen Taten gefunden hat, wurde sie nun vom Sonnenbrunnen gerufen, um Silbermond als Teil der Vorhut des Lichts zu beschützen.]]
IMAGOdb.npcs.CAT_LIGHT["mariella_ward"].zones = {"Insel von Quel'Danas", "Parhelionplaza"}
IMAGOdb.npcs.CAT_LIGHT["mariella_ward"].source = "Cadash - IMAGO Community"
IMAGOdb.npcs.CAT_LIGHT["mariella_ward"].timeline = {
    {era = "Legion", text = "Sagte sich vom Scharlachroten Ansturm los und entkam nur knapp dem darauf folgenden Todesurteil. Schloss sich dem Konklave der Priester im Netherlichttempel an."},
    {era = "Midnight", text = "Wurde nach Silbermond gerufen, um den Sonnenbrunnen zu verteidigen, und blieb an seinen heiligen Wassern, um ihre Magie gegen den vordringenden Leerensturm einzusetzen."},
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
IMAGOdb.npcs.CAT_LIGHT["vindicator_boros"].lore = [[Als Anführer der Hand von Argus und zugleich Mitglied der Silbernen Hand hat Boros geschworen, die Traditionen der Paladine am Leben zu erhalten. Bereits mehrfach hat er sich als fähiger militärischer Befehlshaber im Dienst seines Volkes, der Draenei, bewiesen, doch er zögert niemals, Hammer und Glauben all jenen zur Verfügung zu stellen, die Hilfe benötigen.

Nun wurde Verteidiger Boros vom Sonnenbrunnen gerufen, um gegen die Leere zu kämpfen. Wie immer kann man sich darauf verlassen, dass er seine Pflicht gegenüber den Völkern Azeroths erfüllt.]]
IMAGOdb.npcs.CAT_LIGHT["vindicator_boros"].zones = {"Insel von Quel'Danas", "Parhelionplaza"}
IMAGOdb.npcs.CAT_LIGHT["vindicator_boros"].source = "Cadash"
IMAGOdb.npcs.CAT_LIGHT["vindicator_boros"].timeline = {
    {
        era = "TBC",
        text = [[Besiegte den Verräter Sironas und bewahrte die draenischen Flüchtlinge auf der Blutmythosinsel davor, der dämonischen Verderbnis anheimzufallen. Später half er dabei, die Landschaft rund um die Absturzstelle der Exodar wiederherzustellen.]],
    },
    {
        era = "Legion",
        text = [[Unterstellte die Hand von Argus dem Orden der Silbernen Hand. Verteidigte die Exodar und den Netherlichttempel gegen die Brennende Legion. Arbeitete gemeinsam mit den Priestern und Dämonenjägern daran, gefangene Paladine zu retten. Später kämpfte er gegen die Legion auf seiner Heimatwelt Argus.]],
    },
    {
        era = "DF",
        text = [[War bei der Wiedererweckung von Tyr anwesend. Nahm am ersten Tishamaat der Draenei auf Azeroth teil.]],
    },
    {
        era = "Midnight",
        text = [[Half bei der Verteidigung des Sonnenbrunnens gegen den Leerensturm.]],
    }
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

IMAGOdb.npcs.CAT_LIGHT["aeonara_dawnshade"].name = "Aeonara Dämmerschemen"
IMAGOdb.npcs.CAT_LIGHT["aeonara_dawnshade"].race = "Leerenelfe"
IMAGOdb.npcs.CAT_LIGHT["aeonara_dawnshade"].lore = [[Als einzige bekannte Leerenelfenpaladin kämpft Aeonara Dämmerschemen gegen die Armeen der Leere. Sie verteidigte den Telogrusriss gegen die Astralen der Schattenwache und kämpfte später in der Manaschmiede Omega auf K'aresh gegen die Streitkräfte von Dimensius.

Sie wurde nun als Teil der Vorhut des Lichts berufen, um den Sonnenbrunnen gegen die Verschlingende Heerschar von Xal'atath zu verteidigen.]]
IMAGOdb.npcs.CAT_LIGHT["aeonara_dawnshade"].zones = {"Parhelionplaza"}
IMAGOdb.npcs.CAT_LIGHT["aeonara_dawnshade"].source = "Travanoid"
IMAGOdb.npcs.CAT_LIGHT["aeonara_dawnshade"].timeline = {
    {
        era = "DF",
        text = [[Verteidigte Leerenelfenlager im Telogrusriss gegen Angriffe der Schattenwache.]],
    },
    {
        era = "TWW",
        text = [[Begleitete Alleria Windläufer und die Leerenelfen nach K'aresh, um in der Manaschmiede Omega gegen Dimensius zu kämpfen.]],
    },
    {
        era = "Midnight",
        text = [[Wurde von Lady Liadrin zur Parhelionplaza gerufen, um den Sonnenbrunnen gegen die Verschlingende Heerschar zu verteidigen. Gemeinsam mit anderen Mitgliedern der Vorhut des Lichts besiegte sie den Leerenmarkierten Reservisten.]],
    }
}

-- CAT_NEUTRAL
IMAGOdb.npcs.CAT_NEUTRAL["allari_die_seelenfresserin"].name = "Allari die Seelenfresserin"
IMAGOdb.npcs.CAT_NEUTRAL["allari_die_seelenfresserin"].race = "Blutelf"
IMAGOdb.npcs.CAT_NEUTRAL["allari_die_seelenfresserin"].lore = [[Mit einem beinahe unübertroffenen Hass auf die Brennende Legion verdiente sich Allari die Seelenfresserin ihren Beinamen, indem sie die mächtige Seelensense nutzte, um die Seelen von Dämonen darin einzusperren. Diese gefährliche Waffe kommuniziert mit ihr und drängt sie dazu, ihren Feinden noch mehr Leid zuzufügen, weshalb Allari sie häufig auch als Folterinstrument einsetzt.

Trotz ihrer extremen Methoden kämpft Allari jedoch für das Wohl Azeroths. Nach der endgültigen Niederlage der Legion hat sie es sich zur Aufgabe gemacht, willige Ren'dorei in den Wegen der Dämonenjäger zu unterweisen und ihnen im Kampf gegen die Leere beizustehen.]]
IMAGOdb.npcs.CAT_NEUTRAL["allari_die_seelenfresserin"].zones = {"Leerensturm", "K'aresh"}
IMAGOdb.npcs.CAT_NEUTRAL["allari_die_seelenfresserin"].source = "Cadash"
IMAGOdb.npcs.CAT_NEUTRAL["allari_die_seelenfresserin"].timeline = {
    {
        era = "TBC",
        text = [[Schwor Illidan Sturmgrimm in der Scherbenwelt ihre Loyalität. Holte auf seinen Befehl hin erfolgreich das Artefakt Sargeritschlüsselstein zurück, wurde nach ihrer Rückkehr jedoch gemeinsam mit ihren Mitstreitern der Illidari von Maiev Schattensang gefangen genommen und eingesperrt.]],
    },
    {
        era = "Legion",
        text = [[Nachdem sie sechs Jahre lang in Stasis gefangen gewesen war, wurden Allari und die anderen Dämonenjäger von ihrer einstigen Kerkermeisterin als letztes Mittel gegen Gul'dan befreit. Half dabei, die Streitkräfte der Illidari wiederaufzubauen, indem sie Dämonenseelen einfing, um den Teufelshammer wiederherzustellen, und unterstützte die Bergung der Kriegsklingen der Aldrachi. Half außerdem dabei, die Seele Illidan Sturmgrimms zurückzuholen, und kämpfte für den Rest des Krieges an seiner Seite.]],
    },
    {
        era = "Pre-Midnight",
        text = [[Nahm Leona Dunkelstreifer und andere willige Ren'dorei als Schüler auf, um sie in den Wegen der Illidari zu unterweisen.]],
    },
    {
        era = "Midnight",
        text = [[Kämpfte gemeinsam mit den Ren'dorei im Leerensturm.]],
    }
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
IMAGOdb.npcs.CAT_NEUTRAL["monte_gazlowe"].lore = [[Der Architekt von Orgrimmar und Handelsprinz des Bilgewasserkartells ist eines der wichtigsten Mitglieder der Horde, auch wenn sein Einfluss meist eher im Hintergrund spürbar ist. Er ist kein Kämpfer, betrachtet sich selbst nicht als Helden und wird von den meisten lediglich als ein weiterer gieriger Goblin gesehen.
Doch das entspricht nicht dem, was unter der Oberfläche liegt, und jene, die ihn über den ersten Eindruck hinaus kennen, wissen, dass dieser Goblin unter all seiner Gerissenheit und seines Sarkasmus ein großes Herz besitzt.

Seine Reformen haben den ausgebeuteten Arbeitern seines Kartells zum ersten Mal in der Geschichte seiner Kultur Sicherheit und Rechte verschafft. Aus Loyalität hat er viele seiner Verbündeten innerhalb der Horde finanziell unterstützt, ohne dabei viel als Gegenleistung zu verlangen. Außerdem spielte er eine entscheidende Rolle dabei, revolutionäre Veränderungen in Lorenhall herbeizufen, obwohl er sich ursprünglich nicht einmischen wollte.

Er hat eine Freundschaft mit Orweyna aufgebaut, und die beiden haben begonnen, einander ihre Kulturen näherzubringen.]]
IMAGOdb.npcs.CAT_NEUTRAL["monte_gazlowe"].zones = {"Die Höhle", "Harandar"}
IMAGOdb.npcs.CAT_NEUTRAL["monte_gazlowe"].source = "Cadash"
IMAGOdb.npcs.CAT_NEUTRAL["monte_gazlowe"].timeline = {
    { era = "Pre-WC3", text = "Schwer desillusioniert verließ Gazlowe Lorenhall mit dem Gedanken nie wieder zurückzukehren. Er schloss sich gemeinsam mit seinem alten Freund Marin Noggenfogger dem Dampfdruckkartell an." },
    { era = "WC3", text = "Wurde von Kriegshäuptling Thrall beauftragt, den Bau von Orgrimmar zu überwachen." },
    { era = "Classic", text = "Gründete mit dem Geld, das er nach der Fertigstellung Orgrimmars verdiente, die Hafenstadt Ratschet im Brachland. Aus Dankbarkeit gegenüber Thrall unterstützte er weiterhin die Orcs in Durotar, blieb offiziell jedoch neutral und erlaubte sowohl Horde als auch Allianz Zugang zu seiner Stadt. Er hielt die Küste des Hordengebiets frei von Piraten." },
    { era = "Pre-Cata", text = "Wurde erneut von Thrall bezahlt, um Orgrimmar wiederaufzubauen, nachdem Teile der Stadt durch randalierende Elementare beschädigt worden waren. Später wurde er von Baine Bluthuf um Hilfe gebeten, um Donnerfels zu befreien. Gazlowe schickte drei Zeppeline, zahlreiche Söldner und eine gewaltige Menge Sprengstoff und wollte dafür nur eine moderate Aufwandsentschädigung." },
    { era = "Cata", text = "Um keinen Profit im Fraktionskrieg zu verlieren, blieb Gazlowe offiziell neutral. Als jedoch ein Admiral der Allianz versuchte, die Handelsrouten zwischen Orgrimmar und Ratschet zu blockieren, ließ Gazlowe dessen Fracht und Schiffe kurzerhand zerstören." },
    { era = "WoD", text = "Wurde von Kriegshäuptling Vol'jin angeheuert, um die Garnison der Horde im Frostfeuergrad sowie verschiedene Außenposten und eine Werft zu errichten. Versorgte die Horde in Talador mit Maschinen und konnte - mit Unterstützung von Thaelin Schwarzamboss - einen Eisenstern einsetzen, um bei der Befreiung von Shattrath zu helfen. Später konstruierte er eine Belagerungsmaschine, die das Tor von Tanaan zerstörte." },
    { era = "BfA", text = "Half Prinz Erazmin und der Allianz dabei, Mechagon von der grausamen Herrschaft von König Mechagon zu befreien. Schloss sich außerdem Varok Saurfangs Rebellion gegen Sylvanas Windläufer an. Nachdem Handelsprinz Gallywix geflohen war, trat Gazlowe der Horde offiziell als neuer Handelsprinz des Bilgewasserkartells bei. Von Thrall wurde er in den Rat der Horde berufen und über die Jahre waren die beiden gute Freunde geworden." },
    { era = "Pre-SL", text = "Versuchte nach dem Vierten Krieg, die internen Probleme der Horde zu bewältigen, musste jedoch einsehen, dass die Jagd auf Sylvanas Windläufer Vorrang hatte." },
    { era = "Pre-TWW", text = "Traf eine Vereinbarung mit Marin Noggenfogger, um ihre Kartelle enger zusammenzuführen, und setzte bessere Arbeitsbedingungen für die Goblins des Dampfdruckkartells durch." },
    { era = "TWW", text = "Unterstützte die Expedition von Heilsturz in Azj-Kahet und bemerkte dabei Goblins der Venture Company, die dort herumschnüffelten. Arbeitete gemeinsam mit Renzik „das Messer“ und Orweyna daran, Gallywix’ Abmachung mit Xal'atath aufzudecken, und befreite schließlich Lorenhall von Gallywix’ Tyrannei. Zusammen mit Mathias Shaw verstreute er Renziks Asche, nachdem dieser sich für Gazlowe geopfert hatte. Anschließend wurde Gazlowe Teil des neuen Rats von Lorenhall." },
    { era = "Midnight", text = "Nachdem Orweyna ihm in Lorenhall geholfen hatte, versprach Gazlowe ihr, nach Harandar zu kommen und ihre Kultur kennenzulernen. Er genoss es, mehr über die Hara'ti zu erfahren." },
}

IMAGOdb.npcs.CAT_LIGHT["fiona"].name = "Fiona"
IMAGOdb.npcs.CAT_LIGHT["fiona"].race = "Worgen"
IMAGOdb.npcs.CAT_LIGHT["fiona"].lore = "Fiona ist eine Worgen-Abenteurerin, Heiligpriesterin und eine der treuesten Seelen Azeroths. Berühmt wurde sie durch ihre legendäre Karawane in den Östlichen Pestländern, mit der sie unzählige Abenteurer – allen voran ihre besten Freunde, die Paladine Gidwin Goldzopf und Tarenar Sonnenhieb – sicher durch Feindesland kutschierte. Sie ist das personifizierte Herzblut der Zivilisten und unabhängigen Helfer in Azeroth. In Midnight hat sie ihre Karawane auf die Insel von Quel'Danas gesteuert. Sie gehört zwar keinem militärischen Orden an, unterstützt die Verteidiger des Lichts jedoch unermüdlich mit ihrer Heilkunst, ihren Vorräten und ihrem Pragmatismus."
IMAGOdb.npcs.CAT_LIGHT["fiona"].zones = {"Insel von Quel'Danas"}
IMAGOdb.npcs.CAT_LIGHT["fiona"].source = "warcraft.wiki.gg/wiki/Fiona"
IMAGOdb.npcs.CAT_LIGHT["fiona"].timeline = {
    {era = "Cata", text = "Kutschierte mit ihrer berühmten Karawane durch die Östlichen Pestländer und unterstützte den Silbernen Kreuzzug."},
    {era = "WoD", text = "Schloss sich der Allianz-Expedition auf Draenor an und diente als Heiligpriesterin und Kräuterkundige in der Garnison (Schattenmondtal)."},
    {era = "DF", text = "Reiste mit der Drachenschuppenexpedition ins Basislager der Küste des Erwachens, nachdem sie wieder mit Gidwin und Tarenar vereint war."},
    {era = "Midnight", text = "Erscheint auf der Insel von Quel'Danas als zivile Unterstützerin und Heilerin für die vereinten Verteidiger gegen die Leere."},
}

IMAGOdb.npcs.CAT_NEUTRAL["valeera_sanguinar"].name = "Valeera Sanguinar"
IMAGOdb.npcs.CAT_NEUTRAL["valeera_sanguinar"].race = "Blutelfe"
IMAGOdb.npcs.CAT_NEUTRAL["valeera_sanguinar"].lore = [[Valeera Sanguinar ist weder einer Fraktion noch einem Anführer zur Treue verpflichtet. Die junge Blutelfe wurde früh zur Waise und überlebte als Diebin auf den Straßen. Ob die Geißel, Magiesucht oder Sklaverei – Valeera trotzte jedem Schicksal. Sie lernte, niemandem zu vertrauen, fühlte sich von der Welt verraten und wurde zu einer rücksichtslosen Meuchelmörderin.

Erst durch ihre Freundschaft mit Varian Wrynn und Broll Bärenmantel fand sie den Weg zurück in ein besseres Leben. Da sie Varian ihr Leben verdankte, diente sie ihm als Leibwächterin, ohne sich jemals der Allianz zu verpflichten. Nach seinem Tod diente sie weiterhin seinem Sohn, Anduin, und Sturmwind wurde zu ihrer zweiten Heimat.

Heute unterstützt sie als neutrale Verbündete beider Fraktionen die Champions von Azeroth dabei, jene Feinde zu bezwingen, die in den dunkelsten Tiefen von Quel'Thalas und darüber hinaus gegen Silbermond intrigieren.]]

IMAGOdb.npcs.CAT_NEUTRAL["valeera_sanguinar"].zones = {"Immergesangwald", "Parhelionplaza", "Silbermond", "Zul'Aman", "Sonnentötersanktum", "Atal'Aman", "Akademischer Aufruhr", "Schattenwachtspitze", "Der Düsterweg", "Die Grollgrube", "Die Kluft der Erinnerung", "Die Schattenenklave", "Gruften der Zwielichtklinge"}
IMAGOdb.npcs.CAT_NEUTRAL["valeera_sanguinar"].source = "Cadash"
IMAGOdb.npcs.CAT_NEUTRAL["valeera_sanguinar"].timeline = {
    {
        era = "Pre-WC3",
        text = [[Wurde als Kind zur Waise, nachdem ihre gesamte Familie von Banditen ermordet wurde. Überlebte als Diebin auf den Straßen.]],
    },
    {
        era = "Pre-WotLK",
        text = [[Wurde beim Stehlen in Horde-Territorium gefasst und als Gladiatorensklavin an Rehgar Erdfuror verkauft. Dort wurde sie gezwungen, an der Seite von Varian Wrynn und Broll Bärenmantel zu kämpfen. Die drei wurden Freunde, entkamen gemeinsam und halfen Varian schließlich, den Thron von Sturmwind zurückzuerobern. Valeera kämpfte kurzzeitig mit einer Sucht nach Teufelsmagie und wurde vom Dämon Kathra'natir besessen.]],
    },
    {
        era = "WotLK",
        text = [[Blieb als königliche Leibwächterin in Sturmwind, um ihre Lebensschuld gegenüber König Varian zu begleichen. Gemeinsam mit Varian und Broll nahm sie an der Schlacht um Unterstadt teil.]],
    },
    {
        era = "Legion",
        text = [[Schloss sich den Ungekrönten an und half bei der Bergung der Fangzähne des Verschlingers. Es gelang ihr, Amber Kearnens letzte Nachricht zu entschlüsseln und so die Infiltration des SI:7 durch die Brennende Legion aufzudecken.]],
    },
    {
        era = "Pre-BfA",
        text = [[Im Dienste von Anduin Wrynn überbrachte sie Baine Bluthufe eine Nachricht, um die Verhandlungen für die Zusammenkunft einzuleiten.]],
    },
    {
        era = "BfA",
        text = [[Fungierte als neutrale Vermittlerin und überbrachte Nachrichten zwischen der verfeindeten Horde und Allianz. Sie war bei der Gründung des Rates der Horde anwesend.]],
    },
    {
        era = "Pre-SL",
        text = [[Versuchte erfolglos, Spuren von Sylvanas Windläufer zu finden. Weigerte sich fortan, weiterhin an den Fraktionsangelegenheiten beider Seiten teilzunehmen.]],
    },
    {
        era = "TWW",
        text = [[Überlebte die Zerstörung von Dalaran und ließ sich für eine Weile mit den anderen Ungekrönten in Dornogal nieder.]],
    },
    {
        era = "Midnight",
        text = [[Half bei der Tötung des verräterischen Lords Antenorian. Auf Geheiß von Anduin und Lor'themar arbeitete sie mit dem Reliquiar und den Champions von Azeroth zusammen, um verschiedene Bedrohungen für Silbermond abzuwehren.]],
    }
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

IMAGOdb.npcs.CAT_NEUTRAL["eitrigg"].name = "Eitrigg"
IMAGOdb.npcs.CAT_NEUTRAL["eitrigg"].race = "Orc"
IMAGOdb.npcs.CAT_NEUTRAL["eitrigg"].lore = [[Als Veteran zahlloser Schlachten ist er einer der bedeutendsten Orcs in der Geschichte der Horde – einer der wenigen, die sich noch an die finsteren Zeiten der Vergangenheit erinnern, als Unschuldigen unsagbares Leid zugefügt wurde. Er kämpfte für die Alte Horde auf Draenor und dient bis heute der Neuen Horde auf Azeroth. Nach Jahren des Krieges zwischen ihren Völkern schmiedete er ein enges Band zum Menschen Tirion Fordring. Er diente Thrall und Garrosh als Berater, erhob jedoch seine Stimme gegen Letzteren sowie gegen Sylvanas Windläufer, als es die Ehre gebot. Schließlich wurde er in den Bund der Söhne Lothars aufgenommen – als lebendiges Symbol dafür, dass Ehre in jedem Herzen zu finden sein kann.]]
IMAGOdb.npcs.CAT_NEUTRAL["eitrigg"].zones = {"Brennende Steppen", "Arcantina", "Arathihochland", "Silbermond"}
IMAGOdb.npcs.CAT_NEUTRAL["eitrigg"].source = "Karstan - IMAGO Community"
IMAGOdb.npcs.CAT_NEUTRAL["eitrigg"].timeline = {
    {era = "WC1", text = "Kämpfte für die Alte Horde gegen die Draenei und später auf Azeroth gegen die Menschen von Sturmwind."},
    {era = "WC2", text = "Behauptete seine Position als einer der vertrautesten Leutnants des neuen Kriegshäuptlings Orgrim Schicksalshammer. Nach der Schlacht am Schwarzfels zerbrach sein Glaube an die Horde. Eitrigg desertierte und lebte fortan als Einsiedler in Lordaeron, verborgen vor den Menschen."},
    {era = "Pre-WC3", text = "Kämpfte gegen Tirion Fordring. Obwohl er die Gelegenheit hatte, ihn zu töten, rettete Eitrigg Tirion das Leben. Damit begründete er eine Ehrenschuld, die der Paladin beglich, indem er Eitriggs Hinrichtung in Stratholme verhinderte. Der Orc schloss sich daraufhin Thralls Neuer Horde an, betrachtete Tirion jedoch weiterhin als seinen Bruder."},
    {era = "Classic", text = "Diente dem Kriegshäuptling als Ehrenwache und war mit der Aufsicht über neue Rekruten betraut."},
    {era = "WotLK", text = "Nahm am Krieg gegen den Lichkönig teil und reiste nach Nordend, um die Horde und den Argentumkreuzzug zu unterstützen. Dabei versuchte er, die Rolle von Saronit innerhalb der Geißel aufzudecken."},
    {era = "Cata", text = "Blieb weiterhin der Berater des Kriegshäuptlings. Er reiste mit seinem Sohn Ariok in die Brennenden Steppen, um die Invasion des Rotkammgebirges durch die Dunkle Horde zu stoppen."},
    {era = "MoP", text = "Leistete Widerstand gegen Garrosh und wurde dabei schwer verwundet."},
    {era = "Legion", text = "Wurde ein Champion der Valarjar und unterstützte den Schlachtenfürsten bei der Prüfung des Zorns."},
    {era = "BfA", text = "Half Handelsprinz Gallywix beim Aufbau eines Stützpunktes der Horde in Drustvar. Zu einem späteren Zeitpunkt reiste er mit dem Champion in das alternative Draenor, um die Mag'har-Orcs zu rekrutieren. Später nahm er an der Schlacht um Stromgarde gegen die Anführer der Allianz teil."},
    {era = "DF", text = "Nun Häuptling des Schwarzfelsclans, war er maßgeblich an der Wiederbelebung des Kosh'harg-Festes beteiligt – einer jährlichen Feierlichkeit, bei der Orcs aller Clans zusammenkommen."},
    {era = "TWW", text = "Agierte als Berater für Geya'rah, der Anführerin der Mag'har, und spielte eine aktive Rolle bei der Entlarvung des wahren Feindes im Arathihochland: Der Roten Dämmerung. Gemeinsam besiegten sie deren Anführer, Marran Trollbann."},
    {era = "Pre-Midnight", text = "Wurde schließlich zum Mitglied der Söhne Lothars ernannt und wird seither zu deren Versammlungen herbeigerufen, um über die Bedrohungen für Azeroth zu beraten."}
}

IMAGOdb.npcs.CAT_NEUTRAL["kurdran_wildhammer"].name = "Kurdran Wildhammer"
IMAGOdb.npcs.CAT_NEUTRAL["kurdran_wildhammer"].race = "Zwerg"
IMAGOdb.npcs.CAT_NEUTRAL["kurdran_wildhammer"].lore = [[Als ein Anführer des Wildhammerklans und talentierter Greifenreiter gehörte Kurdran Wildhammer zu den ersten Zwergen, die im Zweiten Krieg gegen die einfallenden Orcs zu den Waffen griffen. Er schloss sich der Allianz von Lordaeron an und folgte schließlich Hochgeneral Turalyon durch das Dunkle Portal nach Draenor. Er schloss eine tiefe Freundschaft mit den Söhnen Lothars.

Nachdem er zwei Jahrzehnte auf der zerstörten Orcwelt überlebt hatte, kehrte er nach Azeroth zurück. Für eine Zeit versuchte sich Kurdran in der Politik und fungierte kurzzeitig als Vertreter des Wildhammerklans in Eisenschmiede, bevor er sich vorübergehend zur Ruhe setzte.

Nun, wiedervereint mit seinen alten Freunden, ist Kurdran erneut bereit, für das Wohl Azeroths zu kämpfen.]]
IMAGOdb.npcs.CAT_NEUTRAL["kurdran_wildhammer"].zones = {"Arcantina", "Brennende Steppe", "Silbermond"}
IMAGOdb.npcs.CAT_NEUTRAL["kurdran_wildhammer"].source = "Cadash - IMAGO Community"
IMAGOdb.npcs.CAT_NEUTRAL["kurdran_wildhammer"].timeline = {
    {era = "WC2", text = "Kämpfte gegen die Horde und half dabei, sie zurückzuschlagen. Folgte später Turalyons Expedition nach Draenor, um die Bedrohung durch die Orcs endgültig zu beenden. Entschied sich, dort zurückzubleiben, und stellte sicher, dass das Dunkle Portal geschlossen wurde und Azeroth geschützt blieb."},
    {era = "TBC", text = "Verteidigte eine Festung im Schattenmondtal und unterstützte Allianz-Abenteurer im Kampf gegen Illidan Sturmgrimm und die Brennende Legion."},
    {era = "Pre-Cata", text = "Vertrat kurzzeitig den Wildhammerklan im Rat der drei Hämmer in Eisenschmiede, überließ seinen Platz jedoch schließlich Falstad Wildhammer."},
    {era = "Cata", text = "Half dabei, die verschiedenen Wildhammerklans zu vereinen und sie in die Allianz aufzunehmen. Seine treue Greifin Hori'zee kam bei einem Feuer ums Leben, doch Kurdran konnte ihr letztes Ei retten."},
    {era = "Pre-TWW", text = "Knüpfte in Valdrakken eine Verbindung zu den Sturmkrähen. Trainierte den Abenteurer darin, ein elementarer Greifenreiter zu werden."},
    {era = "TWW", text = "Schloss sich seinen Freunden Turalyon und Danath Trollbann auf der Insel von Dorn an. Gemeinsam mit Hori'zees jetzt ausgewachsenen letztem Küken begann Kurdran damit, neue irdene Greifenreiter auszubilden."},
    {era = "Midnight", text = "Half Arator dabei, mehr über die Geschichte seines Vaters Turalyon und dessen Rolle im Zweiten Krieg zu erfahren. Führte Helden zur Arkantine, einem Zuhause fern der Heimat für Abenteurer aus ganz Azeroth."}
}

IMAGOdb.npcs.CAT_NEUTRAL["lirath_windrunner"].name = "Lirath Windläufer"
IMAGOdb.npcs.CAT_NEUTRAL["lirath_windrunner"].race = "Hochelf"
IMAGOdb.npcs.CAT_NEUTRAL["lirath_windrunner"].lore = [[Der Jüngste der vier Windläufer-Geschwister und der einzige Bruder unter ihnen. Lirath war ein begnadeter Sänger, der sich mit Auftritten am Hof von Lord Saltheril einen Namen machte und schließlich von Kael'thas Sonnenwanderer zum königlichen Musiker ernannt wurde.

Nach dem Tod ihrer Eltern verlangte Lirath von seinen Schwestern, ihn zum Waldläufer auszubilden. Während der Verbrennung von Quel'Thalas wurde Lirath bei der Verteidigung von Windläuferdorf gegen die Orcs getötet.]]
IMAGOdb.npcs.CAT_NEUTRAL["lirath_windrunner"].zones = {"Windläuferturm"}
IMAGOdb.npcs.CAT_NEUTRAL["lirath_windrunner"].source = "Travanoid"
IMAGOdb.npcs.CAT_NEUTRAL["lirath_windrunner"].timeline = {
    {
        era = "Pre-WC2",
        text = [[Wurde zum königlichen Musiker von Prinz Kael'thas Sonnenwanderer ernannt. Nach dem Tod ihrer Eltern begann er gemeinsam mit seiner Schwester Vereesa mit der Ausbildung zum Waldläufer.]],
    },
    {
        era = "WC2",
        text = [[Er wurde während der Verbrennung von Quel'Thalas von der Horde getötet. Sein Körper wurde von Sylvanas geborgen und zusammen mit ihren Eltern im Immersangwald beigesetzt.]],
    },
    {
        era = "Pre-BfA",
        text = [[Sylvanas erwog, Lirath als Untoten wiederzuerwecken, entschied sich jedoch letztlich dagegen.]],
    },
    {
        era = "Midnight",
        text = [[Sein Geist erschien im Windläuferturm und führte Abenteurer dazu, Relikte der Familie Windläufer zu sammeln. Mithilfe dieser Relikte beschwor und vertrieb er das rastlose Herz, wodurch die Geister des Turms endlich Frieden finden konnten.]],
    }
}

IMAGOdb.npcs.CAT_NEUTRAL["alleria_windrunner"].name = "Alleria Windläufer"
IMAGOdb.npcs.CAT_NEUTRAL["alleria_windrunner"].race = "Leerenelfe"
IMAGOdb.npcs.CAT_NEUTRAL["alleria_windrunner"].lore = [[Den Völkern Azeroths ist Alleria als eine der größten Kriegsheldinnen der Allianz bekannt. Sie kämpfte im Zweiten Krieg gegen die Horde sowie im jahrtausendelangen Kreuzzug gegen die Brennende Legion. Sie ist vieles - eine Mutter, eine Liebende, eine Heldin, eine ältere Schwester - doch vor allem ist sie eine Jägerin. Alles steht hinter ihren Missionen zurück, und kein Preis ist zu hoch, um die Sicherheit ihrer Welt zu gewährleisten.

Krieg ist das einzige Leben, das sie kennt, und auf dem vertrauten Schlachtfeld findet sie mehr Trost als in Zeiten des Friedens. Als sie ihren jüngeren Bruder und ihre Eltern im Krieg gegen die Horde verlor, gab Alleria sich selbst die Schuld und stürzte sich rücksichtslos in den Kampf, auf der Suche nach Sinn durch Gewalt. Von dem Trauma dieser Verluste hat sie sich nie wirklich erholt. Obwohl sie mit Turalyon und ihrem Sohn Arator nun eine eigene Familie gegründet hat, kann sie sich nicht dazu bringen, sich emotional erneut zu öffnen - auch wenn es sie bis ins Innerste schmerzt, mitzuerleben, wie die beiden Männer zu Fremden werden.

Im Kampf gegen die Brennende Legion fand Alleria eine Waffe in der Leere. Sie wurde mit der gefallenen Naaru L'ura erfüllt und nutzt nun deren dunkle Kräfte zum Wohl Azeroths. Ständig am Rand des Wahnsinns, während unaufhörliche Stimmen ihren Geist bedrängen, hat Alleria sich nun darauf eingeschworen, Xal'atath zu jagen. Wie bei all ihren Jagden ist die Verfolgung zu einer Besessenheit geworden, und sie wird nicht ruhen, bis ihre Feindin besiegt am Boden liegt.]]
IMAGOdb.npcs.CAT_NEUTRAL["alleria_windrunner"].zones = {"Die Leerenspitze", "Leerensturm"}
IMAGOdb.npcs.CAT_NEUTRAL["alleria_windrunner"].source = "Cadash"
IMAGOdb.npcs.CAT_NEUTRAL["alleria_windrunner"].timeline = {
    {
        era = "Pre-WC2",
        text = [[Sie lehnte den Titel der zukünftigen Waldläufergeneralin von Silbermond ab und verließ ihre Heimat, um die Welt jenseits davon kennenzulernen. Dabei knüpfte sie Kontakte und Bündnisse innerhalb der Allianz von Lordaeron. Während ihrer Abwesenheit wurden ihre Eltern von der orcischen Horde ermordet.]],
    },
    {
        era = "WC2",
        text = [[An der Seite der Armeen von Lordaeron verteidigte sie erfolgreich Quel'Thalas gegen die Horde. Während der Schlacht starb ihr Bruder Lirath, und Alleria gab sich selbst die Schuld daran. Sie blieb bei den Streitkräften der Allianz und half schließlich dabei, den Krieg zu gewinnen. Sie lernte Turalyon kennen, sie zeugten einen Sohn und reisten in die Scherbenwelt, wo sie letztlich gestrandet wurden.]],
    },
    {
        era = "Pre-WC3",
        text = [[Gemeinsam mit Turalyon reiste sie durch den Wirbelnden Nether und wurde in die Armee des Lichts eingezogen, um gegen die Brennende Legion zu kämpfen. Was auf Azeroth nur einige Jahrzehnte gewesen wären, bedeutete für sie tausend Jahre Krieg. Alleria traf auf Raumgänger und lernte, die Magie der Leere zu nutzen. Aufgrund dessen wurde sie zeitweise von Xe'ra und der Armee des Lichts eingesperrt.]],
    },
    {
        era = "Legion",
        text = [[Sie erfuhr mehr über die Leere und darüber, wie man ihrem Flüstern widersteht. Dabei wurde sie mit der Naaru L'ura erfüllt. Sie kämpfte in der finalen Schlacht gegen die Legion in der Festung Antorus und siegte. Nachdem der Kreuzzug endlich beendet war, wurden sie und Turalyon mit ihrem Sohn Arator wiedervereint. Außerdem fand sie die verbannten Ren'dorei und rekrutierte sie für die Allianz.]],
    },
    {
        era = "Pre-BfA",
        text = [[Sie kehrte nach Silbermond zurück, wurde jedoch umgehend verbannt, da allein ihre dunkle Präsenz beinahe den Sonnenbrunnen verdorben hätte. Sie traf ihre Schwestern Vereesa und Sylvanas, doch das Wiedersehen endete in einem Streit.]],
    },
    {
        era = "BfA",
        text = [[Sie kämpfte bei der Belagerung von Lordaeron gegen Sylvanas und später im Vierten Krieg für die Allianz.]],
    },
    {
        era = "Pre-SL",
        text = [[Sie führte die Jagd auf Sylvanas Windläufer an. Um Informationen von Zivilisten der Horde zu erhalten, griff sie sogar zu Folter.]],
    },
    {
        era = "SL",
        text = [[Sie nahm an dem Prozess gegen Sylvanas in Oribos teil.]],
    },
    {
        era = "DF",
        text = [[Auf Khadgars Bitte hin begann sie die Jagd auf „die Vorbotin“, die sich als Xal'atath entpuppte. Gemeinsam mit Raumgänger und Magister Umbric verteidigte sie den Telogrusriss gegen Xal'ataths Schattenwache.]],
    },
    {
        era = "TWW",
        text = [[Sie überlebte die Zerstörung von Dalaran und jagte Xal'atath rücksichtslos durch ganz Khaz Algar und dessen Tiefen. Dabei gelang es ihr, das Dunkle Herz zu beschädigen. Widerwillig arbeitete sie später mit Xal'atath und Raumgänger zusammen, um Dimensius den Allesverschlingenden zu besiegen.]],
    },
    {
        era = "Pre-Midnight",
        text = [[Gemeinsam mit Turalyon und Arator vereitelte sie ein Wiedererstarken der Brennenden Legion und schien ihrer Familie wieder näherzukommen. Sie akzeptierte Turalyons Heiratsantrag, schaffte es jedoch nicht, inneren Frieden zu finden. Schweren Herzens ließ sie Turalyon schließlich am Altar zurück und nahm auch nicht an der Beförderungszeremonie seines Sohnes teil. Später weigerte sie sich, mit Arator nach Silbermond zu reisen, und folgte stattdessen Xal'atath in den Leerensturm.]],
    },
    {
        era = "Midnight",
        text = [[Sie führte den Kampf gegen die Leere im Leerensturm an. In Xal'ataths Leerenspitze stellte sie sich ihrer Feindin entgegen, wurde jedoch vom Wahnsinn der Stimmen in ihrem Kopf überwältigt und wandte sich gegen ihre Verbündeten. Daraufhin schnitt Xal'atath L'ura gewaltvoll aus Alleria heraus, und die kaum noch bei Bewusstsein befindliche Elfe ging gemeinsam mit Turalyon im Dunkelbrunnen verloren.]],
    }
}

IMAGOdb.npcs.CAT_NEUTRAL["alleria_windrunner"].name = "Alleria Windläufer"
IMAGOdb.npcs.CAT_NEUTRAL["alleria_windrunner"].race = "Leerenelfe"
IMAGOdb.npcs.CAT_NEUTRAL["alleria_windrunner"].lore = [[Den Völkern Azeroths ist Alleria als eine der größten Kriegsheldinnen der Allianz bekannt. Sie kämpfte im Zweiten Krieg gegen die Horde sowie im jahrtausendelangen Kreuzzug gegen die Brennende Legion. Sie ist vieles - eine Mutter, eine Liebende, eine Heldin, eine ältere Schwester - doch vor allem ist sie eine Jägerin. Alles steht hinter ihren Missionen zurück, und kein Preis ist zu hoch, um die Sicherheit ihrer Welt zu gewährleisten.

Krieg ist das einzige Leben, das sie kennt, und auf dem vertrauten Schlachtfeld findet sie mehr Trost als in Zeiten des Friedens. Als sie ihren jüngeren Bruder und ihre Eltern im Krieg gegen die Horde verlor, gab Alleria sich selbst die Schuld und stürzte sich rücksichtslos in den Kampf, auf der Suche nach Sinn durch Gewalt. Von dem Trauma dieser Verluste hat sie sich nie wirklich erholt. Obwohl sie mit Turalyon und ihrem Sohn Arator nun eine eigene Familie gegründet hat, kann sie sich nicht dazu bringen, sich emotional erneut zu öffnen - auch wenn es sie bis ins Innerste schmerzt, mitzuerleben, wie die beiden Männer zu Fremden werden.

Im Kampf gegen die Brennende Legion fand Alleria eine Waffe in der Leere. Sie wurde mit der gefallenen Naaru L'ura erfüllt und nutzt nun deren dunkle Kräfte zum Wohl Azeroths. Ständig am Rand des Wahnsinns, während unaufhörliche Stimmen ihren Geist bedrängen, hat Alleria sich nun darauf eingeschworen, Xal'atath zu jagen. Wie bei all ihren Jagden ist die Verfolgung zu einer Besessenheit geworden, und sie wird nicht ruhen, bis ihre Feindin besiegt am Boden liegt.]]
IMAGOdb.npcs.CAT_NEUTRAL["alleria_windrunner"].zones = {"Die Leerenspitze", "Leerensturm"}
IMAGOdb.npcs.CAT_NEUTRAL["alleria_windrunner"].source = "Cadash"
IMAGOdb.npcs.CAT_NEUTRAL["alleria_windrunner"].timeline = {
    {
        era = "Pre-WC2",
        text = [[Sie lehnte den Titel der zukünftigen Waldläufergeneralin von Silbermond ab und verließ ihre Heimat, um die Welt jenseits davon kennenzulernen. Dabei knüpfte sie Kontakte und Bündnisse innerhalb der Allianz von Lordaeron. Während ihrer Abwesenheit wurden ihre Eltern von der orcischen Horde ermordet.]],
    },
    {
        era = "WC2",
        text = [[An der Seite der Armeen von Lordaeron verteidigte sie erfolgreich Quel'Thalas gegen die Horde. Während der Schlacht starb ihr Bruder Lirath, und Alleria gab sich selbst die Schuld daran. Sie blieb bei den Streitkräften der Allianz und half schließlich dabei, den Krieg zu gewinnen. Sie lernte Turalyon kennen, sie zeugten einen Sohn und reisten in die Scherbenwelt, wo sie letztlich gestrandet wurden.]],
    },
    {
        era = "Pre-WC3",
        text = [[Gemeinsam mit Turalyon reiste sie durch den Wirbelnden Nether und wurde in die Armee des Lichts eingezogen, um gegen die Brennende Legion zu kämpfen. Was auf Azeroth nur einige Jahrzehnte gewesen wären, bedeutete für sie tausend Jahre Krieg. Alleria traf auf Raumgänger und lernte, die Magie der Leere zu nutzen. Aufgrund dessen wurde sie zeitweise von Xe'ra und der Armee des Lichts eingesperrt.]],
    },
    {
        era = "Legion",
        text = [[Sie erfuhr mehr über die Leere und darüber, wie man ihrem Flüstern widersteht. Dabei wurde sie mit der Naaru L'ura erfüllt. Sie kämpfte in der finalen Schlacht gegen die Legion in der Festung Antorus und siegte. Nachdem der Kreuzzug endlich beendet war, wurden sie und Turalyon mit ihrem Sohn Arator wiedervereint. Außerdem fand sie die verbannten Ren'dorei und rekrutierte sie für die Allianz.]],
    },
    {
        era = "Pre-BfA",
        text = [[Sie kehrte nach Silbermond zurück, wurde jedoch umgehend verbannt, da allein ihre dunkle Präsenz beinahe den Sonnenbrunnen verdorben hätte. Sie traf ihre Schwestern Vereesa und Sylvanas, doch das Wiedersehen endete in einem Streit.]],
    },
    {
        era = "BfA",
        text = [[Sie kämpfte bei der Belagerung von Lordaeron gegen Sylvanas und später im Vierten Krieg für die Allianz.]],
    },
    {
        era = "Pre-SL",
        text = [[Sie führte die Jagd auf Sylvanas Windläufer an. Um Informationen von Zivilisten der Horde zu erhalten, griff sie sogar zu Folter.]],
    },
    {
        era = "SL",
        text = [[Sie nahm an dem Prozess gegen Sylvanas in Oribos teil.]],
    },
    {
        era = "DF",
        text = [[Auf Khadgars Bitte hin begann sie die Jagd auf „die Vorbotin“, die sich als Xal'atath entpuppte. Gemeinsam mit Raumgänger und Magister Umbric verteidigte sie den Telogrusriss gegen Xal'ataths Schattenwache.]],
    },
    {
        era = "TWW",
        text = [[Sie überlebte die Zerstörung von Dalaran und jagte Xal'atath rücksichtslos durch ganz Khaz Algar und dessen Tiefen. Dabei gelang es ihr, das Dunkle Herz zu beschädigen. Widerwillig arbeitete sie später mit Xal'atath und Raumgänger zusammen, um Dimensius den Allesverschlingenden zu besiegen.]],
    },
    {
        era = "Pre-Midnight",
        text = [[Gemeinsam mit Turalyon und Arator vereitelte sie ein Wiedererstarken der Brennenden Legion und schien ihrer Familie wieder näherzukommen. Sie akzeptierte Turalyons Heiratsantrag, schaffte es jedoch nicht, inneren Frieden zu finden. Schweren Herzens ließ sie Turalyon schließlich am Altar zurück und nahm auch nicht an der Beförderungszeremonie seines Sohnes teil. Später weigerte sie sich, mit Arator nach Silbermond zu reisen, und folgte stattdessen Xal'atath in den Leerensturm.]],
    },
    {
        era = "Midnight",
        text = [[Sie führte den Kampf gegen die Leere im Leerensturm an. In Xal'ataths Leerenspitze stellte sie sich ihrer Feindin entgegen, wurde jedoch vom Wahnsinn der Stimmen in ihrem Kopf überwältigt und wandte sich gegen ihre Verbündeten. Daraufhin schnitt Xal'atath L'ura gewaltvoll aus Alleria heraus, und die kaum noch bei Bewusstsein befindliche Elfe ging gemeinsam mit Turalyon im Dunkelbrunnen verloren.]],
    }
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

IMAGOdb.npcs.CAT_EBON_BLADE["nazgrim"].name = "Nazgrim"
IMAGOdb.npcs.CAT_EBON_BLADE["nazgrim"].race = "Orc"
IMAGOdb.npcs.CAT_EBON_BLADE["nazgrim"].lore = [[Ehre, Loyalität, Mut – es gibt nichts Wichtigeres für einen Orc. Für Nazgrim waren dies nicht bloß leere Worte, sondern der Kern seines gesamten Daseins.
Beginnend als einfacher Unteroffizier in der Armee von Garrosh Höllschrei, stieg Nazgrim durch seine Verdienste auf ganz Azeroth rasch zum Rang eines Generals auf und wurde zu einem der engsten Verbündeten des Kriegshäuptlings.

Als die Horde gegen Höllschrei rebellierte und der Moment kam, in dem er zwischen Pflicht und Moral wählen musste, entschied sich Nazgrim mit grimmiger Entschlossenheit für seine Pflicht. Er leistete den Eindringlingen erbitterten Widerstand und gab letztlich sein Leben im Dienst für seinen Kriegshäuptling.

Doch seine Geschichte endete dort nicht: Er wurde von den Rittern der Schwarzen Klinge als der erste der neuen Vier Reiter von den Toten erweckt. Als er von der dritten Invasion der Brennenden Legion erfuhr, akzeptierte er seine neue Rolle ohne Zögern und blieb seinem Volk weiterhin standhaft treu.]]

IMAGOdb.npcs.CAT_EBON_BLADE["nazgrim"].zones = {"Östliche Pestländer", "Der Traumriss", "Die Leerenspitze"}
IMAGOdb.npcs.CAT_EBON_BLADE["nazgrim"].source = "Metrus"
IMAGOdb.npcs.CAT_EBON_BLADE["nazgrim"].timeline = {
    {
        era = "Pre-WC3",
        text = [[Wurde von der Allianz gefangen genommen und in den Internierungslagern festgehalten. Nachdem er von der Horde befreit wurde, schloss er sich der Armee von Thrall an.]],
    },
    {
        era = "WotLK",
        text = [[War als Unteroffizier in der Eroberungshalle in den Grizzlyhügeln stationiert.]],
    },
    {
        era = "Cata",
        text = [[Wurde zum Legionär befördert und leitete den Feldzug der Horde in Vashj'ir.]],
    },
    {
        era = "MoP",
        text = [[Wurde zum General befördert und erhielt den Befehl, die neu entdeckten Lande von Pandaria unter Kontrolle zu bringen. Er rekrutierte die einheimischen Hozen und stieß mit den Truppen von Admiral Taylor zusammen, was zur Zerstörung des Herzens der Schlange und der Entfesselung der Sha führte. Später wurde er von Garrosh herbeigerufen, um die Haupttore von Orgrimmar gegen die Rebellen der Horde und die Streitkräfte der Allianz zu verteidigen, wobei er schließlich im Kampf fiel.]],
    },
    {
        era = "Legion",
        text = [[Wurde vom neuen Todesgebietieter und Thassarian als erstes Mitglied der neuen Vier Reiter erweckt.]],
    },
    {
        era = "SL",
        text = [[Wurde der Gesandte der Schwarzen Klinge bei der Horde. Begleitete Bolvar Fordragon während des Angriffs auf das Sanktum der Herrschaft.]],
    },
    {
        era = "DF",
        text = [[Nahm als Teil des Kriegshymnenklans am ersten Kosh'harg auf Azeroth teil.]],
    },
    {
        era = "Midnight",
        text = [[Half bei der Verteidigung der Kapelle der Hoffnung des Lichts.]],
    }
}

IMAGOdb.npcs.CAT_EBON_BLADE["high_inquisitor_whitemane"].name = "Hochinquisitorin Weißsträhne"
IMAGOdb.npcs.CAT_EBON_BLADE["high_inquisitor_whitemane"].race = "Mensch"
IMAGOdb.npcs.CAT_EBON_BLADE["high_inquisitor_whitemane"].lore = [[Nach dem Tod ihrer Familie durch die Hände der Geißel in Lordaeron hatte Sally Weißsträhne nur noch ein Ziel: die vollständige Vernichtung aller Untoten. Als eifernde Priesterin des Lichts, angetrieben von Schuldgefühlen und tiefem Zorn, wurde sie im Scharlachroten Kreuzzug willkommen geheißen und stieg rasch bis in den Rang der Hochinquisitorin auf. Nachdem sie die Führung der Organisation übernommen hatte – infolge ihres vermeintlichen Ablebens im Scharlachroten Kloster Jahre zuvor –, wurde sie schließlich von der Meuchelmörderin der Verlassenen, Lilian Voss, und einer Gruppe von Abenteurern getötet.

Heute, als eines der Mitglieder der Vier Reiter wiedererweckt, hat Sally ihren grenzenlosen Hass hinter sich gelassen. Dennoch bleibt sie leidenschaftlich und entschlossen – nun jedoch im Dienste der Verteidigung Azeroths an der Seite ihrer Mitstreiter von der Schwarzen Klinge.]]

IMAGOdb.npcs.CAT_EBON_BLADE["high_inquisitor_whitemane"].zones = {"Östliche Pestländer"}
IMAGOdb.npcs.CAT_EBON_BLADE["high_inquisitor_whitemane"].source = "Nebb"
IMAGOdb.npcs.CAT_EBON_BLADE["high_inquisitor_whitemane"].timeline = {
    {
        era = "Pre-Classic",
        text = [[Wurde Zeugin, wie ihre Familie in Lordaeron der Plage des Untods erlag, und musste sie eigenhändig vernichten, als sie als Mitglieder der Geißel wiederauferstanden. Schloss sich dem Scharlachroten Kreuzzug an, um die Bedrohung durch die Untoten zu beenden.]],
    },
    {
        era = "Classic",
        text = [[Stieg in den Rang der Hochinquisitorin auf. Überlebte Versuche von Abenteurergruppen, die Führung des Scharlachroten Kreuzzugs im Scharlachroten Kloster zu stürzen, und tauchte unter.]],
    },
    {
        era = "MoP",
        text = [[Kehrte zurück, um die Streitkräfte des Scharlachroten Kreuzzugs anzuführen. Wurde schließlich von Lilian Voss und einer Gruppe von Abenteurern getötet.]],
    },
    {
        era = "Legion",
        text = [[Wurde von den Rittern der Schwarzen Klinge als Todesritterin wiedererweckt, um als dritte der Vier Reiter zu dienen. Half dabei, die Brennende Legion an der Verheerten Küste an der Seite der anderen Reiter zurückzuschlagen.]],
    },
    {
        era = "BfA",
        text = [[Versammelte gefallene Champions der Horde und Allianz, um sie als nächste Generation von Todesrittern zu erwecken.]],
    },
    {
        era = "SL",
        text = [[Fungierte als Gesandte der Schwarzen Klinge bei der Allianz. Half beim Angriff auf das Sanktum der Herrschaft und kehrte anschließend nach Azeroth zurück, um die Schwarze Klinge beim Zurückschlagen der Geißel zu unterstützen.]],
    },
    {
        era = "Midnight",
        text = [[Verteidigte zusammen mit den restlichen Vier Reitern die Kapelle des Hoffnungsvollen Lichts gegen die Geißel.]],
    }
}

IMAGOdb.npcs.CAT_EBON_BLADE["koltira_deathweaver"].name = "Koltira Todesweber"
IMAGOdb.npcs.CAT_EBON_BLADE["koltira_deathweaver"].race = "Untoter Hochelf"
IMAGOdb.npcs.CAT_EBON_BLADE["koltira_deathweaver"].lore = [[Koltira Todesweber kämpfte und starb für Silbermond, als Arthas Menethil und die Geißel durch ihre Tore marschierten. Der Tod bedeutete jedoch nicht das Ende für ihn, denn schon bald wurde er als Todesritter wiedererweckt.

Unter Arthas’ Kontrolle war er gezwungen, für genau jene Armee zu töten, die alles zerstört hatte, was er einst gekannt und geliebt hatte. Trotz ihrer grausamen Umstände entwickelte er eine echte Freundschaft zu Thassarian – dem Mann, der ihn getötet hatte. Beide wurden schließlich von der Gedankenkontrolle des Lichkönigs befreit und entschieden sich, für die neu gegründeten Ritter der schwarzen Klinge zu kämpfen, und schworen, ganz Azeroth vor den Untoten zu beschützen.
Koltira schloss sich der Horde an und fungierte als Gesandter seiner Mitstreiter, den Todesrittern.

Obwohl sie sich im Verlauf der Fraktionskriege zeitweise auf gegnerischen Seiten wiederfanden, blieben Koltira Todesweber und Thassarian enge Freunde.]]
IMAGOdb.npcs.CAT_EBON_BLADE["koltira_deathweaver"].zones = {"Östliche Pestländer"}
IMAGOdb.npcs.CAT_EBON_BLADE["koltira_deathweaver"].source = "Cadash"
IMAGOdb.npcs.CAT_EBON_BLADE["koltira_deathweaver"].timeline = {
    {
        era = "WC3",
        text = [[Starb bei der Verteidigung von Silbermond durch Thassarians Schwert. Wurde anschließend als Todesritter wiedererweckt und gezwungen, für die Geißel zu kämpfen.]],
    },
    {
        era = "WotLK",
        text = [[Wurde von der Gedankenkontrolle des Lichkönigs befreit und schwor, Azeroth gemeinsam mit den neu gegründeten Rittern der schwarzen Klinge zu verteidigen. Schloss sich der Horde an und kämpfte in Nordend, wobei er seine Erfahrung als Todesritter einsetzte, um die Zitadelle des Lichkönigs in Eiskrone zu stürmen.]],
    },
    {
        era = "Cata",
        text = [[Wurde von Sylvanas Windläufer in Unterstadt eingesperrt, da er während der Schlacht um Andorhal einen Waffenstillstand zwischen Horde und Allianz anstrebte.]],
    },
    {
        era = "Legion",
        text = [[Wurde von Thassarian aus der Gefangenschaft befreit und schloss sich anschließend dem Kampf gegen die Brennende Legion an.]],
    },
    {
        era = "SL",
        text = [[Folgte Bolvar Fordragon in die Schattenlande, um Sylvanas aufzuhalten.]],
    },
    {
        era = "Midnight",
        text = [[Half bei der Verteidigung der Kapelle des hoffnungsvollen Lichts.]],
    }
}

IMAGOdb.npcs.CAT_EBON_BLADE["thoras_trollbane"].name = "Thoras Trollbann"
IMAGOdb.npcs.CAT_EBON_BLADE["thoras_trollbane"].race = "Mensch"
IMAGOdb.npcs.CAT_EBON_BLADE["thoras_trollbane"].lore = [[Von seinem Volk geliebt und von seinen Feinden gefürchtet, war Thoras Trollbann der Kriegerkönig von Stromgarde und eines der Gründungsmitglieder der Allianz von Lordaeron.

Nach der Niederlage der Orcs im Zweiten Krieg widersetzte sich Thoras der Entscheidung, die überlebenden Orcs in Internierungslagern festzuhalten, und sprach sich offen dafür aus, sie hinzurichten. Als Lordaeron dies ablehnte, zog Trollbann seine Unterstützung für die Allianz voller Bitterkeit zurück.

Irgendwann nach dem Tod von König Terenas Menethil wurde Thoras von seinem eigenen Sohn Galen ermordet.

Während der dritten Invasion der Brennenden Legion erhoben die Ritter der Schwarzen Klinge Thoras als Mitglied der Vier Reiter. Im Glauben, sowohl als Vater als auch als König versagt zu haben, schloss sich Thoras ihnen an, um den Frieden in Azeroth zu bewahren.]]
IMAGOdb.npcs.CAT_EBON_BLADE["thoras_trollbane"].zones = {"Der Traumriss", "Die Leerenspitze", "Östliche Pestländer"}
IMAGOdb.npcs.CAT_EBON_BLADE["thoras_trollbane"].source = "Travanoid"
IMAGOdb.npcs.CAT_EBON_BLADE["thoras_trollbane"].timeline = {
    {
        era = "Pre-WC2",
        text = [[Führte die Armeen von Stromgarde in mehreren Kriegen gegen das Königreich Alterac in die Schlacht.]],
    },
    {
        era = "WC2",
        text = [[Trat der Allianz von Lordaeron als eines ihrer Gründungsmitglieder bei und verteidigte die Nordlande gegen die Invasion der Horde durch das eroberte Zwergenreich Khaz Modan. Später half er mit seinen Armeen dabei, die Belagerung von Lordaeron zu brechen, indem er die Streitkräfte der Horde daran hinderte, durch das Alteracgebirge vorzurücken. Nach dem Krieg wurde er von seinem Sohn Galen ermordet.]],
    },
    {
        era = "Legion",
        text = [[Wurde von den Rittern der Schwarzen Klinge als Mitglied der Vier Reiter in den Untod erhoben. Nahm am Angriff auf das Scharlachrote Kloster sowie an der Schlacht gegen die Dämonen an der Verheerten Küste teil.]],
    },
    {
        era = "BfA",
        text = [[Arbeitete daran, gefallene Helden der Horde und Allianz zu bergen und sie als neue Generation von Todesrittern zu erheben.]],
    },
    {
        era = "SL",
        text = [[Begleitete Bolvar Fordragon und eine Gruppe von Abenteurern beim Angriff auf das Sanktum der Herrschaft.]],
    },
    {
        era = "Midnight",
        text = [[Half bei der Verteidigung der Kapelle des hoffnungsvollen Lichts, während der Argentumkreuzzug mit der Verteidigung des Sonnenbrunnens beschäftigt war.]],
    }
}

-- CAT_VOID
IMAGOdb.npcs.CAT_VOID["nexuskoenig_salhadaar"].name = "Nexuskönig Salhadaar"
IMAGOdb.npcs.CAT_VOID["nexuskoenig_salhadaar"].race = "Leerenastraler"
IMAGOdb.npcs.CAT_VOID["nexuskoenig_salhadaar"].lore = [[Für lange Zeit kannte Nexuskönig Salhadaar nichts außer Verzweiflung und Leid. Vor Jahrtausenden herrschte er über die Bewohner des Planeten K'aresh, bevor dieser von der Leere verschlungen wurde.

Den Verlust der eigenen Welt und des eigenen Körpers zu ertragen, genügt, um selbst die stärkste Seele in den Wahnsinn zu treiben - und Salhadaar bildete dabei keine Ausnahme. Er führte sein Volk, das nun als Astrale bekannt wurde, in den Dienst von Dimensius den alles Verschlingenden, jenem Leerenfürsten, der ihm alles genommen hatte, was er einst gekannt hatte.

Nachdem er von den Helden Azeroths besiegt worden war, wurde Salhadaar von Xal'atath in ihren Dienst gezwungen und musste erneut einem Wesen der Leere gehorchen. Widerwillig und ohne Hoffnung auf einen Ausweg aus diesem Pakt stellen sich der Nexuskönig und seine Astralen der Schattenwache nun erneut den vereinten Streitkräften Azeroths entgegen.]]
IMAGOdb.npcs.CAT_VOID["nexuskoenig_salhadaar"].zones = {"Die Leerenspitze", "Leerensturm"}
IMAGOdb.npcs.CAT_VOID["nexuskoenig_salhadaar"].source = "Cadash"
IMAGOdb.npcs.CAT_VOID["nexuskoenig_salhadaar"].timeline = {
    {
        era = "Ancient",
        text = [[Herrschte als Hohepriester über die Bewohner K'areshs und entschied sich, die Warnungen von Raumgänger vor der herannahenden Leere zu ignorieren. Letztlich machte er ihn sogar für das verantwortlich, was folgen sollte. Als Dimensius der alles Verschlingende erschien, verlor Salhadaar seinen physischen Körper und K'aresh wurde zerstört. Gemeinsam mit seinem Volk floh er in den Wirbelnden Nether.]],
    },
    {
        era = "TBC",
        text = [[Unter dem Vorwand, Dimensius besiegen zu wollen, gründete Salhadaar die Schattenwache und suchte nach Fragmenten des Leerenfürsten. Er verwandelte einige seiner eigenen Astralen in Wesen der Leere, bevor er von den Abenteurern Azeroths und rebellierenden Astralen getötet wurde.]],
    },
    {
        era = "TWW",
        text = [[Von der Leere neu erschaffen, kommandierte Salhadaar die Streitkräfte der Schattenwache auf K'aresh. Beinahe konnte er Dimensius zurückzubringen, bevor er erneut besiegt wurde. Anschließend wurde er von Xal'atath gefangen genommen.]],
    },
    {
        era = "Pre-MN",
        text = [[Unter Todesdrohung erklärte er sich bereit, Xal'ataths Befehlen zu folgen.]],
    },
    {
        era = "Midnight",
        text = [[Es gelang ihm, den Naaru T'era wie von Xal'atath befohlen zur Leere zu verderben. Anstatt ihn dafür zu belohnen, durchflutete Xal'atath ihn jedoch mit übermäßiger Leerenenergie. Der nun vollkommen wahnsinnige Salhadaar wurde gezwungen, gegen die Vorhut des Lichts in der Leerenspitze zu kämpfen. Dort fand er schließlich zum letzten Mal den Tod - und nahm sein Ende mit Erleichterung an.]],
    }
}

IMAGOdb.npcs.CAT_VOID["l_ura"].name = "L'ura"
IMAGOdb.npcs.CAT_VOID["l_ura"].race = "Naaru"
IMAGOdb.npcs.CAT_VOID["l_ura"].lore = [[Die Naaru sind womöglich der reinste Ausdruck des Lichts in den gesamten Großen Dunklen Weiten. L'ura war einst eines dieser strahlenden Wesen heiliger Energie. Sie blieb auf Argus zurück, um sicherzustellen, dass Velen und seine draeneischen Flüchtlinge Kil'jaedens Zorn entkommen konnten, und hielt unzähligen Dämonen stand, bevor sie schließlich von der Brennenden Legion überwältigt wurde.

Über Jahrtausende hinweg gefangen gehalten, verfiel das einst leuchtende Wesen in einen Zustand der Leere. Von Wahnsinn, Chaos und Zorn geleitet, wurde sie für die meisten zu einer gefährlichen Entität und für andere zu einer mächtigen Waffe.

Alleria Windläufer stellte sich dem gefallenen Naaru schließlich entgegen und bezwang sie, wobei sie ihre Essenz in sich band. Nun nutzt die von der Leere berührte Jägerin L'uras Macht als ihre eigene, doch der verdunkelte Naaru existiert weiterhin in ihr – und wartet auf den Moment, in dem sie erneut entfesselt werden könnte.]]
IMAGOdb.npcs.CAT_VOID["l_ura"].zones = {"Insel von Quel'Danas"}
IMAGOdb.npcs.CAT_VOID["l_ura"].source = "Cadash"
IMAGOdb.npcs.CAT_VOID["l_ura"].timeline = {
    {
        era = "Ancient",
        text = [[Blieb auf Argus zurück, um Velens Flucht vor der Brennenden Legion zu sichern. Wurde von Kil'jaeden besiegt und eingesperrt.]],
    },
    {
        era = "Legion",
        text = [[Nun zu einem dunklen Naaru geworden, zog L'uras Macht die Aufmerksamkeit der Schattenwächterastralen auf sich, die ihre Kraft als Waffe nutzen wollten. Schließlich töteten Alleria Windläufer und Raumgänger die Astralen und brachten L'ura unter Kontrolle, woraufhin Alleria ihre Kräfte absorbierte.]],
    },
    {
        era = "Midnight",
        text = [[Wurde von Alleria manifestiert, um einen weiteren dunklen Naaru - T'era - zu töten. Auf der Leerenspitze triumphierte Xal'atath über Alleria und trennte L'ura gewaltsam von der Jägerin, wodurch beide Wesen erneut voneinander getrennt wurden. Anschließend nutzte Xal'atath L'ura, um den Sonnenbrunnen zu verderben, und der wahnsinnige Naaru wurde schließlich von den Abenteurern Azeroths in Quel'Thalas getötet.]],
    }
}

IMAGOdb.npcs.CAT_VOID["mor_duun"].name = "Mor'duun"
IMAGOdb.npcs.CAT_VOID["mor_duun"].race = "Oger"
IMAGOdb.npcs.CAT_VOID["mor_duun"].lore = [[Als mächtiger Oger-Magier führte Mor'duun die Zwielichtklinge an, einen Kult, der Xal'atath ergeben war. Nachdem seine Hingabe ihre Aufmerksamkeit erregt hatte, verlieh sie Mor'duun die Macht der Leere und entfachte damit den Fanatismus des Kults erneut.

Mor'duun führte persönlich die Invasion der Zwielichtklinge auf Zul'Aman an, hinterließ Atal'Aman in Trümmern und kommandierte seine Streitkräfte vom Zerschlagenen Thron aus.]]
IMAGOdb.npcs.CAT_VOID["mor_duun"].zones = {"Zul'Aman"}
IMAGOdb.npcs.CAT_VOID["mor_duun"].source = "Travanoid"
IMAGOdb.npcs.CAT_VOID["mor_duun"].timeline = {
    {
        era = "TWW",
        text = [[Gründete die Zwielichtklinge aus den Überresten des Schattenhammers und verschrieb sich dem Dienste Xal'ataths.]],
    },
    {
        era = "Pre-Midnight",
        text = [[Befahl der Zwielichtklinge, neue Mitglieder in Sturmwind und Orgrimmar anzuwerben, wobei sie die Hoffnungslosigkeit und Verwirrung ausnutzten, die durch den Strahlenden Gesang verursacht worden waren.]],
    },
    {
        era = "Midnight",
        text = [[Führte den Angriff der Zwielichtklinge auf Zul'Aman an, plünderte Atal'Aman und kommandierte seine Armeen vom Zerschlagenen Thron aus, bevor er schließlich von Zul'jarra, Liadrin und einem Abenteurer niedergestreckt wurde.]],
    }
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
IMAGOdb.npcs.CAT_AMANI["akilzon"].race = "Troll"
IMAGOdb.npcs.CAT_AMANI["akilzon"].lore = [[Akil'zon steht den Amani-Trollen seit langem als ihr Loa des Sieges zur Seite. Der große Adler ist eng mit dem Stamm der Amani verbunden und verkörpert ihren unsterblichen Geist sowie ihre Wildheit. Es heißt, dass ein von Akil'zon gesegneter Berserker der Amani ein ganzes Bataillon der Elfen zerfetzen und unversehrt zurückkehren könnte. Zurückgekehrt unter Hash'ey Zul'jarra, richtet Akil'zon ihren Blick nun auf die Zwielichtklinge die Krallen zum Angriff bereit.]]
IMAGOdb.npcs.CAT_AMANI["akilzon"].zones = {"Zul'Aman"}
IMAGOdb.npcs.CAT_AMANI["akilzon"].source = "austin - IMAGO Community"
IMAGOdb.npcs.CAT_AMANI["akilzon"].timeline = {
    {era = "TBC", text = "Wurde vom Hexlord Malacrass in den Körper von Man'ye gebunden, dem Vater von Zul'jarra und Zul'jan. Man'ye wurde in einen Mystiker mit Adlerkopf verwandelt und fiel den eindringenden Abenteurern zum Opfer."},
    {era = "WotLK", text = "Unterstützte die Zandalari dabei, den Drakkari-Trollen und ihrem Verzehr von Loa zur Machtgewinnung ein Ende zu setzen."},
    {era = "Cata", text = "Wurde erneut der dunklen Magie von Hexlord Malacrass unterworfen. Ihr Geist wurde nach dem Tod ihres Avatars durch die Hände von Abenteurern befreit."},
    {era = "BfA", text = "Die Amani beanspruchten einen kleinen Teil von Dazar'alor für sich, inklusive Schreinen und Jüngern für jeden Loa. Akil'zon bildete hierbei keine Ausnahme."},
    {era = "Midnight", text = "Kehrt nach Zul'Aman zurück, um die Macht der Stürme gegen Xal'ataths Streitkräfte zu entfesseln."},
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
IMAGOdb.npcs.CAT_AMANI["zuljan"].race = "Troll"
IMAGOdb.npcs.CAT_AMANI["zuljan"].lore = [[Der impulsive Zul'jan ist der oberste Berater der derzeitigen Herrscherin der Amani-Stämme – seiner eigenen Schwester, Zul'jarra. Im Gegensatz zu ihr misstraut Zul'jan jedoch den Loa. Seiner Ansicht nach haben sie die Trolle in ihrer Stunde der größten Not im Stich gelassen. So sehr er in diesen Angelegenheiten auch uneins mit seiner älteren Schwester sein mag, so aufrichtig sorgt er sich um sie und würde sein Äußerstes tun, um sie zu beschützen. Nun schart Zul'jan die Amani um sich, damit sie aus eigener Kraft stark werden, ohne sich auf die Loa oder irgendjemand anderen verlassen zu müssen.]]
IMAGOdb.npcs.CAT_AMANI["zuljan"].zones = {"Atal'Aman", "Immersangwald", "Zul'Aman"}
IMAGOdb.npcs.CAT_AMANI["zuljan"].source = "Cadash - IMAGO Community"
IMAGOdb.npcs.CAT_AMANI["zuljan"].timeline = {
    {era = "TBC", text = "Verlor seinen Vater Man'ye und seinen Großvater Zul'jin, als er noch ein kleines Kind war. Später wurde seine Mutter im Ritualkampf getötet und seine Schwester Zul'jarra übernahm die Führung der Amani-Stämme."},
    {era = "Midnight", text = "Sicherte Lichtholzwaffen für sein Volk und kämpfte sowohl gegen die Blutelfen als auch gegen die Zwielichtklinge. Später beugte er sich widerstrebend den Befehlen seiner Schwester, sich mit den Elfen zu verbünden."},
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

IMAGOdb.npcs.CAT_AMANI["filo"].name = "Filo"
IMAGOdb.npcs.CAT_AMANI["filo"].race = "Kapara (Loa)"
IMAGOdb.npcs.CAT_AMANI["filo"].lore = [[Filo wird in Zul'Aman als Loa der Kindheit verehrt. Er spricht niemals mit eigener Stimme, sondern erwählt stets das jüngste Kind eines jeden Dorfes zu seinem Sprecher. Gegenüber jenen, die er beschützt, zeigt er sich sanftmütig, doch jeden, der es wagt, seinen Kindern Leid zuzufügen, verfolgt er mit einem furchterregenden Schwur der Vergeltung.

Wenn ein Kind vor seinen Eltern stirbt, wacht Filo über dessen Geist, bis die Eltern ihm im Jenseits folgen.]]
IMAGOdb.npcs.CAT_AMANI["filo"].zones = {"Zul'Aman", "Atal'Aman"}
IMAGOdb.npcs.CAT_AMANI["filo"].source = "Travanoid"
IMAGOdb.npcs.CAT_AMANI["filo"].timeline = {
    {
        era = "Midnight",
        text = [[Er wachte über Kanza, ein Kind der Amani, das ihn aufsuchte, um den Geist ihrer Zwillingsschwester wiederzufinden. Filo verlieh dem Abenteurer, der bei der Vorbereitung des Rituals half, einen Teil seiner Macht - solange seine Kinder ungestört blieben.]],
    }
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
IMAGOdb.npcs.CAT_HARATI["elder_hagar"].race = "Haranir"
IMAGOdb.npcs.CAT_HARATI["elder_hagar"].lore = [[Die Haranir besitzen viele Regeln und Traditionen, und als Älteste im herrschenden Rat ist es Hagars Pflicht, diese durchzusetzen. Doch inzwischen stimmt sie vielen der alten Bräuche nicht mehr zu.

Bevor sie zur Ältesten wurde, war sie die Wurzelhüterin von Teldrassil und damit für den Schutz des großen Weltenbaums verantwortlich. Doch was nützen gepflegte Wurzeln, wenn der gesamte Baum über der Erde zu Asche verbrannt wird? Hagar konnte den Verfall ihres Baumes nicht aufhalten, und obwohl sie noch immer von dem verfolgt wird, was geschehen ist, hat sie begonnen, vieles von dem zu hinterfragen, was sie einst für wahr hielt.

Die Haranir können nicht ewig isoliert von der Außenwelt leben, und als Orweyna auszog, um Kontakt zu den Außenseitern aufzunehmen, war Hagar die einzige Älteste, die sie unterstützte.]]
IMAGOdb.npcs.CAT_HARATI["elder_hagar"].zones = {"Silbermond", "Immersangwald", "Harandar", "Die Höhle"}
IMAGOdb.npcs.CAT_HARATI["elder_hagar"].source = "Cadash"
IMAGOdb.npcs.CAT_HARATI["elder_hagar"].timeline = {
    {
        era = "Pre-BfA",
        text = [[Während ihrer routinemäßigen Arbeit als Wurzelhüterin gingen die Wurzeln von Teldrassil plötzlich in Flammen auf, und Hagar konnte nichts weiter tun, als mit anzusehen, wie sie verdorrten. Ohne ihren einstigen Lebenszweck schloss sie sich daraufhin dem Ältestenrat im Bau an.]],
    },
    {
        era = "Midnight",
        text = [[Gewährte Orweyna, Halduron Wolkenglanz und dem Abenteurer die Möglichkeit, ihr Anliegen vor den Ältesten vorzutragen. Spielte eine entscheidende Rolle bei der Entstehung eines ersten Bündnisses zwischen den Hara'ti und der Außenwelt. Regierte gemeinsam das Dorf Har'mara und machte es zu einem Ort der Einheit zwischen Haranir, Rutaani und Fungianern.]],
    }
}

IMAGOdb.npcs.CAT_HARATI["amarakk"].name = "Amarakk"
IMAGOdb.npcs.CAT_HARATI["amarakk"].race = "Haranir"
IMAGOdb.npcs.CAT_HARATI["amarakk"].lore = [[Als Amarakk jung war, hörte er noch das Lied der Göttin. Als guter Sohn aus einer guten Familie zog er es vor, gemeinsam mit seiner besten Freundin Orweyna auf Abenteuer zu gehen und nahm das Leben nicht besonders ernst. Doch als ihre Reisen sie in den Riss von Aln führten, sah Amarakk den Wahnsinn und das Grauen dessen, was unter ihren eigenen Heimen lauerte.

Den Weg eines Shul'ka zu wählen bedeutet, sich für immer vom Lied der Göttin abzuschneiden – für die meisten Haranir eine Zerstörung des eigenen Geistes. Doch Amarakk wusste, dass dies sein Weg war: dass er erneut in den Riss gehen und kämpfen musste, sein eigenes Glück opfern, um sein Volk zu schützen. Orweyna hat dies nie verstanden.]]
IMAGOdb.npcs.CAT_HARATI["amarakk"].zones = {"Insel von Quel'Danas", "Harandar", "Der Traumriss"}
IMAGOdb.npcs.CAT_HARATI["amarakk"].source = "Cadash"
IMAGOdb.npcs.CAT_HARATI["amarakk"].timeline = {
    {
        era = "Pre-TWW",
        text = [[Er wurde ein Shul'ka und damit zum Ausgestoßenen seines Volkes. Er begann, die erträumten Monster im Riss von Aln zu bekämpfen.]],
    },
    {
        era = "Midnight",
        text = [[Er half Orweyna und dem Champion dabei, in den Riss von Aln vorzudringen, um Alnstaub als Waffe gegen die Lichtblüte zu gewinnen.]],
    }
}

