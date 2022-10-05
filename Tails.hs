-- https://dodona.ugent.be/nl/courses/1577/series/17313/activities/1740321462

tails :: [a] -> [[a]]
tails [] = [[]]
tails l = l : tails (tail l)
