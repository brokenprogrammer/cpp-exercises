-- Write a function merge :: Ord a => [a] -> [a] -> [a] which takes two 
-- sorted lists and returns a sorted list containing the elements of each.

merge :: Ord a => [a] -> [a] -> [a]
merge [] ys = ys
merge xs [] = xs
merge a@(x:xs) b@(y:ys) = if x < y then x : (merge xs b) else y : (merge a ys)