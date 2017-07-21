-- Write a function that takes two lists, and returns a list of 
-- values that appear in both lists. The function should have type 
-- intersection :: Eq a => [a] -> [a] -> [a]. (This is one way to implement 
-- the intersection operation on sets; see Chapter 8.)

intersection :: Eq a => [a] -> [a] -> [a]
intersection [] _ = []
intersection _ [] = []
intersection (x:xs) ys
    | x `elem` ys = x : intersection xs ys
    | otherwise = intersection xs ys