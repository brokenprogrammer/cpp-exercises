-- Problem 2
-- Find the last but one element of a list.

myLastButOne :: [a] -> a
myLastButOne [] = error "No values for empty lists!"
myLastButOne x = x !! ((length x)-2) -- Error on list with size 1

myLastButOneInit :: [a] -> a
myLastButOneInit x = last (init x)

myLastButOneRev :: [a] -> a
myLastButOneRev x = (reverse x) !! 1

-- Reverses the list then takes the tail and gives the head of that tail. 
myButLast :: [a] -> a
myButLast = head . tail . reverse
