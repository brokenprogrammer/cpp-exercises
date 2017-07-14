-- Write a function lookup that takes a value and a list of pairs, 
-- and returns the second element of the pair that has the value as 
-- its ﬁrst element. Use a Maybe type to indicate whether the lookup succeeded. 
-- For example, 
-- lookup 5 [(1,2),(5,3)] ==> Just 3 
-- lookup 6 [(1,2),(5,3)] ==> Nothing 

find :: Eq a => a -> [(a,b)] -> Maybe b
find n [] = Nothing
find n ((a, b):xs) = if n == a then Just b else find n xs