-- https://dodona.ugent.be/nl/courses/1577/series/17314/activities/594670418

-- Voorgedefinieerde tabellen
maandgetal = [0,3,3,6,1,4,6,2,5,0,3,5]
jaargetal  = [0,1,2,3,5,6,0,1,3,4,5,6,1,2,3,4,6,0,1,2,4,5,6,0,2,3,4,5]
eeuwgetal  = [ (15,0),(19,0),(23,0),(16,6),(20,6),(24,6),(17,4),(21,4),(25,4),(18,2),(22,2),(26,2)]
weekdagen  = ["zondag","maandag","dinsdag","woensdag","donderdag","vrijdag","zaterdag"]

-- Geef het maandgetal  terug uit de tabel
zoekMaandgetal :: Int -> Int
zoekMaandgetal m = maandgetal !! m
-- Geef het jaargetal terug uit de tabel
zoekJaargetal :: Int -> Int
zoekJaargetal n  = jaargetal !! mod n (length jaargetal)
-- Geef het eeuwgetal terug uit de tabel
zoekEeuwgetal :: Int -> Int
zoekEeuwgetal n  = head [y | (x,y) <- eeuwgetal, x == n]
-- Pas op voor negatieve indexen
zoekWeekdag :: Int -> String
zoekWeekdag x    = if x>=0 then weekdagen !! x else weekdagen !! (x+7)
-- Geef terug of een jaar een schrikkeljaar is of niet
schrikkeljaar :: Int -> Bool
schrikkeljaar j  = (mod j 4 == 0 && mod j 100 /= 0) || mod j 400 == 0

-- Bereken de weekdag
weekdag :: Int -> Int -> Int -> Int -> String
weekdag dag maand eeuw jaar  = if schrikkeljaar jaar && maand <=2 then zoekWeekdag (mod (dag + zoekMaandgetal maands + zoekJaargetal jaar + zoekEeuwgetal eeuw -1 ) 7)
                                else zoekWeekdag(mod (dag + zoekMaandgetal maand + zoekJaargetal jaar + zoekEeuwgetal eeuw ) 7)
-- Gegeven de eeuw en het jaar geef de
-- weekdag waarop valentijn valt dat jaar.
valentijn = weekdag 14 2
