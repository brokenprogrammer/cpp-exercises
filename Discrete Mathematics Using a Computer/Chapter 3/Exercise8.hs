-- Write a function 
-- f :: [a] -> [a] 
-- that removes alternating elements of its list argument, 
-- starting with the ﬁrst one. 
-- For examples, 
-- f [1,2,3,4,5,6,7] returns [2,4,6]. 

f :: [a] -> [a] 
f [] = []
f [x] = []
f (x:xs) = head xs : f (drop 1 xs)