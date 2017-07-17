-- Write a recursive function that takes a value and a list of values and 
-- returns True if the value is in the list and False otherwise.

isInList :: (Eq a) => [a] -> a -> Bool
isInList [] _ = False
isInList (x:xs) n = if x == n then True else isInList xs n