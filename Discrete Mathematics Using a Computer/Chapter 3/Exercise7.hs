-- Write a function that takes a value e and a list of values xs 
-- and removes all occurrences of e from xs.

removeOccurances :: Eq a => [a] -> a -> [a]
removeOccurances [] _ = []
removeOccurances (x:xs) n = if x == n then removeOccurances xs n else x : removeOccurances xs n

removeOccurancesG :: Eq a => [a] -> a -> [a]
removeOccurancesG [] _ = []
removeOccurancesG (x:xs) n
    |  x == n =  removeOccurances xs n
    | otherwise = x : removeOccurances xs n