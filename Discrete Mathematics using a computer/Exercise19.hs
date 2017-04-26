-- Why does this deﬁnition produce an error when used?
-- f :: Maybe a -> [a]
-- f Nothing = []
--
-- f (Just 3) -- Error since f doesnt describe a pattern for Just.

-- A way to solve it is to add a pattern for Just.
f :: Maybe a -> [a]
f Nothing = []
f (Just x) = x : []
