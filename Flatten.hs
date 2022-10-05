-- https://dodona.ugent.be/nl/courses/1577/series/17313/activities/1857815406

flatten :: [[a]] -> [a]
flatten [] = []
flatten (x:xs) = x ++ flatten xs
