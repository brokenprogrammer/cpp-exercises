-- Double-base palindromes
-- Problem 36
--
-- The decimal number, 585 = 10010010012 (binary), is palindromic in both bases.
--
-- Find the sum of all numbers, less than one million, 
-- which are palindromic in base 10 and base 2.
--
-- (Please note that the palindromic number, in either base, 
-- may not include leading zeros.)

import Numeric (showIntAtBase)
import Data.Char (intToDigit)

intToBin :: Integer -> Integer
intToBin x = read (showIntAtBase 2 intToDigit x "") :: Integer

isPalindrome :: String -> Bool
isPalindrome [] = True
isPalindrome (x:[]) = True
isPalindrome (x:xs) = if x == last xs then isPalindrome next else False
    where next = init xs

answer = sum [x | x <- [1..1000000], isPalindrome $ show x, isPalindrome $ show $ intToBin x]