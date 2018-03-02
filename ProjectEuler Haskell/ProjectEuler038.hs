-- Pandigital multiples
-- Problem 38
-- 
-- Take the number 192 and multiply it by each of 1, 2, and 3:
--
-- 192 × 1 = 192
-- 192 × 2 = 384
-- 192 × 3 = 576
-- By concatenating each product we get the 1 to 9 pandigital,
-- 192384576. We will call 192384576 the concatenated product of 192 and (1,2,3)
--
-- The same can be achieved by starting with 9 and multiplying
-- by 1, 2, 3, 4, and 5, giving the pandigital, 918273645, which is the
-- concatenated product of 9 and (1,2,3,4,5).
--
-- What is the largest 1 to 9 pandigital 9-digit number that can be formed as
--the concatenated product of an integer with (1,2, ... , n) where n > 1?

import Data.List

intToDigits :: Integral a => a -> [a]
intToDigits 0 = []
intToDigits x = intToDigits (x `div` 10) ++ [x `mod` 10]

isPandigital :: [Integer] -> Bool
isPandigital xs = (sort xs)== [1, 2, 3, 4, 5, 6, 7, 8, 9]

isPandigital' :: [Integer] -> Integer -> Integer
isPandigital' (x:xs) acc = isPandigital' xs (acc + x)
isPandigital' [] acc = acc

findPandigitalMultiple :: [Integer] -> [Integer]
findPandigitalMultiple list = map (\x -> foldl addDigit 0 (conc x)) list
                        where
                            addDigit num d = 10 * num + d
                            conc num = (intToDigits num) ++ (intToDigits (num*2))


answer = maximum $ findPandigitalMultiple 
    [x | x <- [9234..9487], isPandigital $ (intToDigits x) ++ (intToDigits (x * 2))]