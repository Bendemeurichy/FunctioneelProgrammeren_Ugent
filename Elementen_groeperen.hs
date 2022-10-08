-- https://dodona.ugent.be/nl/courses/1577/series/17313/activities/935151198

--pack (x:xs) = let (y : ys) : yss = pack xs
--  in if x == y then (x:y:ys) : yss
--  else [x] : (y:ys) : yss

pack :: Eq a => [a] -> [[a]]
pack xs = foldr join [] xs 
    where 
        join x [] = [x] : []
        join x ([]:yss) = [x] : yss
        join x ((y:ys):yss) | x == y = (x:y:ys) : yss 
            | otherwise = [x] : (y:ys) : yss