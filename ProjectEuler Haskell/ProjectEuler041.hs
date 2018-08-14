-- Pandigital prime
-- Problem 41
--
-- We shall say that an n-digit number is pandigital if it 
-- makes use of all the digits 1 to n exactly once. 
-- For example, 2143 is a 4-digit pandigital and is also prime.
--
-- What is the largest n-digit pandigital prime that exists?

import Data.List (permutations)

isPrime :: Int -> Bool
isPrime n | n <= 1 = False
          | otherwise = not $ or [n `rem` x == 0 | x <- [2..floor $ sqrt $ fromIntegral n]]

fromDigits :: [Int] -> Int
fromDigits = foldl addDigit 0
    where addDigit num d = 10*num + d

answer = maximum $ filter isPrime $ concatMap (\x -> map (fromDigits) $ permutations [1..x]) [1..7]