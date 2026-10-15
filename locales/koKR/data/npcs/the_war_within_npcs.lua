-- ============================================================
-- IMAGO — locales/koKR/data/npcs/the_war_within_npcs.lua (The War Within NPC entries)
-- ============================================================

if GetLocale() ~= "koKR" then return end

-- === CAT_DALARAN_SURVIVORS ===

-- ALLERIA WINDRUNNER --
IMAGOdb.npcs.CAT_DALARAN_SURVIVORS["alleria_windrunner_tww"].name = "알레리아 윈드러너"
IMAGOdb.npcs.CAT_DALARAN_SURVIVORS["alleria_windrunner_tww"].aliases = {"Alleria", "Lady Sun", "알레리아"}
IMAGOdb.npcs.CAT_DALARAN_SURVIVORS["alleria_windrunner_tww"].race = "공허 엘프"
IMAGOdb.npcs.CAT_DALARAN_SURVIVORS["alleria_windrunner_tww"].lore = [[아제로스 백성에게 얼라이언스 가장 위대한 전쟁 영웅 중 하나로 알려진 알레리아는 2차 대전쟁과 불타는 군단에 맞선 수천 년 성전에 싸웠다. 그녀는 많은 것, 어머니이자 동반자이며 영웅이자 누나지만 무엇보다 사냥꾼이다. 눈앞 사명보다 앞서는 것은 없고 세상 안전에 어떤 대가도 크지 않다.

전쟁은 그녀가 아는 유일한 인생으로 평화 시기보다 전장에서 더 안식과 친근을 느낀다. 이제 아제로스에서 사랑하는 투랄리온, 아들 아라토르와 평화롭게 살 시간이 있었어도 가족을 밀어내지 않을 수 없다. 헌신의 두려움인가, 아니면 자신이 처한 위험에서 사랑하는 이를 지키는 나름의 방식인가? 본인도 모를지 모른다.

불타는 군단과 싸우며 알레리아는 공허에서 무기를 찾았다. 쓰러진 나루 루라가 깃들어 이제 아제로스의 선을 위해 어둠 힘을 휘두른다. 언제나 광기에 빠질 직전, 끊임없는 속삭임이 마음을 습격하는 가운데 알레리아는 이제 잘아타스 사냥에 마음을 정했다. 그 추적을 이어가고자 옛 친구 카드가와 함께 달라란에 합류했다.]]
IMAGOdb.npcs.CAT_DALARAN_SURVIVORS["alleria_windrunner_tww"].zones = {"달라란", "돈 섬", "도르노갈", "할로우폴", "아즈카헤트", "언더마인", "카레쉬"}
-- 출처 유지
IMAGOdb.npcs.CAT_DALARAN_SURVIVORS["alleria_windrunner_tww"].timeline = IMAGOdb.timelines.ALLERIA_WINDRUNNER_KO

-- ANDUIN WRYNN --
IMAGOdb.npcs.CAT_DALARAN_SURVIVORS["anduin_wrynn_tww"].name = "안두인 린"
IMAGOdb.npcs.CAT_DALARAN_SURVIVORS["anduin_wrynn_tww"].aliases = {"Anduin", "안두인"}
IMAGOdb.npcs.CAT_DALARAN_SURVIVORS["anduin_wrynn_tww"].race = "인간"
IMAGOdb.npcs.CAT_DALARAN_SURVIVORS["anduin_wrynn_tww"].lore = [[지배. 그 단어만으로 안두인은 아직도 온몸이 떨린다. 한때 빛의 사제이자 평화를 주창한 이상주의 어린 왕이었다.

그것은 나락의 지옥에 끌려가 실바나스 윈드러너와 간수 조바알의 포로가 되기 전이었다. 지배당해 동맹과 친구를 공격하고 해치도록 강요당했고, 지키고자 싸운 세상을 파멸시키려는 조바알의 계획에 손을 빌렸다. 동료와 불굴의 의지 덕에 마침내 풀려났으나 자신의 생각과 간수의 명령을 더는 구분하지 못했다. 저지른 일에 죄책감에 시달린 안두인은 스톰윈드 왕국을 투랄리온 손에 맡기고 세상에서 사라졌다.

5년이 흘렀으나 시간이 안두인을 치유하지 못했다. 더는 빛을 부르지 못하고 여전히 무너지고 낙담한 채 광휘의 노래를 듣기 시작했다. 언제나처럼 옳은 일을 하고 도움이 필요한 이를 돕고자 하리라. 그러나 자신을 믿지 못하는데 어떻게 남에게 믿음을 불어넣겠는가?]]
IMAGOdb.npcs.CAT_DALARAN_SURVIVORS["anduin_wrynn_tww"].zones = {"실리더스", "달라란", "도르노갈", "돈 섬", "할로우폴", "아즈카헤트"}
-- 출처 유지
IMAGOdb.npcs.CAT_DALARAN_SURVIVORS["anduin_wrynn_tww"].timeline = IMAGOdb.timelines.ANDUIN_WRYNN_KO

-- MAGNI BRONZEBEARD --
IMAGOdb.npcs.CAT_DALARAN_SURVIVORS["magni_bronzebeard_tww"].name = "마그니 브론즈비어드"
IMAGOdb.npcs.CAT_DALARAN_SURVIVORS["magni_bronzebeard_tww"].aliases = {"The Speaker of Azeroth", "Magni", "마그니"}
IMAGOdb.npcs.CAT_DALARAN_SURVIVORS["magni_bronzebeard_tww"].race = "드워프"
IMAGOdb.npcs.CAT_DALARAN_SURVIVORS["magni_bronzebeard_tww"].lore = [[불타는 군단의 3차 침공 이래 아제로스는 대변자 마그니 브론즈비어드를 통해 백성과 소통했다. 살아 있는 수정으로 변한 아이언포지 전 왕은 새로운 위협이 닥칠 때마다 부름에 응해 아제로스 용사와 함께 어떤 수단으로든 세상을 지켰다.

그런데 정작 마그니가 광휘의 노래를 듣지 못한다. 환영이 아제로스에게서 온다는데 대변자는 한동안 침묵만 들었다.

늙은 드워프는 대변자로서도 그 전 왕으로서도 언제나 임무를 진지하게 여겼다. 너무 진지해 가족을 소홀히 할 정도였다. 유일한 딸 모이라와 겨우 말을 트는 사이지만 이제 손자 다그란 2세가 마땅히 누릴 할아버지가 되어 속죄하고자 한다. 무엇보다 마그니는 두 번째 기회를 간절히 바란다.]]
IMAGOdb.npcs.CAT_DALARAN_SURVIVORS["magni_bronzebeard_tww"].zones = {"타나리스", "달라란", "도르노갈", "돈 섬", "울리는 심연"}
-- 출처 유지
IMAGOdb.npcs.CAT_DALARAN_SURVIVORS["magni_bronzebeard_tww"].timeline = IMAGOdb.timelines.MAGNI_BRONZEBEARD_KO

-- === CAT_KHAZ_ALGAR_NATIVES ===

-- === CAT_HALLOWFALL_ARATHI ===

-- FAERIN LOTHAR --
IMAGOdb.npcs.CAT_HALLOWFALL_ARATHI["faerin_lothar_tww"].name = "파에린 로서"
IMAGOdb.npcs.CAT_HALLOWFALL_ARATHI["faerin_lothar_tww"].aliases = {"Faerin", "파에린"}
IMAGOdb.npcs.CAT_HALLOWFALL_ARATHI["faerin_lothar_tww"].race = "아라시"
IMAGOdb.npcs.CAT_HALLOWFALL_ARATHI["faerin_lothar_tww"].lore = [[할로우폴 아라시는 외지인을 경계하는 편으로 먼 고향의 엄격한 전통을 물려받은 듯하다. 등불지기(아라시 성기사) 동료보다 훨씬 어린 파에린 로서는 세상을 훨씬 열린 마음으로 본다. 어릴 적 반항기 많은 아이로서 할로우폴행 비행선에 몰래 탔다가 지하에서 인생 대부분을 보냈다.

도착의 추락에 눈과 팔을 잃었으나 정신까지 잃지 않았다. 신성한 불꽃에 대한 파에린의 믿음은 여전히 밝게 타오르고, 할로우폴과 아즈카헤트의 어둠에 흔들림 없는 낙관으로 맞선다.]]
IMAGOdb.npcs.CAT_HALLOWFALL_ARATHI["faerin_lothar_tww"].zones = {"할로우폴", "아즈카헤트", "도르노갈", "아라시 고원"}
-- 출처 유지
IMAGOdb.npcs.CAT_HALLOWFALL_ARATHI["faerin_lothar_tww"].timeline = IMAGOdb.timelines.FAERIN_LOTHAR_KO

-- === CAT_SEVERED_THREADS ===

-- === CAT_XALATATHS_FORCES ===

-- XAL'ATATH --
IMAGOdb.npcs.CAT_XALATATHS_FORCES["xal_atath_tww"].name = "잘아타스"
IMAGOdb.npcs.CAT_XALATATHS_FORCES["xal_atath_tww"].aliases = {"The Harbinger", "잘아타스", "전령"}
IMAGOdb.npcs.CAT_XALATATHS_FORCES["xal_atath_tww"].race = "알 수 없음"
IMAGOdb.npcs.CAT_XALATATHS_FORCES["xal_atath_tww"].lore = [[그녀의 미소는 위협이고 속삭임은 경고이며 약속은 거짓말이다. 공허의 전령은 수천 년 아제로스 백성을 조종했고, 동맹을 큰 힘에 올리기만큼 쉽게 파멸에 버렸다.

가장 오래 그녀는 검은 제국의 검에 갇혀 있었다. 그녀에 맞선 뒤 고대 신이 내린 벌이다. 아제로스 용사의 도움으로 이제 다시 자유다.

광휘의 노래가 아제로스 곳곳에 울리자 잘아타스가 검은 심장을 들고 가장 먼저 움직였다. 텔로그러스 균열을 공격했고 자신을 쫓는 사냥꾼 알레리아 윈드러너에게 관심을 보였다.

잘아타스의 큰 계획이 궁극에 무엇인지 여전히 수수께끼고 기원조차 모호함에 싸였다. 그러나 그녀가 움직일 때마다 두 진실이 더욱 분명해졌다. 잘아타스는 우리 편이 아니며 언제나 한 발 앞서 있다.]]
IMAGOdb.npcs.CAT_XALATATHS_FORCES["xal_atath_tww"].zones = {"아즈카헤트", "카레쉬", "타자베쉬", "마나용광로 오메가"}
-- 출처 유지
IMAGOdb.npcs.CAT_XALATATHS_FORCES["xal_atath_tww"].timeline = IMAGOdb.timelines.XAL_ATATH_KO

-- === CAT_AZEROTHS_ARMIES ===

-- === CAT_UNDERMINE_KARTELS ===

-- === CAT_KARESH_REMNANTS ===

-- === CAT_SHANDORAH_OUTPOST ===

-- === CAT_NEUTRAL ===

-- ORWEYNA --
IMAGOdb.npcs.CAT_NEUTRAL["orweyna_tww"].name = "오르웨이나"
IMAGOdb.npcs.CAT_NEUTRAL["orweyna_tww"].aliases = {"오르웨이나"}
IMAGOdb.npcs.CAT_NEUTRAL["orweyna_tww"].race = "하라니르"
IMAGOdb.npcs.CAT_NEUTRAL["orweyna_tww"].lore = [[아제로스에서 본 적 없는 종족의 신비로운 여인. 스스로 오르웨이나라 칭하고 파에린, 알레리아와 용사를 도와 아즈카헤트 네루비안에 맞서며 자연 마법에 놀라운 친화를 보였다.

마음이 착하고 영웅의 결의에 이끌리는 듯하나 출신과 속셈을 비밀에 싸고 있다. 그러나 한 가지는 확실하다. 이 싸움에서 그녀는 공허 편이 아니다.]]
IMAGOdb.npcs.CAT_NEUTRAL["orweyna_tww"].zones = {"아즈카헤트", "울리는 심연", "언더마인", "도르노갈"}
-- 출처 유지
IMAGOdb.npcs.CAT_NEUTRAL["orweyna_tww"].timeline = IMAGOdb.timelines.ORWEYNA_KO
