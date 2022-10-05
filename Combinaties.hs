-- https://dodona.ugent.be/nl/courses/1577/series/17313/activities/737139836

combinations :: Int -> [a] -> [[a]]
combinations 0 l = [[]]
combinations n [] = []
combinations n (x:xs) = map (x:) (combinations (n-1) xs) ++ combinations n xs
