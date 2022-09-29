-- https://dodona.ugent.be/nl/courses/1577/series/17314/activities/655439734

roteer 0 l = l
roteer n l = roteer (n-1) (tail l ++ [head l])

