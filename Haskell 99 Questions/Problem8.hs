-- Problem 8
-- Eliminate consecutive duplicates of list elements.
-- If a list contains repeated elements they should be replaced with a single copy
-- of the element. The order of the elements should not be changed.
--
-- Example:
-- compress "aaaabccaadeeee"
-- "abcade"

compress :: String -> String
compress [] = []
compress [x] = [x]
compress (x:y:xs)
    | x == y = compress (y:xs)
    | otherwise =  x : compress (y:xs)

compress' :: Eq a => [a] -> [a]
compress' xs = foldr (\acc x -> if acc == (head x) then x else acc:x) [last xs] xs
