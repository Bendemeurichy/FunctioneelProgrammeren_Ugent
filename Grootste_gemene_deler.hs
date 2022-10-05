-- https://dodona.ugent.be/nl/courses/1577/series/17313/activities/1229694109

ggd :: Int -> Int -> Int
ggd a 0 = a
ggd a b = ggd b (a `mod` b)

