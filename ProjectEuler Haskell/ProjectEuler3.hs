-- Largest prime factor
-- Problem 3
--
-- The prime factors of 13195 are 5, 7, 13 and 29.
-- What is the largest prime factor of the number 600851475143 ?

getLargestPrime :: Integer -> Integer
getLargestPrime n = if s == n then s else getLargestPrime (n `div` s)
    where s = getSmallestPrime n

getSmallestPrime n = head [x | x <- [2..n], n `mod` x == 0]

answer = getLargestPrime 600851475143
