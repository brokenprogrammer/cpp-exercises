-- Write a function that takes two lists, and returns True 
-- if all the elements of the ﬁrst list also occur in the other. 
-- The function should have type isSubset :: Eq a => [a] -> [a] -> Bool. 
-- (This is one way to determine whether one set is a subset of another; see Chapter 8.)

isSubset :: Eq a => [a] -> [a] -> Bool
isSubset [] _ = True
isSubset _ [] = False
isSubset (x:xs) ys
    | x `elem` ys = isSubset xs ys
    | otherwise = False