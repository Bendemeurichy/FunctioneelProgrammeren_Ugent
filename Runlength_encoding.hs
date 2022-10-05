-- https://dodona.ugent.be/nl/courses/1577/series/17313/activities/873873505

encode ::Eq a => [a] -> [(Int, a)]
encode l = [(length x, head x)| x <- pack l]

decode :: [(Int, a)] -> [a]
decode l= flatten [[x |_ <- [1..n]]| (n,x) <- l]


flatten :: [[a]] -> [a]
flatten [] = []
flatten (x : xs) = x ++ flatten xs

pack :: Eq a => [a] -> [[a]]
pack [x] = [[x]]
pack (x : xs) =
  if x == head (head (pack xs))
    then (x : head (pack xs)) : tail (pack xs)
    else [x] : pack xs