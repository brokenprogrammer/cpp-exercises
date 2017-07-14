-- Write a function inverse that takes a list of pairs and swaps 
-- the pair elements. For example, inverse [(1,2),(3,4)] ==> [(2,1),(4,3)] 

inverse :: [(a, b)] -> [(b, a)]
inverse [] = []
inverse ((x, y):xs) = (y, x) : inverse xs