-- ============================================================
-- IMAGO — locales/koKR/locale.lua
-- 한국어 현지화 (UI 문구 — 전승 본문은 각 data 파일에서 단계적으로 번역)
-- 고유명사는 게임 내 한글 클라이언트 공식 표기를 우선한다.
-- ============================================================

IMAGO = IMAGO or {}
IMAGO.LocaleData = IMAGO.LocaleData or {}

local L = {}
IMAGO.LocaleData.koKR = L

-- UI 텍스트
L["WINDOW_TITLE"]                   = "잊히지 않은 자들의 연대기"
L["UNDISCOVERED"]                   = "미발견"
L["UNDISCOVERED_LORE"]              = "이 인물을 세상에서 찾아내어 그 운명을 밝혀내세요."
L["ADDON_ENABLED"]                  = "IMAGO를 사용합니다."
L["ADDON_DISABLED"]                 = "IMAGO를 사용하지 않습니다."
L["RESET_DONE"]                     = "발견한 모든 기록을 초기화했습니다."
L["SETTINGS_TITLE"]                 = "IMAGO - 설정"
L["SETTINGS_DESC"]                  = "세상에는 이야기가 깃들어 있습니다. IMAGO가 그 이야기를 보존합니다."
L["SETTINGS_SEC_GENERAL"]           = "일반"
L["SETTINGS_SEC_DISCOVERY_CARD"]    = "발견 카드 (NPC/지역 팝업)"
L["SETTINGS_SEC_IDLE_FLASHCARDS"]   = "유휴 플래시카드 (짤막 이야기)"
L["SETTINGS_SEC_MOTD"]              = "IMAGO 접속 메시지 (채팅)"
L["SETTINGS_SEC_UI"]                = "UI"
L["SETTINGS_SEC_LANGUAGE"]          = "언어"
L["OPT_LANGUAGE"]                   = "애드온 언어"
L["OPT_LANGUAGE_NOTE"]              = "변경 사항은 /reload 후에 적용됩니다."
L["OPT_ENABLE"]                     = "IMAGO 사용"
L["OPT_ENABLE_IDLE_FLASHCARDS"]     = "유휴 플래시카드 사용"
L["OPT_ENABLE_MOTD"]                = "IMAGO 접속 메시지 사용 (채팅에 \"알고 계셨나요?\")"
L["OPT_ONCE_ONLY_NPC"]              = "NPC 이야기는 처음 발견할 때만 표시"
L["OPT_ONCE_ONLY_ZONE"]             = "지역 이야기는 처음 발견할 때만 표시"
L["OPT_RESET_BTN"]                  = "기록 초기화"
L["OPT_SCALE"]                      = "창 크기 (확대/축소)"
L["OPT_MAIN_LORE_NO_TIMER"]         = "발견 카드를 계속 열어 둠 (타이머 없음)"
L["OPT_SNIPPET_NO_TIMER"]           = "유휴 플래시카드를 계속 열어 둠 (타이머 없음)"
L["OPT_OPAQUE_UI"]                  = "창과 팝업을 완전히 불투명하게"
L["OPT_SHOW_MINIMAP"]               = "미니맵 아이콘 표시"
L["CONTEXT_LORE_BTN"]               = "IMAGO 이야기"
L["CONTEXT_LORE_NONE"]              = "|cFF888888IMAGO:|r 이 NPC에 대한 기록이 없습니다."
L["CONTEXT_LORE_COMBAT"]            = "|cFF888888IMAGO:|r 전투 중에는 이야기를 볼 수 없습니다."
L["CONTEXT_LORE_CHRONICLE_FAIL"]    = "|cFF888888IMAGO:|r 연대기가 이 기록으로 이동하지 못했습니다."
L["DISPLAY_PROGRESS_NPC"]           = "진행도: %d%% (%d/%d NPC)"
L["DISPLAY_PROGRESS_ZONE"]          = "진행도: %d%% (%d/%d 지역)"
L["CMD_HELP_OPEN"]                  = "/imago open   — 연대기를 엽니다"
L["CMD_HELP_UNLOCK"]                = "/imago unlock — 배치 모드"
L["CMD_HELP_TEST"]                  = "/imago test   — 표시 테스트"
L["CMD_HELP_RESET"]                 = "/imago reset  — 발견한 기록 초기화"
L["CMD_HELP_OPEN_DESC"]             = "연대기를 열거나 닫습니다"
L["CMD_HELP_SETTINGS_DESC"]         = "애드온 설정을 엽니다"
L["CMD_HELP_HELP_DESC"]             = "이 도움말을 표시합니다"

-- 카테고리 (한밤 진영)
L["CAT_QUELTHALAS"]                 = "쿠엘탈라스의 수호자"
L["CAT_LIGHT"]                      = "빛의 선봉대"
L["CAT_AMANI"]                      = "아마니 부족"
L["CAT_HARATI"]                     = "하라티"
L["CAT_VOID"]                       = "공허의 침공"
L["CAT_EBON_BLADE"]                 = "검은칼 기사단"
L["CAT_NEUTRAL"]                    = "독립적이고 신비로운 자들"
L["CAT_ARCANTINA"]                  = "아칸티나"

-- 카테고리 (내부 전쟁 진영)
L["CAT_DALARAN_SURVIVORS"]           = "달라란의 생존자"
L["CAT_KHAZ_ALGAR_NATIVES"]          = "카즈 알가르의 토착민"
L["CAT_HALLOWFALL_ARATHI"]           = "할로우폴의 아라시"
L["CAT_SEVERED_THREADS"]             = "끊어진 실"
L["CAT_XALATATHS_FORCES"]            = "살라타스의 세력"
L["CAT_AZEROTHS_ARMIES"]             = "아제로스의 군대"
L["CAT_UNDERMINE_KARTELS"]           = "언더마인 카르텔"
-- (원본 base의 오타 키 CAT_CAT_KARESH_REMNANTS와 일치시킴)
L["CAT_CAT_KARESH_REMNANTS"]         = "카레쉬의 잔재"
L["CAT_SHANDORAH_OUTPOST"]           = "샨도라 전초기지"

-- ============================================================
-- TAB 2: 지역 (대시보드 & 상세)
-- ============================================================
L["FOOTER_ZONES_PROGRESS"]          = "발견한 지역: %d / %d (%d%%)"
L["STARTPAGE_ZONES_RANK"]           = "탐험 현황"
L["STARTPAGE_ZONES_NEXT"]           = "앞으로의 발견:"
L["ZONE_UNKNOWN_NAME"]              = "알 수 없는 지역"
L["ZONE_UNEXPLORED_HEADER"]         = "미탐험 지역"
L["ZONE_UNEXPLORED_DESC"]           = "이 지역의 지도는 아직 완성되지 않았습니다.\n직접 찾아가 그 비밀을 밝혀내세요."
L["ZONE_POI_HEADER"]                = "주요 명소"
L["ZONE_UNDISCOVERED"]              = "미발견"
L["ZONES_OVERVIEW"]                 = "지역 개요"

-- ============================================================
-- TAB 3: 인스턴스 (추후 공개)
-- ============================================================
L["COMING_SOON_INSTANCES_TITLE"]    = "숨겨진 인스턴스"
L["COMING_SOON_INSTANCES_DESC"]     = "던전, 공격대, 그리고 구렁.\n가장 강력한 적들의 메아리가 발견되기를 기다립니다.\n\n|cFF9370DB[ 개발 중 ]|r"

-- 스캐너 & 툴팁
L["TOOLTIP_KNOWN"]                  = "IMAGO: |cFFFFD700연대기에 기록됨|r"
L["TOOLTIP_UNKNOWN"]                = "IMAGO: |cFF888888운명 숨겨짐 (대상으로 지정하여 발견)|r"
L["CHAT_DISCOVERY"]                 = "|cFF9370DB[IMAGO]|r 연대기가 떨립니다... 새로운 메아리가 새겨졌습니다: |cFFFFD700%s|r"
L["QUEST_DISCOVERY"]                = "|cFF9370DB[IMAGO]|r 퀘스트 완료 후 연대기가 떨립니다: |cFFFFD700%s|r... 새로운 메아리가 새겨졌습니다: |cFFFFD700%s|r"
L["CHAT_KNOWN"]                     = "|cFF888888[IMAGO]|r 보관 기록을 불러왔습니다: |cFFCCCCCC%s|r"

-- 검증
L["VAL_START"]                      = "|cFFFFD700[IMAGO]|r 데이터베이스 검증을 시작합니다..."
L["VAL_ERR_ID"]                     = "|cFFFF0000오류:|r %s에 displayID와 ids 배열이 모두 없습니다!"
L["VAL_WARN_LORE"]                  = "|cFFFF8C00경고:|r %s에 현재 언어의 이야기가 없습니다!"
L["VAL_DONE"]                       = "검증 완료. NPC %d명 확인. 치명적 오류 %d건, 경고 %d건."

L["CINEMATIC_CONTINUE"]             = "< 클릭하여 그 운명을 밝혀내세요 >"
L["FATES_CHOOSE_EXP"]               = "확장팩 선택"
L["COMING_SOON_SHORT"]              = "추후 공개"
L["FILTER_ALL"]                     = "모든 메아리"
L["FILTER_HIST"]                    = "최근 발견"
L["FILTER_FAV"]                     = "즐겨찾기"
L["HINT_IDENTITY_HIDDEN"]           = "정체 숨겨짐"
L["DASHBOARD_FATES_UNCOVERED"]      = "밝혀낸 운명"
L["DASHBOARD_TITLE"]                = "연대기 개요"
L["LOGIN_DID_YOU_KNOW"]             = "알고 계셨나요?"
L["FUN_FACT"]                       = "재미있는 사실"
L["DID_YOU_KNOW"]                   = "알고 계셨나요?"
L["HISTORICAL_FACT"]                = "역사적 사실"
L["BEHIND_THE_SCENES"]              = "비하인드 스토리"
L["NEXT"]                           = "다음"
L["LOGIN_EMPTY_CHRONICLE"]          = "연대기가 아직 비어 있습니다..."
L["LOGIN_ALL_UNCOVERED"]            = "모든 비밀이 밝혀졌습니다!"
L["FOOTER_PROGRESS"]                = "밝혀낸 운명: %d / %d (%d%%)"
L["LORE_AUTHOR"]                    = "기록: %s"
L["TAB_FATES"]                      = "운명"
L["TAB_ZONES"]                      = "지역"
L["TAB_INSTANCES"]                  = "인스턴스"
L["STARTPAGE_RANK"]                 = "연대기에서의 당신의 위상:"
L["STARTPAGE_COMPLETED"]            = "달성한 위업:"
L["STARTPAGE_NEXT"]                 = "숨겨진 위업:"
L["WORD_AT"]                        = "달성"
L["STARTPAGE_NO_MILESTONES"]        = "|cFF888888아직 달성한 위업이 없습니다.|r"
L["STARTPAGE_MAX_REACHED"]          = "|cFF00FF00최고 등급 달성!|r"
L["TAG_NEW"]                        = "[ 신규 ]"
L["HINT_SCOUTS"]                    = "각 진영 정찰병이 다음 지역에서 최근 목격담을 보고했습니다:\n\n|cFFFFD700%s|r"
L["HINT_UNKNOWN_LOC"]               = "현재 보관 기록에 행방이 남아 있지 않습니다. 세상에서 단서를 찾아보세요."
L["TAB_DETAIL_LORE"]                = "이야기"
L["TAB_DETAIL_TIMELINE"]            = "연표"
L["CMD_UNLOCKALL_SUCCESS"]          = "성공: 과거의 메아리 %d개가 모두 연대기에 새겨졌습니다!"

-- 미니맵 툴팁
L["MINIMAP_TOOLTIP_TITLE"]          = "IMAGO"
L["MINIMAP_TOOLTIP_LEFTCLICK"]      = "왼쪽 클릭: 연대기 열기"
L["MINIMAP_TOOLTIP_RIGHTCLICK"]     = "오른쪽 클릭: 유휴 플래시카드"

-- 전투 & 접촉 해제 설정
L["OPT_CLOSE_ON_COMBAT"]            = "전투 시작 시 발견 카드 닫기"
L["OPT_ENABLE_BREAK_CONTACT"]       = "NPC에게서 멀어지면 발견 카드 닫기"
L["OPT_BREAK_CONTACT_DISTANCE"]     = "거리 기준 (야드)"

-- 크레딧
L["TAB_CREDITS"]                    = "크레딧"
L["CREDITS_TITLE"]                  = "기여자"
L["CREDITS_DESC"]                   = "지식과 열정으로 이 애드온을 풍성하게 만들어 주신 IMAGO Discord 커뮤니티에 깊이 감사드립니다."
L["CREDITS_TOP_HINT"]               = "|cFFFFD700강조된 이름|r은 데이터베이스에 특히 많은 기여를 해주신 분들입니다."
L["CREDITS_ROLE_SCRIBE"]            = "전승 기록가"
L["CREDITS_ROLE_ARCHIVIST"]         = "보관가"
L["CREDITS_ROLE_MINER"]             = "데이터 수집가"
L["CREDITS_ROLE_TRANSLATOR"]        = "번역가"
L["CREDITS_ROLE_TESTER"]            = "테스터"

-- 한밤 스포일러 보호
L["SPOILER_MIDNIGHT_TITLE"]         = "한밤 사건"
L["SPOILER_MIDNIGHT_HINT"]          = "클릭하여 표시"
L["SPOILER_TWW_TITLE"]              = "내부 전쟁 사건"
L["SPOILER_TWW_HINT"]               = "클릭하여 표시"
L["SPOILER_TOOLTIP_TITLE"]          = "스포일러"
L["SPOILER_TOOLTIP_DESC"]           = "확장팩 \"한밤\""
L["SPOILER_TOOLTIP_DESC_TWW"]       = "확장팩 \"내부 전쟁\""

-- 모드 전환
L["MODE_LABEL"]                     = "모드"
L["MODE_EXPLORER"]                  = "탐험가 모드"
L["MODE_ENCYCLOPEDIA"]              = "백과사전 모드"
L["MODE_MANUAL_UNLOCK"]             = "직접 해제"

-- 지도 전환 --
L["ACTION_OPEN_MAP"]                = "세계 지도 열기"
L["ACTION_OPEN_MAP_TIP"]            = "이 지역을 세계 지도에서 열기"
L["ACTION_OPEN_EJ"]                 = "모험 안내서에서 열기"
L["ACTION_OPEN_IMAGO"]              = "IMAGO 연대기에서 열기"

-- 확인 대화상자
L["CONFIRM_YES"]                    = "예"
L["CONFIRM_NO"]                     = "아니요"
L["CONFIRM_ENC_TITLE"]              = "백과사전 모드 사용"
L["CONFIRM_ENC_DESC"]               = "모든 내용이 표시되지만\n진행도에는 포함되지 않습니다.\n\n계속하시겠습니까?"
L["CONFIRM_UNLOCK_TITLE"]           = "내용 미리보기 해제"
L["CONFIRM_UNLOCK_DESC"]            = "이 기록을 읽을 수 있게 되지만 진행도에는 포함되지 않습니다.\n\n해제하시겠습니까?"
L["BACK"]                           = "뒤로"

-- ============================================================
-- TAB 5: 시대 (확장팩 연대기)
-- ============================================================
L["TAB_ERAS"]                 = "시대"
L["ERAS_DASHBOARD_TITLE"]     = "아제로스의 시대"
L["ERAS_PROGRESS"]            = "기록된 시대: %d / %d"
L["ERAS_COMING_SOON"]         = "추후 공개"
L["ERAS_TAB_OVERVIEW"]        = "개요"
L["ERAS_TAB_STORY"]           = "이야기"
L["ERAS_TAB_PATCHES"]         = "패치"
L["ERAS_TAB_CHARACTERS"]      = "주요 인물"
L["ERAS_EXPANSION"]           = "확장팩"
L["ERAS_SIDEBAR_HEADING"]     = "시대 개요"
L["ERAS_GROUP_MODERN"]        = "현대"
L["ERAS_GROUP_CLASSIC"]       = "클래식"
L["ERAS_STAT_REGION"]         = "주요 지역"
L["ERAS_STAT_ANTAGONIST"]     = "주요 적대자"
L["ERAS_STAT_CONFLICT"]       = "중심 갈등"
L["ERAS_FF_TITLE"]            = "핵심 요약"
L["ERAS_FF_COSMIC"]           = "우주의 힘"
L["ERAS_FF_CASUALTIES"]       = "운명과 희생"
L["ERAS_FF_WORLDSCAR"]        = "세계의 상처 / 유산"
L["ERAS_SELECT_ZONE"]         = "지역 선택"
L["ERAS_KEY_FIGURES"]         = "주요 인물:"
L["ERAS_NEW_ZONES"]           = "신규 지역"
L["ERAS_ZONES"]               = "지역"
L["ERAS_FIGURES_TITLE"]       = "이 시대의 주요 인물"
L["ERAS_CHARS_INTRO"]         = "카드를 클릭하면 운명 탭이 열립니다."
L["ERAS_BIG_QUESTION"]        = "중심 질문"
L["ERAS_BACK"]                = "← 시대로 돌아가기"
L["ERAS_OPEN_FATE"]           = "운명에서 열기"
L["ERAS_NO_DATA"]             = "이 시대에 대한 기록이 아직 없습니다."
L["ERAS_LORE_HEADLINE"]       = "전체 이야기를 들어보시겠어요?"
-- 시대 진행도 시스템
L["ERAS_RANK_SEEKER"]          = "탐구자"
L["ERAS_RANK_APPRENTICE"]      = "수습생"
L["ERAS_RANK_CHRONICLER"]      = "연대기 작가"
L["ERAS_RANK_ARCHIVIST"]       = "보관가"
L["ERAS_RANK_LOREKEEPER"]      = "전승 수호자"
L["ERAS_RANK_MASTER"]          = "연대기의 대가"
L["ERAS_LORE_STATUS"]          = "전승 상태"
L["ERAS_REACHED_RANKS"]        = "달성 등급:"
L["ERAS_NEXT_RANKS"]           = "앞으로의 발견:"
L["ERAS_LOCKED_TIP"]           = "이 시대를 해제하려면 핵심 인물을 만나세요."
L["ERAS_DISC_BODY"]            = "재밌는 이야기가 있어. 들어볼래?"
L["ERAS_DISC_ACCEPT"]          = "더 들려줘"
L["ERAS_DISC_DECLINE"]         = "다음에"
L["ERAS_MODE_ENC_CONFIRM"]     = "모든 시대가 표시되지만 진행도에는 포함되지 않습니다.\n\n계속하시겠습니까?"
L["ERAS_LOCKED_TITLE"]          = "아직 해제되지 않음"
L["ERAS_LOCKED_BODY"]           = "탐험가 모드에서는 이 시대가 잠겨 있습니다.\n이 시대의 핵심 인물을 찾아 이야기를 들어보세요."
L["ERAS_LOCKED_MODEHINT"]       = "팁: 모드 버튼으로 백과사전 모드로 전환하면 모든 시대를 바로 볼 수 있습니다."
L["ERAS_WIP_TITLE"]             = "개발 중"
L["ERAS_WIP_BODY"]              = "이 시대의 내용은 아직 개발 중입니다.\n조금 후에 다시 확인해 주세요!"
L["ERAS_ORIGINAL_GAME"]         = "오리지널"

-- NPC 카테고리 (한밤 / 내부 전쟁)
L["CAT_QUELTHALAS"]             = "쿠엘탈라스의 수호자"
L["CAT_LIGHT"]                  = "빛의 용사"
L["CAT_AMANI"]                  = "아마니"
L["CAT_HARATI"]                 = "하라티"
L["CAT_EBON_BLADE"]             = "검은칼 기사단"
L["CAT_NEUTRAL"]                = "중립 세력"
L["CAT_ARCANTINA"]              = "아칸티나"
L["CAT_VOIDHUNTERS"]            = "공허 사냥꾼"
L["CAT_HARBINGER"]              = "공허의 전령"
L["CAT_KIRIN_TOR"]              = "키린 토"
L["CAT_EARTHEN"]                = "토석인"
L["CAT_ARATHI"]                 = "아라시의 후예"
L["CAT_HARANIR"]                = "하라니르"

-- 확장팩 격자 탐색
L["FATES_BACK_EXPANSIONS"]      = "< 확장팩"
