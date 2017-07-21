--  Write a recursive function that determines whether a list is sorted.
isSorted :: (Ord a) => [a] -> Bool
isSorted [] = True
isSorted (x:xs) = (x `smallerThan` xs) && isSorted xs
    where x `smallerThan` [] = True
        x `smallerThan` (y:ys)
            | x <= y = x `smallerThan` ys
            | otherwise = False