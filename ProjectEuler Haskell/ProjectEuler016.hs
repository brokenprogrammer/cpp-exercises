-- Power digit sum
-- Problem 16
--
-- 2^15 = 32768 and the sum of its digits is 3 + 2 + 7 + 6 + 8 = 26.
--
-- What is the sum of the digits of the number 2^1000?

intToDigits :: Integral a => a -> [a]
intToDigits 0 = []
intToDigits x = intToDigits (x `div` 10) ++ [x `mod` 10] 

answer = sum $ intToDigits $ 2^1000
