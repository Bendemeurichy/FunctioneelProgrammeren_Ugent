-- https://dodona.ugent.be/nl/courses/1577/series/17314/activities/594670418

-- Voorgedefinieerde tabellen
maandgetal = [0,3,3,6,1,4,6,2,5,0,3,5]
jaargetal  = [0,1,2,3,5,6,0,1,3,4,5,6,1,2,3,4,6,0,1,2,4,5,6,0,2,3,4,5]
eeuwgetal  = [ (15,0),(19,0),(23,0),(16,6),(20,6),(24,6),(17,4),(21,4),
               (25,4),(18,2),(22,2),(26,2)]
weekdagen  = ["zondag","maandag","dinsdag","woensdag","donderdag","vrijdag","zaterdag"]

-- Geef het maandgetal  terug uit de tabel
zoekMaandgetal :: Int -> Int
zoekMaandgetal m = maandgetal !! m
-- Geef het jaargetal terug uit de tabel
zoekJaargetal :: Int -> Int
zoekJaargetal n  = jaargetal !! n
-- Geef het eeuwgetal terug uit de tabel
zoekEeuwgetal :: Int -> Int
zoekEeuwgetal n  = eeuwgetal !! n
-- Pas op voor negatieve indexen
zoekWeekdag :: Int -> String
zoekWeekdag x    = weekdagen !! x
-- Geef terug of een jaar een schrikkeljaar is of niet
schrikkeljaar :: Int -> Bool
schrikkeljaar j  = undefined

-- Bereken de weekdag
weekdag :: Int -> Int -> Int -> Int -> String
weekdag dag maand eeuw jaar  = undefined
-- Gegeven de eeuw en het jaar geef de
-- weekdag waarop valentijn valt dat jaar.
valentijn :: Int -> Int -> String
valentijn eeuw jaar = undefined
