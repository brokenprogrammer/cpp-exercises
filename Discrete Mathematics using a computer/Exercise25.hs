-- Write a function using foldr that takes a list and removes each instance
-- of a given letter.

-- Adds every letter a to str if a is not the specified Char to not include.
remoccurr :: Char -> String -> String
remoccurr c xs = foldr (\ a str -> (if a == c then str else a:str)) [] xs
