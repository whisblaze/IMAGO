-- ============================================================
-- IMAGO — locales/koKR/chronicle.lua
-- 연대기 등급명 한국어 현지화
-- ============================================================

if GetLocale() ~= "koKR" then return end

IMAGO.Chronicle = IMAGO.Chronicle or {}

IMAGO.Chronicle.ranks = {
    {perc = 0,   title = "조용한 관찰자"},
    {perc = 10,  title = "파편 수집가"},
    {perc = 25,  title = "메아리의 기록자"},
    {perc = 40,  title = "잊히지 않은 자들의 연대기 작가"},
    {perc = 60,  title = "유산의 수호자"},
    {perc = 80,  title = "세계혼의 수호자"},
    {perc = 95,  title = "정전의 대보관가"},
    {perc = 100, title = "완성된 이마고"},
}

IMAGO.Chronicle.zoneRanks = {
    {perc = 0,   title = "방랑자"},
    {perc = 20,  title = "정찰병"},
    {perc = 40,  title = "지도 제작자"},
    {perc = 60,  title = "길잡이"},
    {perc = 80,  title = "탐험가"},
    {perc = 100, title = "세계 여행자"},
}
