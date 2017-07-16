-- Write a function 
-- extract :: [Maybe a] -> [a] 
-- that takes a list of Maybe values and returns the elements they contain. 
-- For example, 
-- extract [Just 3, Nothing, Just 7] = [3, 7]. 

extract :: [Maybe a] -> [a]
extract [] = []
extract (Just x:xs) = x : extract xs
extract (_:xs) = extract xs 