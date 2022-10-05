-- https://dodona.ugent.be/nl/courses/1577/series/17313/activities/2132236721

berekenPi :: Integer -> Double
berekenPi i  = 4 * sum [((-1)^x)/((2 * fromInteger x) +1)|x <- [0..i]]

