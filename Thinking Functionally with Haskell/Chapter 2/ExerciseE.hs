-- Give a new definition of the function first in the previous
-- exercise using a return type of Maybe a.

first :: (a -> Bool) -> [a] -> Maybe a
first f xs = if null ys then Nothing
    else Just (head ys)
    where ys = filter f xs

-- Count the number of functions with type Maybe a -> Maybe a
--
-- Answer:
--  There are six such functions.