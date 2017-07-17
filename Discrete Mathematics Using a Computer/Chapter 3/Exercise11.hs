-- Write foldrWith, a function that behaves like foldr except 
-- that it takes a function of three arguments and two lists. 

foldrWith :: (a -> b -> c -> c) -> c -> [a] -> [b] -> c
foldrWith _ n [] _ = n
foldrWith _ n _ [] = n
foldrWith f n (x:xs) (y:ys) = f x y (foldrWith f n xs ys)