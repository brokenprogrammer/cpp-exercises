-- Write (!!), a function that takes a natural number n and a list 
-- and selects the nth element of the list. List elements are 
-- indexed from 0, not 1, and since the type of the incoming number does 
-- not prevent it from being out of range, the result should be a Maybe type. 
-- For example, 
-- [1,2,3]!!0 ==> Just 1 
-- [1,2,3]!!2 ==> Just 3 
-- [1,2,3]!!5 ==> Nothing 

getIndex :: [a] -> Int -> Maybe a
getIndex [] n = Nothing
getIndex (x:_) 0 = Just x
getIndex (x:xs) n = getIndex xs (n-1)