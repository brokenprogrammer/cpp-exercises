-- Write a recursive function copy :: [a] -> [a] that copies 
-- its list argument. For example, copy [2] ⇒[2].

copy :: [a] -> [a]
copy [] = []
copy (x:xs) = x : copy xs