-- Using recursion, deﬁne last, a function that takes a 
-- list and returns a Maybe type that is Nothing if the list is empty.

last' :: [a] -> Maybe a
last' [] = Nothing
last' (x:xs) = latter (Just x) (last' xs)
    where latter (Just x) Nothing = Just x
          latter (Just x) (Just y) = Just y
          latter _ _ = Nothing