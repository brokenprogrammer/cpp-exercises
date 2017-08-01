-- We have the eager evaluator Beaver and the lazy evaluator susan
-- how many times would Beaver evaluate f in computing head (map f xs) when
-- xs is a list of length n? How many times would susan?
--
-- Answer:
--  Beaver would evaluate f n times and only one for the lazy evaluation.
--  
-- Complete the definition of the function first.

first :: (a -> Bool) -> [a] -> a
first p xs 
    | null xs = error "Empty List"
    | p x = x
    | otherwise = first p (tail xs)
    where x = head xs