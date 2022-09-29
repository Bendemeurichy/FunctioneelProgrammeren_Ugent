-- https://dodona.ugent.be/nl/courses/1577/series/17314/activities/826452771
verwijderK k [] = []
verwijderK k l = take k l ++ drop (k+1) l