-- Using foldr, write a function mappend such that 
-- mappend f xs = concat (map f xs) 

mappend :: (a -> [b]) -> [a] -> [b]
mappend f = foldr (\x acc -> f x ++ acc) []