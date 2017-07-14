-- Using foldl, write a function
--
-- maybeLast :: [a] -> Maybe a
--
-- that takes a list and returns the last element in it if there is one, otherwise it
-- returns Nothing.

maybeLast :: [a] -> Maybe a
maybeLast xs = foldl (\ _ y -> Just y) Nothing xs
