-- https://dodona.ugent.be/nl/courses/1577/series/17313/activities/1902755728

slice :: [a] -> Int -> Int -> [a]
slice l i k  = take (k - i) (drop i l)

