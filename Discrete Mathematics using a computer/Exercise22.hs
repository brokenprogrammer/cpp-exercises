-- Write a function
--
-- f :: [Int] -> Int -> [Int]
--
-- that takes a list of Int values and an Int and
-- returns a list of indexes at which that Int appears.

-- zip gives a tuple, here we pair the position part of
-- the tuple with the right numbers.
f :: [Int] -> Int -> [Int]
f [] _ = []
f xs n = [q | (x, q) <- zip xs [1..], x == n]
