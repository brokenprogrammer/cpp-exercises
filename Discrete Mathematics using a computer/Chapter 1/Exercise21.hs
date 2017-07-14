-- Using a list comprehension, write a function that takes a list of Int values and an
-- Int value n and returns those elements in the list that are greater than n.

greaterThan :: [Integer] -> Integer -> [Integer]
greaterThan xs n = [x | x <- xs, x > n]

greaterThan' :: Ord a => [a] -> a -> [a]
greaterThan' xs n = filter (> n) xs
