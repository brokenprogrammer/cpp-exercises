-- Write a function that counts the number of times an element appears in a list

occurances :: Eq a => [a] -> a -> Int
occurances [] _ = 0
occurances (x:xs) n = found + occurances xs n
    where found = if x == n then 1 else 0