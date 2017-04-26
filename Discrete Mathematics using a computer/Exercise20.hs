-- Write a list comprehension that takes a list of Maybe values and returns a list of
-- the Just constructor arguments. For example,
-- [Just 3, Nothing, Just 4] => [3,4]

justList :: [Maybe a] -> [a]
justList [] = []
justList (Nothing:xs) = justList xs
justList (Just x:xs) = x : justList xs

-- Alternative method using filter.
justList' :: [Maybe a] -> [a]
justList' xs = [a | Just a <- xs]
