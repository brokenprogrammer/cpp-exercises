-- Write removeDuplicates, a function that takes a 
-- list and removes all of its duplicate elements. 

removeDuplicates :: (Eq a) => [a] -> [a]
removeDuplicates = foldr rem []
    where rem x xs = if x `elem` xs then xs else x:xs 