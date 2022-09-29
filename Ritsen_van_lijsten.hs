-- https://dodona.ugent.be/nl/courses/1577/series/17314/activities/656007670

rits []          _ = []
rits _          [] = []
rits (x:xs) (y:ys) = zip (x:xs) (y:ys)

