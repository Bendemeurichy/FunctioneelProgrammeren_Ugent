-- https://dodona.ugent.be/nl/courses/1577/series/17313/activities/588433134


isPriemgetal :: Int -> Bool

isPriemgetal x = length [y | y <- [1..x], mod x y == 0] == 2

allePriemgetallen :: [Int]
allePriemgetallen = [x | x <- [1..], isPriemgetal x]
geefPriemgetallen :: Int -> [Int]
geefPriemgetallen x = take x allePriemgetallen

