-- https://dodona.ugent.be/nl/courses/1577/series/17313/activities/935151198

pack :: Eq a => [a] -> [[a]]
pack [x] = [[x]]
pack (x:xs) = if x == head (head (pack xs)) 
    then (x : head (pack xs)) : tail (pack xs) 
    else [x] : pack xs