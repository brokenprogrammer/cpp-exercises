-- Write a function that uses foldr to count the number
-- of times a letter occurs in a String.

-- Using the haskell lambda expression which works like an
-- anonymous function: (\x -> x + 1) for example takes an argument x
-- and adds to it.

-- Here our anonumous function takes a value a which is the current Char
-- from foldr and b which is the counter.
occurr :: Char -> String -> Int
occurr c xs = foldr (\ a b -> (if a == c then 1 else 0) + b) 0 xs
