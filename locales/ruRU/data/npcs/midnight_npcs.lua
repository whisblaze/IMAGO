-- ============================================================
-- IMAGO — locales/ruRU/data/npcs/midnight_npcs.lua (Midnight NPC entries)
-- ============================================================

if GetLocale() ~= "ruRU" then return end

-- === CAT_QUELTHALAS ===
IMAGOdb.npcs.CAT_QUELTHALAS["lor_themar_theron_midnight"].name = "Lor'themar Theron [ru]"
IMAGOdb.npcs.CAT_QUELTHALAS["lor_themar_theron_midnight"].race = "Эльф крови"
IMAGOdb.npcs.CAT_QUELTHALAS["lor_themar_theron_midnight"].lore = [[Следопыт по призванию, Лор'темар Терон не выбирал роль предводителя. Когда Кель'Талас пал от рук Плети в годы Третьей войны, он принял бремя регентства по необходимости - среди выживших не нашлось иного кандидата, способного занять место принца Кель'Таса.

На его долю выпало немало тяжёлых решений: вступление эльфов крови в Орду, вынужденное изгнание высших эльфов во избежание внутренних распрей, и противостояние принцу-предателю Кель'Тасу. Прагматизм и стратегический ум сделали Лор'темара выдающимся лидером, снискавшим уважение как у союзников, так и у врагов. 

Убеждённый сторонник мира, Лор'темар Терон носит титул лорда-регента Кель'Таласа и заседает в Совете Орды. Он всецело предан своему народу.

Теперь, когда Кель'талас вновь оказался в опасности, он не остановится ни перед чем, чтобы защитить свой народ и свой город от наступающих сил Бездны.]]
IMAGOdb.npcs.CAT_QUELTHALAS["lor_themar_theron_midnight"].zones = {"Луносвет", "Леса Вечной Песни", "Остров Кель'Данас", "Харандар"}
IMAGOdb.npcs.CAT_QUELTHALAS["lor_themar_theron_midnight"].source = "Metrus"
IMAGOdb.npcs.CAT_QUELTHALAS["lor_themar_theron_midnight"].timeline = IMAGOdb.timelines.LORTHEMAR_THERON

-- LORD SALTHERIL --
IMAGOdb.npcs.CAT_QUELTHALAS["lord_saltheril_midnight"].name = "Лорд Салтерил"
IMAGOdb.npcs.CAT_QUELTHALAS["lord_saltheril_midnight"].race = "Эльф крови"
IMAGOdb.npcs.CAT_QUELTHALAS["lord_saltheril_midnight"].lore = [[Лорд Салтерил, представитель низшего дворянства кель’дорай, известен во всем Кель’Таласе своими роскошными приёмами, на которых гостям предлагают волшебные вина и изысканные блюда. Салтерил был покровителем Лирата Ветрокрылого, устраивая музыкальные представления для различных дворян и членов королевской семьи Луносвета, в том числе для принца Кель’Таса Солнечного Скитальца и Лор’темара Терона.

Переживший множество бедствий, включая Вторую войну и вторжение Плети, Салтерил никогда не переставал устраивать вечеринки. Лорд-регент Лор’темар подметил, что даже Артас Менетил не смог остановить его надолго.]]
IMAGOdb.npcs.CAT_QUELTHALAS["lord_saltheril_midnight"].zones = {"Леса Вечной Песни"}
IMAGOdb.npcs.CAT_QUELTHALAS["lord_saltheril_midnight"].source = "Metrus"
IMAGOdb.npcs.CAT_QUELTHALAS["lord_saltheril_midnight"].timeline = IMAGOdb.timelines.LORD_SALTHERIL

-- LADY DARKGLEN --
IMAGOdb.npcs.CAT_QUELTHALAS["lady_darkglen_midnight"].name = "Госпожа Мракодол"
IMAGOdb.npcs.CAT_QUELTHALAS["lady_darkglen_midnight"].race = "Эльф Бездны"
IMAGOdb.npcs.CAT_QUELTHALAS["lady_darkglen_midnight"].lore = [[Госпожа Мракодол - аристократка из Кель'Таласа и одна из самых опытных алхимиков и ритуалистов среди рен'дорай. Её свободное и местами безрассудное использование магии Бездны порой вызывает беспокойство у некоторых её соратников, но ей это безразлично. Она уже рисковала своим рассудком, будучи чернокнижницей, а затем еще раз когда прониклась силой Бездны. Так почему же ей не пойти ва-банк?

Неудивительно, что она и её питомец, демон Бездны Блочиний, присоединились к магистру Умбрию в его попытке прорваться в Бурю Бездны ведь что может быть увлекательнее места, где царит чистый хаос?]]
IMAGOdb.npcs.CAT_QUELTHALAS["lady_darkglen_midnight"].zones = {"Луносвет", "Буря Бездны", "Остров Кель'Данас"}
IMAGOdb.npcs.CAT_QUELTHALAS["lady_darkglen_midnight"].source = "Metrus"
IMAGOdb.npcs.CAT_QUELTHALAS["lady_darkglen_midnight"].timeline = IMAGOdb.timelines.LADY_DARKGLEN

-- === CAT_LIGHT ===
-- VINDICATOR BOROS --
IMAGOdb.npcs.CAT_LIGHT["vindicator_boros_midnight"].name = "Воздаятель Борос"
IMAGOdb.npcs.CAT_LIGHT["vindicator_boros_midnight"].race = "Дреней"
IMAGOdb.npcs.CAT_LIGHT["vindicator_boros_midnight"].lore = [[Будучи одновременно лидером Длани Аргуса и членом Серебряной Длани, Борос поклялся сохранить традиции паладинов. Он не раз доказывал, что является способным полководцем на службе у своего народа - дренеев, но без колебаний готов помочь своим молотом и верой любому, кто в этом нуждается.

Теперь же Воздаятель Борос призван Солнечным Колодцем для борьбы с Бездной, и, как всегда, можно не сомневаться, что он выполнит свой долг перед жителями Азерота.]]
IMAGOdb.npcs.CAT_LIGHT["vindicator_boros_midnight"].zones = {"Остров Кель'Данас", "Площадь Паргелия"}
IMAGOdb.npcs.CAT_LIGHT["vindicator_boros_midnight"].source = "Metrus"
IMAGOdb.npcs.CAT_LIGHT["vindicator_boros_midnight"].timeline = IMAGOdb.timelines.VINDICATOR_BOROS

-- GENERAL AMAIS BELLAMY --
IMAGOdb.npcs.CAT_LIGHT["general_amias_bellamy_midnight"].name = "Генерал Амиас Беллами"
IMAGOdb.npcs.CAT_LIGHT["general_amias_bellamy_midnight"].race = "Арати"
IMAGOdb.npcs.CAT_LIGHT["general_amias_bellamy_midnight"].lore = [[Немногие могут сказать, что вера играла в их жизни столь важную роль, как у Арати из Тайносводья. Беллами, как и многие её товарищи-паладины, отправилась в опасную экспедицию через море, следуя видению Света.

В конце концов она оказалась застрявшей под Каз Алгаром, где Священное Пламя и их звезда Беледар стали единственным светом в их новой жизни, полной постоянной тьмы и опасности. Вера больше не была просто утешением - она была тем, что поддерживало в ней жизнь.

После того, как она обеспечила безопасность Тайносводья, её призвал Солнечный Колодец.

Она будет продолжать сражаться за Свет и только за Свет и считает каждое порождение Бездны своим врагом.]]
IMAGOdb.npcs.CAT_LIGHT["general_amias_bellamy_midnight"].zones = {"Остров Кель'Данас", "Луносвет", "Шпиль Бездны", "Буря Бездны"}
IMAGOdb.npcs.CAT_LIGHT["general_amias_bellamy_midnight"].source = "Metrus"
IMAGOdb.npcs.CAT_LIGHT["general_amias_bellamy_midnight"].timeline = IMAGOdb.timelines.GENERAL_AMIAS_BELLAMY

-- EADRIC THE PURE --
IMAGOdb.npcs.CAT_LIGHT["eadric_the_pure_midnight"].name = "Эдрик Чистый"
IMAGOdb.npcs.CAT_LIGHT["eadric_the_pure_midnight"].race = "Человек"
IMAGOdb.npcs.CAT_LIGHT["eadric_the_pure_midnight"].lore = [[Эдрик, паладин и интендант Серебряного Авангарда, известен прежде всего своим вкладом в деятельность ордена во время войны с Королём-личем в Нордсколе. Напряжённость в отношениях между Альянсом и Ордой вновь нарастала, и верховный лорд Тирион Фордринг предложил устроить дружеский турнир, чтобы предотвратить конфликт. Его чемпион Эдрик взял на себя ответственность за организацию большей части этого турнира.

С тех пор он в основном находился в Нордсколе, но, как истинный паладин, он идёт туда, куда зовёт его Свет.]]
IMAGOdb.npcs.CAT_LIGHT["eadric_the_pure_midnight"].zones = {"Площадь Паргелия"}
IMAGOdb.npcs.CAT_LIGHT["eadric_the_pure_midnight"].source = "Metrus"
IMAGOdb.npcs.CAT_LIGHT["eadric_the_pure_midnight"].timeline = IMAGOdb.timelines.EADRIC_THE_PURE

-- FIONA --
IMAGOdb.npcs.CAT_LIGHT["fiona_midnight"].name = "Фиона"
IMAGOdb.npcs.CAT_LIGHT["fiona_midnight"].race = "Ворген"
IMAGOdb.npcs.CAT_LIGHT["fiona_midnight"].lore = [[Эта заботливая и верная женщина-ворген вместе со своим караваном уже много лет путешествует по всему Азероту. Она зарабатывает на жизнь, работая странствующей травницей и целительницей, но её сердце жаждет общения с разными людьми, которых она встречает в своих приключениях. Она с радостью подвозит путешественников на своей карете и никогда не пройдет мимо нуждающихся, не остановившись, чтобы помочь им всем, чем сможет. Это простая жизнь, но для Фионы этого более чем достаточно.

Ее двумя ближайшими друзьями являются паладины Таренар Удар Солнца и Гидвин Златокос, которые часто сопровождают ее в путешествиях.

Солнечный Колодец почувствовал её сострадание и готовность помогать другим и призвал её для защиты Луносвета, и, как всегда, Фиона не пожалеет для этого сил.]]
IMAGOdb.npcs.CAT_LIGHT["fiona_midnight"].zones = {"Остров Кель'Данас"}
IMAGOdb.npcs.CAT_LIGHT["fiona_midnight"].source = "Metrus"
IMAGOdb.npcs.CAT_LIGHT["fiona_midnight"].timeline = IMAGOdb.timelines.FIONA

-- YALIA SAGEWHISPER --
IMAGOdb.npcs.CAT_LIGHT["yalia_sagewhisper_midnight"].name = "Ялия Мудрый Шепот"
IMAGOdb.npcs.CAT_LIGHT["yalia_sagewhisper_midnight"].race = "Пандарен"
IMAGOdb.npcs.CAT_LIGHT["yalia_sagewhisper_midnight"].lore = [[Выросшая в семье рыбаков, прошедшая обучение в ордене Шадо-Пан и служащая в качестве жрицы и алхимика, Ялия - женщина многих талантов. Вынужденная в юном возрасте оставить свою семью, она посвятила большую часть своей жизни исцелению соплеменников-пандаренов в монастыре Шадо-Пан на вершине Кунь-Лай.

Оказав поддержку в борьбе с Лэй Шэнем и Пылающим Легионом, мудрость Ялии и её стремление сделать мир лучше были признаны Светом. Теперь она призвана в Луносвет, чтобы вновь сражаться за свой мир.]]
IMAGOdb.npcs.CAT_LIGHT["yalia_sagewhisper_midnight"].zones = {"Площадь Паргелия"}
IMAGOdb.npcs.CAT_LIGHT["yalia_sagewhisper_midnight"].source = "Metrus"
IMAGOdb.npcs.CAT_LIGHT["yalia_sagewhisper_midnight"].timeline = IMAGOdb.timelines.YALIA_SAGEWHISPER

-- LOTHRAXION --
IMAGOdb.npcs.CAT_LIGHT["lothraxion_midnight"].name = "Лотраксион"
IMAGOdb.npcs.CAT_LIGHT["lothraxion_midnight"].race = "Натрезим Озарённый"
IMAGOdb.npcs.CAT_LIGHT["lothraxion_midnight"].lore = [[Говорят, что Повелители Ужаса - жестокие, садистские и манипулятивные существа. Они либо шпионы Пылающего Легиона, либо агенты царств смерти. Перевоплощаясь, они проникают в ряды врагов и сводят даже самые благородные души друг против друга. Говорят, что им нельзя доверять.

Лотраксион - единственное исключение из этого правила. Следуя великому замыслу Саргераса, он уничтожил бесчисленное количество миров и объявил Бездну своим злейшим врагом. Когда же легионы демонов встретили его с дренеями, Лотраксион решил предать своих бывших хозяев. Он присоединился к Армии Света и стал Озарённым.

Зная все ужасы, которые творили по вселенной как Скверна, так и Бездна, Лотраксион безжалостен к их последователям. Он убеждён, что только Свет способен победить эти злые силы. Теперь, под командованием своего Верховного экзарха Туралиона, Лотраксион был призван в Солнечный Колодец, чтобы вновь сразиться с силами тьмы.]]
IMAGOdb.npcs.CAT_LIGHT["lothraxion_midnight"].zones = {"Луносвет", "стров Кель'Данас", "Площадь Паргелия", "Буря Бездны", "Узел Нексуса Зенас"}
IMAGOdb.npcs.CAT_LIGHT["lothraxion_midnight"].source = "Metrus"
IMAGOdb.npcs.CAT_LIGHT["lothraxion_midnight"].timeline = IMAGOdb.timelines.LOTHRAXION

-- APONI BRIGHTMANE --
IMAGOdb.npcs.CAT_LIGHT["aponi_brightmane_midnight"].name = "Апони Светлая Грива"
IMAGOdb.npcs.CAT_LIGHT["aponi_brightmane_midnight"].race = "Таурен"
IMAGOdb.npcs.CAT_LIGHT["aponi_brightmane_midnight"].lore = [[Во время войны с Королём-личом в Нордсколе таурен-воин Апони Светлая Грива получила озарение: для помощи своему народу и Орде одной только грубой силы недостаточно. После беседы со своим другом Таху Мудрый Ветер Апони решила включить учения Ан'ше - божества солнца тауренов - в свой боевой стиль и стала первым тауреном-паладином.

С тех пор как Апони присоединилась к ордену Серебряной Длани в сражении во время третьего и последнего вторжения Пылающего Легиона, её Служителей Солнца можно встретить во многих уголках Азерота, где они помогают всем, кто в этом нуждается.]]
IMAGOdb.npcs.CAT_LIGHT["aponi_brightmane_midnight"].zones = {"Площадь Паргелия", "стров Кель'Данас"}
IMAGOdb.npcs.CAT_LIGHT["aponi_brightmane_midnight"].source = "Metrus"
IMAGOdb.npcs.CAT_LIGHT["aponi_brightmane_midnight"].timeline = IMAGOdb.timelines.APONI_BRIGHTMANE

-- MEHLAR DAWNBLADE --
IMAGOdb.npcs.CAT_LIGHT["mehlar_dawnblade_midnight"].name = "Мелар Клинок Рассвета"
IMAGOdb.npcs.CAT_LIGHT["mehlar_dawnblade_midnight"].race = "Эльф крови"
IMAGOdb.npcs.CAT_LIGHT["mehlar_dawnblade_midnight"].lore = [[Ученик Утера Светоносного, Мелар Клинок Рассвета до Третьей войны был паладином Серебряной Длани. Он славился строгим соблюдением морального кодекса и следовал приказам ордена до буквы. Когда самый выдающийся ученик Утера, Артас Менетил, сбился с пути Света и уничтожил родину Мелара - Кель’Талас, сострадание эльфа крови превратилось в ярость и жажду мести.

Он присоединился к Рыцарям Крови под командованием леди Лиадрин и сражался в образцовом единстве со своими товарищами-паладинами против Плети. В приступе ярости он осквернил гробницу Утера, но тут же столкнулся с духом своего бывшего наставника. Получив от покойного паладина лишь прощение, Мелар поклялся переосмыслить свои взгляды и теперь старается не поддаваться ненависти так легко, как раньше.]]
IMAGOdb.npcs.CAT_LIGHT["mehlar_dawnblade_midnight"].zones = {"Остров Кель'Данас", "Площадь Паргелия"}
IMAGOdb.npcs.CAT_LIGHT["mehlar_dawnblade_midnight"].source = "Metrus"
IMAGOdb.npcs.CAT_LIGHT["mehlar_dawnblade_midnight"].timeline = IMAGOdb.timelines.MEHLAR_DAWNBLADE

-- PROPHET VELEN --
IMAGOdb.npcs.CAT_LIGHT["prophet_velen_midnight"].name = "Пророк Велен"
IMAGOdb.npcs.CAT_LIGHT["prophet_velen_midnight"].race = "Дреней"
IMAGOdb.npcs.CAT_LIGHT["prophet_velen_midnight"].lore = [[Пророк Велен, пользующийся уважением и доверием жителей Азерота, возглавляет дренеев уже более тринадцати тысячелетий. Избранный наару, он обрёл дар предвидения благодаря видениям самого Света. Эти видения не раз спасали жизни его народа и давали ему уверенность в будущем, в котором зло будет окончательно изгнано из космоса.

Вера Велена в Свет непоколебима, а его искренность и добродушие вселяют веру как в друзей, так и в противников — в частности, в Андуина Ринна и леди Лиадрин.

Поэтому неудивительно, что Солнечный Колодец призвал его на помощь. В конце концов, Велен уже однажды спас его от порчи и не позволит ему погрузиться во тьму снова.]]
IMAGOdb.npcs.CAT_LIGHT["prophet_velen_midnight"].zones = {"Луносвет", "Остров Кель'Данас"}
IMAGOdb.npcs.CAT_LIGHT["prophet_velen_midnight"].source = "Metrus"
IMAGOdb.npcs.CAT_LIGHT["prophet_velen_midnight"].timeline = IMAGOdb.timelines.PROPHET_VELEN

-- CALIA MENETHIL --
IMAGOdb.npcs.CAT_LIGHT["calia_menethil_midnight"].name = "Калия Менетил"
IMAGOdb.npcs.CAT_LIGHT["calia_menethil_midnight"].race = "Нежить"
IMAGOdb.npcs.CAT_LIGHT["calia_menethil_midnight"].lore = [[Назвать Бледную Госпожу политически спорной фигурой - не сказать ничего. Сестра печально известного Артаса Менетила и единственная оставшаяся наследница престола Лордерона, который сейчас находится в руках Отрекшихся - главных жертв Артаса. Будучи членом Альянса и жрицей Света, Калия отказывалась от своего права по рождению, однако всё изменилось, когда она сама была убита и воскрешена в нежить наару Саа’рой. Она присоединилась к Орде и стала одним из руководящих членов Мрачного Совета. Хотя с тех пор она и проявляла желание помогать своему народу, даже подвергая себя опасности ради этого дела, похоже, что полного доверия Отрекшихся ей ещё предстоит заслужить.

Но пока что её политические амбиции, какими бы они ни были, должны подождать, ведь Свет призвал её в Луносвет, и Калия откликнулась на этот зов.]]
IMAGOdb.npcs.CAT_LIGHT["calia_menethil_midnight"].zones = {"Остров Кель'Данас", "Луносвет"}
IMAGOdb.npcs.CAT_LIGHT["calia_menethil_midnight"].source = "Metrus"
IMAGOdb.npcs.CAT_LIGHT["calia_menethil_midnight"].timeline = IMAGOdb.timelines.CALIA_MENETHIL

-- CAPTAIN FAREEYA --
IMAGOdb.npcs.CAT_LIGHT["captain_fareeya_midnight"].name = "Капитан Фария"
IMAGOdb.npcs.CAT_LIGHT["captain_fareeya_midnight"].race = "Озарённый Дреней"
IMAGOdb.npcs.CAT_LIGHT["captain_fareeya_midnight"].lore = [[Фария, заместитель Верховного экзарха Туралиона, является одним из лидеров Армии Света. Пережив нападение Пылающего Легиона, она бежала с Аргуса вместе с Пророком Веленом, но судьба привела её обратно на её осквернённую родину. Вместе со своими лучшими солдатами-дренеями она была твёрдо намерена не бежать, а остаться и сражаться.

Её отряд стал Армией Света, и они полностью посвятили себя Свету - телом и душой. Со временем их священный крестовый поход разрастался и вдохновлял представителей других рас присоединиться к их миссии. В конце концов, с помощью героев Азерота демоны были окончательно побеждены. Однако Фария не собиралась почивать на лаврах и вслед за Туралионом вступила в ряды Альянса на Азероте, решив продолжать сражаться за всё святое и доброе.]]
IMAGOdb.npcs.CAT_LIGHT["captain_fareeya_midnight"].zones = {"Луносвет", "Остров Кель'Данас"}
IMAGOdb.npcs.CAT_LIGHT["captain_fareeya_midnight"].source = "Metrus"
IMAGOdb.npcs.CAT_LIGHT["captain_fareeya_midnight"].timeline = IMAGOdb.timelines.CAPTAIN_FAREEYA


-- === CAT_AMANI ===
-- HALAZZI --
IMAGOdb.npcs.CAT_AMANI["halazzi_midnight"].name = "Халаззи"
IMAGOdb.npcs.CAT_AMANI["halazzi_midnight"].race = "Лоа"
IMAGOdb.npcs.CAT_AMANI["halazzi_midnight"].lore = [[Лоа Охоты. Интриган. Серебряная Тень. Длинноухий. Лесные тролли называют его по-разному, но ни одно из этих имён не может в полной мере отразить сущность Халаззи. Глубоко в лесах Зул’Амана тролли племени Сухокожих поклоняются Халаззи и взывают к его помощи во время охоты. Лоа-рысь скрывает охотников от их добычи и благословляет дикую природу туманом и дождём, обеспечивая ей постоянное изобилие. Хоть Халаззи и игривый лоа, ничто не может укрыться от его ушей и глаз: он видит невидимое и раскрывает любую ложь. Если вам доведётся бродить по лесам Амани, будьте осторожны - Халаззи всегда рядом.]]
IMAGOdb.npcs.CAT_AMANI["halazzi_midnight"].zones = {"Зул'Аман"}
IMAGOdb.npcs.CAT_AMANI["halazzi_midnight"].source = "Metrus"
IMAGOdb.npcs.CAT_AMANI["halazzi_midnight"].timeline = IMAGOdb.timelines.HALAZZI

-- FILO --
IMAGOdb.npcs.CAT_AMANI["filo_midnight"].name = "Фило"
IMAGOdb.npcs.CAT_AMANI["filo_midnight"].race = "Лоа"
IMAGOdb.npcs.CAT_AMANI["filo_midnight"].lore = [[Фило, почитаемый в Зул’Амане как Лоа детей, никогда не говорит сам, а выбирает в качестве своего глашатая самого младшего ребёнка из каждой деревни. Будучи мягким по отношению к тем, кого он защищает, он преследует любого, кто осмеливается причинить вред его детям, клянясь отомстить.

Когда ребёнок умирает раньше своих родителей, Фило охраняет его дух, пока родители не присоединятся к нему в загробном мире.]]
IMAGOdb.npcs.CAT_AMANI["filo_midnight"].zones = {"Зул'Аман"}
IMAGOdb.npcs.CAT_AMANI["filo_midnight"].source = "Metrus"
IMAGOdb.npcs.CAT_AMANI["filo_midnight"].timeline = IMAGOdb.timelines.FILO

-- === CAT_HARATI ===
-- AMARAKK --
IMAGOdb.npcs.CAT_HARATI["amarakk_midnight"].name = "Амаракк"
IMAGOdb.npcs.CAT_HARATI["amarakk_midnight"].race = "Харанир"
IMAGOdb.npcs.CAT_HARATI["amarakk_midnight"].lore = [[В юности Амаракк ещё слышал песнь богини. Будучи прилежным ребёнком из хорошей семьи, он предпочитал отправляться в приключения со своей лучшей подругой Орвейной и не относился к жизни слишком серьёзно. Однако, когда их приключения привели их в Провал Альн, Амаракк увидел безумие и ужас того, что таилось прямо под их домами.

Выбрать путь Шул'ка - значит навсегда отречься от песни богини, и для большинства хараниров это равносильно калечению разума. Но Амаракк знал, что это его путь, что ему нужно снова отправиться в Провал и сражаться, пожертвовав своим счастьем ради своего народа. Орвейна же так и не смогла этого понять.]]
IMAGOdb.npcs.CAT_HARATI["amarakk_midnight"].zones = {"Харандар", "Остров Кель'Данас", "Провал снов"}
IMAGOdb.npcs.CAT_HARATI["amarakk_midnight"].source = "Metrus"
IMAGOdb.npcs.CAT_HARATI["amarakk_midnight"].timeline = IMAGOdb.timelines.AMARAKK

-- === CAT_VOID ===
-- L'URA -- 
IMAGOdb.npcs.CAT_VOID["l_ura_midnight"].name = "Л’ура"
IMAGOdb.npcs.CAT_VOID["l_ura_midnight"].race = "Наару"
IMAGOdb.npcs.CAT_VOID["l_ura_midnight"].lore = [[Наару, пожалуй, являются самым чистым воплощением Света во всей Великой Запредельной Тьме.

Л’ура когда-то была одним из этих сияющих маяков святой энергии. Она осталась на Аргусе, чтобы помочь Велену и его беженцам-дренеям спастись от гнева Кил’джедена, и, продержавшись в борьбе с бесчисленными демонами, Л’ура была побеждена Пылающим Легионом.

Проведя тысячелетия в плену, некогда светлое существо погрузилось в состояние Бездны. Ведомая безумием, хаосом и гневом, она стала опасным существом для большинства и мощным оружием для других.

В конце концов Аллерия Ветрокрылая вступила в схватку с падшей наару и покорила её, заключив её сущность в себе. Теперь затронутый Бездной следопыт владеет силой Л’уры как своей собственной, однако омрачённая наару по-прежнему пребывает внутри неё, ожидая своего момента.]]
IMAGOdb.npcs.CAT_VOID["l_ura_midnight"].zones = {"Остров Кель'Данас"}
IMAGOdb.npcs.CAT_VOID["l_ura_midnight"].source = "Metrus"
IMAGOdb.npcs.CAT_VOID["l_ura_midnight"].timeline = IMAGOdb.timelines.L_URA

-- NEXUS-KING SALHADAAR --
IMAGOdb.npcs.CAT_VOID["nexus_king_salhadaar_midnight"].name = "Соправитель Салхадар"
IMAGOdb.npcs.CAT_VOID["nexus_king_salhadaar_midnight"].race = "Эфириал"
IMAGOdb.npcs.CAT_VOID["nexus_king_salhadaar_midnight"].lore = [[Долгое время Соправитель Салхадар знал только отчаяние и страдания. Тысячи лет назад он правил народом планеты К’ареш, прежде чем она была поглощена Бездной.

Потеря своего мира и физического тела способна свести с ума даже самую сильную душу - и Салхадар не стал исключением. Он привёл свой народ, теперь называемый эфириалами, на службу к Пространствусу Всепожирающему - тому самому Повелителю Бездны, который отнял у него всё, что ему было дорого.

После поражения от рук чемпионов Азерота Салхадар был завербован Ксал’атат и был вынужден подчиняться ещё одному существу из Бездны. Не по своей воле, но не видя выхода из этой сделки, Соправитель и его эфириалы из Тёмной Стражи вновь противостоят объединённым силам Азерота.]]
IMAGOdb.npcs.CAT_VOID["nexus_king_salhadaar_midnight"].zones = {"Шпиль Бездны", "Буря Бездны"}
IMAGOdb.npcs.CAT_VOID["nexus_king_salhadaar_midnight"].source = "Metrus"
IMAGOdb.npcs.CAT_VOID["nexus_king_salhadaar_midnight"].timeline = IMAGOdb.timelines.NEXUS_KING_SALHADAAR

-- MOR_DUUN --
IMAGOdb.npcs.CAT_VOID["mor_duun_midnight"].name = "Мор'дуун"
IMAGOdb.npcs.CAT_VOID["mor_duun_midnight"].race = "Огр"
IMAGOdb.npcs.CAT_VOID["mor_duun_midnight"].lore = [[Будучи могущественным огром-магом, Мор’дун возглавлял Сумеречный Клинок — культ, поклонявшийся Ксал’атат. Когда его преданность привлекла внимание богини, она даровала Мор’дуну силу Бездны, что придало культу новый импульс.

Мор’дун лично возглавил вторжение Сумеречного Клинка в Зул’Аман, превратив Атал’Аман в руины и командуя своими войсками с Разрушенного Трона.]]
IMAGOdb.npcs.CAT_VOID["mor_duun_midnight"].zones = {"Зул'Аман"}
IMAGOdb.npcs.CAT_VOID["mor_duun_midnight"].source = "Metrus"
IMAGOdb.npcs.CAT_VOID["mor_duun_midnight"].timeline = IMAGOdb.timelines.MOR_DUUN


-- === CAT_EBON_BLADE ===
-- High Inquisitor Whitemane --
IMAGOdb.npcs.CAT_EBON_BLADE["high_inquisitor_whitemane_midnight"].name = "Верховный Инквизитор Вайтмейн"
IMAGOdb.npcs.CAT_EBON_BLADE["high_inquisitor_whitemane_midnight"].race = "Человек"
IMAGOdb.npcs.CAT_EBON_BLADE["high_inquisitor_whitemane_midnight"].zones = {"Восточные Чумные земли"}
IMAGOdb.npcs.CAT_EBON_BLADE["high_inquisitor_whitemane_midnight"].source = "Metrus"
IMAGOdb.npcs.CAT_EBON_BLADE["high_inquisitor_whitemane_midnight"].timeline = IMAGOdb.timelines.HIGH_INQUISITOR_WHITEMANE

-- THORAS TROLLBANE --
IMAGOdb.npcs.CAT_EBON_BLADE["thoras_trollbane_midnight"].name = "Торас Троллебой"
IMAGOdb.npcs.CAT_EBON_BLADE["thoras_trollbane_midnight"].race = "Человек"
IMAGOdb.npcs.CAT_EBON_BLADE["thoras_trollbane_midnight"].lore = [[Любимый своим народом и внушающий страх врагам, Торас Троллебой был королём-воином Стромгарда и одним из основателей Альянса Лордерона.

После разгрома орков во времена Второй войны Торас был против содержания выживших орков в лагерях для интернированных и открыто призывал к их казни. После отказа Лордерона Троллебой с горечью покинул Альянс.

В какой-то момент после смерти короля Теренаса Менетила Торас был убит своим сыном Галеном.

Во время третьего вторжения Пылающего Легиона рыцари Чёрного Клинка воскресили Тораса в качестве одного из Четырёх Всадников. Считая, что он провалился как отец и как король, Торас присоединился к ним, чтобы сохранить мир в Азероте.]]
IMAGOdb.npcs.CAT_EBON_BLADE["thoras_trollbane_midnight"].zones = {"Восточные Чумные земли"}
IMAGOdb.npcs.CAT_EBON_BLADE["thoras_trollbane_midnight"].source = "Metrus"
IMAGOdb.npcs.CAT_EBON_BLADE["thoras_trollbane_midnight"].timeline = IMAGOdb.timelines.THORAS_TROLLBANE

-- KOLTIRA DEATHWEAVER --
IMAGOdb.npcs.CAT_EBON_BLADE["koltira_deathweaver_midnight"].name = "Кольтира Ткач Смерти"
IMAGOdb.npcs.CAT_EBON_BLADE["koltira_deathweaver_midnight"].race = "Эльф крови (Нежить)"
IMAGOdb.npcs.CAT_EBON_BLADE["koltira_deathweaver_midnight"].lore = [[Кольтира сражался и погиб, защищая Луносвет во времена вторжения Артаса и Плети. Однако смерть не стала для него концом: вскоре он был воскрешён в качестве Рыцаря Смерти.

Находясь под контролем Артаса, он был вынужден убивать в составе той самой армии, которая уничтожила всё, что ему когда-то было дорого. Несмотря на ужасающие обстоятельства, между ним и Тассарианом — человеком, убившим его — зародилась настоящая дружба. Освободившись от контроля Короля-Лича, они вместе решили сражаться за новообразованный Чёрный Клинок, поклявшись защищать весь Азерот от нежити. Кольтира присоединился к Орде и выступал в качестве посланника своих соратников-Рыцарей Смерти.

Хоть порой им и приходилось оказываться на разных сторонах фракционных войн, Кольтира Ткач Смерти и Тассариан остаются близкими друзьями.]]
IMAGOdb.npcs.CAT_EBON_BLADE["koltira_deathweaver_midnight"].zones = {"Восточные Чумные земли"}
IMAGOdb.npcs.CAT_EBON_BLADE["koltira_deathweaver_midnight"].source = "Metrus"
IMAGOdb.npcs.CAT_EBON_BLADE["koltira_deathweaver_midnight"].timeline = IMAGOdb.timelines.KOLTIRA_DEATHWEAVER

-- NAZGRIM --
IMAGOdb.npcs.CAT_EBON_BLADE["nazgrim_midnight"].name = "Назгрим"
IMAGOdb.npcs.CAT_EBON_BLADE["nazgrim_midnight"].race = "Орк"
IMAGOdb.npcs.CAT_EBON_BLADE["nazgrim_midnight"].lore = [[Честь, верность, отвага - для орков нет ничего важнее. Для Назгрима это были не просто девизы, а сам смысл жизни.

Начав свою карьеру с должности рядового сержанта в армии Гарроша Адского Крика, Назгрим, благодаря своим подвигам по всему Азероту, быстро дослужился до звания генерала и стал одним из ближайших союзников Вождя Адского Крика.

Когда Орда восстала против Адского Крика и пришло время выбирать между долгом и моралью, Назгрим с нелёгким сердцем выбрал долг, стойко противостоя захватчикам и, в конце концов, отдал жизнь на службе своему Вождю.

Однако его история на этом не закончилась, так как он был воскрешён Рыцарями Чёрного Клинка в качестве первого из новых Четырёх Всадников. Узнав о третьем вторжении Пылающего Легиона, он без колебаний принял свою новую роль и продолжил верно служить своему народу.]]
IMAGOdb.npcs.CAT_EBON_BLADE["nazgrim_midnight"].zones = {"Восточные Чумные земли"}
IMAGOdb.npcs.CAT_EBON_BLADE["nazgrim_midnight"].source = "Metrus"
IMAGOdb.npcs.CAT_EBON_BLADE["nazgrim_midnight"].timeline = IMAGOdb.timelines.NAZGRIM


-- === CAT_NEUTRAL ===
-- ALLERIA WINDRUNNER --
IMAGOdb.npcs.CAT_NEUTRAL["alleria_windrunner_midnight"].name = "Аллерия Ветрокрылая"
IMAGOdb.npcs.CAT_NEUTRAL["alleria_windrunner_midnight"].race = "Эльф Бездны"
IMAGOdb.npcs.CAT_NEUTRAL["alleria_windrunner_midnight"].lore = [[Известная жителям Азерота как одна из величайших героинь Альянса, Аллерия сражалась во Второй войне и в продолжавшемся тысячелетиями крестовом походе против Пылающего Легиона. Она многогранна - мать, спутница, героиня, старшая сестра, но прежде всего она охотница. Всё остальное отходит на второй план перед стоящей перед ней миссией, и никакая цена не является слишком высокой, чтобы обеспечить безопасность её мира.

Война - единственное, что она знает, и на поле боя она чувствует себя лучше, чем в мирное время. Когда она потеряла младшего брата и родителей в войне против Орды, Аллерия обвинила в этом себя и безрассудно бросилась в бой, пытаясь найти смысл жизни в насилии. Она так и не смогла по-настоящему оправиться от травмы, нанесённой этими потерями. Имея собственную семью - Туралиона и их сына Аратора, - она не может заставить себя им открыться, хотя то, что они становятся для неё чужими, ранит её до глубины души.

Для борьбы с Пылающим Легионом Аллерия смогла обуздать Бездну. Она была проникнута духом падшего наару Л’уры и теперь использует свои тёмные силы на благо Азерота. Всегда находясь на грани безумия и борясь с шёпотами, атакующими её разум, Аллерия начала охоту за Ксал’атат. Как и во всех своих охотах, преследование стало для неё идеей фикс, и она не успокоится, пока не победит своего врага.]]
IMAGOdb.npcs.CAT_NEUTRAL["alleria_windrunner_midnight"].zones = {"Шпиль Бездны", "Буря Бездны"}
IMAGOdb.npcs.CAT_NEUTRAL["alleria_windrunner_midnight"].source = "Metrus"
IMAGOdb.npcs.CAT_NEUTRAL["alleria_windrunner_midnight"].timeline = IMAGOdb.timelines.ALLERIA_WINDRUNNER

-- MONTE GAZLOWE --
IMAGOdb.npcs.CAT_NEUTRAL["monte_gazlowe_midnight"].name = "Монти Газлоу"
IMAGOdb.npcs.CAT_NEUTRAL["monte_gazlowe_midnight"].race = "Гоблин"
IMAGOdb.npcs.CAT_NEUTRAL["monte_gazlowe_midnight"].lore = [[Архитектор Оргриммара и торговый принц картеля Трюмных Вод - один из самых влиятельных членов Орды, хотя его влияние в основном проявляется за кулисами. Он не воин, не считает себя героем, и в глазах большинства он - всего лишь очередной жадный гоблин.

Однако это лишь то, каким он желает казаться, и те, кто хорошо с ним знаком, понимают, что за всей этой язвительностью скрывается большое сердце.

Благодаря его реформам впервые в истории гоблинов угнетённые рабочие его картеля получили безопасность и права. Он оказывал финансовую поддержку многим своим союзникам из Орды, не требуя ничего взамен. Он сыграл ключевую роль в переменах в Нижней Шахте, хоть сначала и не планировал вмешиваться.

Он подружился с Орвейной, и они начали знакомить друг друга со своими культурами.]]
IMAGOdb.npcs.CAT_NEUTRAL["monte_gazlowe_midnight"].zones = {"Харандар", "Логово"}
IMAGOdb.npcs.CAT_NEUTRAL["monte_gazlowe_midnight"].source = "Metrus"
IMAGOdb.npcs.CAT_NEUTRAL["monte_gazlowe_midnight"].timeline = IMAGOdb.timelines.MONTE_GAZLOWE

-- VALEERA SANGUINAR --
IMAGOdb.npcs.CAT_NEUTRAL["valeera_sanguinar_midnight"].name = "Валира Сангвинар"
IMAGOdb.npcs.CAT_NEUTRAL["valeera_sanguinar_midnight"].race = "Эльф крови"
IMAGOdb.npcs.CAT_NEUTRAL["valeera_sanguinar_midnight"].lore = [[Валира Сангвинар не присягала ни одной фракции и ни одному лидеру. Молодая эльфийка крови рано осталась сиротой и жила на улицах, воруя, чтобы выжить. Будь то Плеть, мана-зависимость или рабство — Валира каким-то образом всё пережила. Она перестала доверять людям, чувствовала себя преданной миром и стала безжалостной убийцей.

Когда она наконец обрела настоящих друзей в лице Вариана Ринна и Бролла Медвежья Шкура, она сделала первые шаги к более здоровому образу жизни. Будучи обязана жизнью Вариану, она служила ему телохранителем, не имея никаких обязательств перед Альянсом. После его смерти она продолжила служить его сыну, Андуину, и Штормград стал для неё вторым домом.

Теперь, будучи нейтральным союзником обеих фракций, она помогает героям Азерота в борьбе с врагами, посягнувшими на Луносвет, из самых мрачных глубин Кель’Таласа и за его пределами.]]
IMAGOdb.npcs.CAT_NEUTRAL["valeera_sanguinar_midnight"].zones = {"Луносвет", "Леса Вечной Песни", "Зул'Аман", "Площадь Паргелия", "Санкиллер Санктум", "Атал'Аман", "Коллегиальное бедствие", "Точка теней охраны", "Темный путь", "Яма Grudge", "Залив памяти", "Теневой анклав", "Сумеречные склеивания"}
IMAGOdb.npcs.CAT_NEUTRAL["valeera_sanguinar_midnight"].source = "Metrus"
IMAGOdb.npcs.CAT_NEUTRAL["valeera_sanguinar_midnight"].timeline = IMAGOdb.timelines.VALEERA_SANGUINAR

-- DECIMUS --
IMAGOdb.npcs.CAT_NEUTRAL["decimus_midnight"].name = "Децим"
IMAGOdb.npcs.CAT_NEUTRAL["decimus_midnight"].race = "Доманаар"
IMAGOdb.npcs.CAT_NEUTRAL["decimus_midnight"].lore = [[Харизматичный, опасный, коварный - всем этим можно описать Децима.

Как и все доманаары Бури Бездны, он подчинился Ксал'атат, признав её более сильным существом. Однако служение кому-либо не входит в планы Децима, поэтому он вступает в опасную игру, в которой фигурами служат чемпионы Азерота.]]
IMAGOdb.npcs.CAT_NEUTRAL["decimus_midnight"].zones = {"Буря Бездны"}
IMAGOdb.npcs.CAT_NEUTRAL["decimus_midnight"].source = "Metrus"
IMAGOdb.npcs.CAT_NEUTRAL["decimus_midnight"].timeline = IMAGOdb.timelines.DECIMUS

-- LORD MAXWELL TYROSUS --
IMAGOdb.npcs.CAT_NEUTRAL["lord_maxwell_tyrosus_midnight"].name = "Лорд Максвелл Тиросс"
IMAGOdb.npcs.CAT_NEUTRAL["lord_maxwell_tyrosus_midnight"].race = "Человек"
IMAGOdb.npcs.CAT_NEUTRAL["lord_maxwell_tyrosus_midnight"].lore = [[С тех пор как Плеть опустошила Восточные Королевства, Максвелл Тиросс посвятил себя борьбе с нежитью и защите невинных. Он стал не только лидером Серебряного Рассвета, но и правой рукой Верховного лорда Ордена Серебряной Длани. Может, у него и нет высокого титула, и он не совершал героических подвигов, принесших победу в войне, как его товарищи-паладины Туралион и Утер Светоносный, но заслуга Тиросса в поддержке дисциплины и боеготовности орденов паладинов неоценима.

Несмотря на то, что он десятилетиями служил Свету, Тиросс так и не был призван Солнечным Колодцем. Однако, не поддавшись уязвлённому самолюбию или сомнениям, он продолжает противостоять новым угрозам за пределами Луносвета.]]
IMAGOdb.npcs.CAT_NEUTRAL["lord_maxwell_tyrosus_midnight"].zones = {"Восточные Чумные земли"}
IMAGOdb.npcs.CAT_NEUTRAL["lord_maxwell_tyrosus_midnight"].source = "Metrus"
IMAGOdb.npcs.CAT_NEUTRAL["lord_maxwell_tyrosus_midnight"].timeline = IMAGOdb.timelines.LORD_MAXWELL_TYROSUS

-- Allari the Souleater --
IMAGOdb.npcs.CAT_NEUTRAL["allari_the_souleater_midnight"].name = "Аллари Пожирательница Душ"
IMAGOdb.npcs.CAT_NEUTRAL["allari_the_souleater_midnight"].race = "Эльф крови"
IMAGOdb.npcs.CAT_NEUTRAL["allari_the_souleater_midnight"].lore = [[Благодаря своей невероятной ненависти к Пылающему Легиону Аллари Пожирательница Душ заслужила своё прозвище, используя могущественную Косу Душ для удержания в ней душ демонов. Это опасное оружие говорит с ней, подталкивая её на нанесение ещё большего вреда врагам, и она часто использует его в качестве орудия пыток.

Однако, несмотря на крайние методы, Аллари сражается во благо Азерота. После окончательного поражения Легиона она поставила перед собой задачу обучать желающих рен’дорай искусству охоты на демонов и помогать им в борьбе с Бездной.]]
IMAGOdb.npcs.CAT_NEUTRAL["allari_the_souleater_midnight"].zones = {"Буря Бездны"}
IMAGOdb.npcs.CAT_NEUTRAL["allari_the_souleater_midnight"].source = "Metrus"
IMAGOdb.npcs.CAT_NEUTRAL["allari_the_souleater_midnight"].timeline = IMAGOdb.timelines.ALLARI_THE_SOULEATER


-- === CAT_ARCANTINA ===
