-- Write reverse using foldl

reverse :: [a] -> [a]
reverse xs = foldl (\ a b -> b:a) [] xs
