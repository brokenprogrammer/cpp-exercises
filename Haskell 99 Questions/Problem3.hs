-- Problem 3
-- Find the K'th element of a List. The first element in the list is number 1.

elementAt :: [a] -> Int -> a
elementAt x i = x !! (i-1)

elementAtRec :: [a] -> Int -> a
elementAtRec (x:_) 1 = x
elementAtRec [] _ = error "Index out of bounds"
elementAtRec (_:xs) k
    | k < 1       = error "Index out of bounds"
    | otherwise   = elementAtRec xs (k-1)

elementAtRecc :: [a] -> Int -> a
elementAtRecc (x:_) 1 = x
elementAtRecc (_:xs) i = elementAtRecc xs (i-1)
elementAtRecc _ _ = error "Index out of bounds"
