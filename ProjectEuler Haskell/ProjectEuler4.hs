-- Largest palindrome product
-- Problem 4
--
-- A palindromic number reads the same both ways. The largest palindrome 
-- made from the product of two 2-digit numbers is 9009 = 91 × 99.
--
-- Find the largest palindrome made from the product of two 3-digit numbers.

isPalindrome :: String -> Bool
isPalindrome [] = True
isPalindrome (x:[]) = True
isPalindrome (x:xs) = if x == last xs then isPalindrome b else False
    where b = init xs


answer = maximum [q | x <- [100..999], y <- [100..999], let q  = x * y, isPalindrome (show q)]
