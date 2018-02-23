-- Truncatable primes 
-- Problem 37 
-- 
-- The number 3797 has an interesting property. Being prime itself, 
-- it is possible to continuously remove digits from left to right, 
-- and remain prime at each stage: 3797, 797, 97, and 7. Similarly 
-- we can work from right to left: 3797, 379, 37, and 3. 
-- 
-- Find the sum of the only eleven primes that are both truncatable  
-- from left to right and right to left. 
-- 
-- NOTE: 2, 3, 5, and 7 are not considered to be truncatable primes. 

primes = sieve [2..1000000] 
    where sieve (p:xs) = p : sieve (filter (\x -> mod x p /= 0) xs) 

isPrime :: Integer -> Bool 
isPrime 1 = False 
isPrime 2 = True 
isPrime p | (length [x | x <- [2..p-1], mod p x == 0]) > 0 = False 
    | otherwise = True 

intToDigits :: Integral a => a -> [a]
intToDigits 0 = []
intToDigits x = intToDigits (x `div` 10) ++ [x `mod` 10] 

joinInt :: [Integer] -> Integer
joinInt = foldl addDigit 0
    where addDigit num d = 10*num + d

truncateLeft :: Integer -> Integer
truncateLeft x = joinInt $ drop 1 $ intToDigits x

truncateRight :: Integer -> Integer
truncateRight x = joinInt $ init $ intToDigits x

isTruncatedPrimeLeft :: Integer -> Bool
isTruncatedPrimeLeft 0 = True
isTruncatedPrimeLeft x
    | x >= 10 && isPrime x = isTruncatedPrimeLeft $ truncateLeft x
    | x < 10 && isPrime x = True
    | otherwise = False

isTruncatedPrimeRight :: Integer -> Bool
isTruncatedPrimeRight 0 = True
isTruncatedPrimeRight x
    | x >= 10 && isPrime x = isTruncatedPrimeRight $ truncateRight x
    | x < 10 && isPrime x = True
    | otherwise = False

generateLeftPrime :: [Integer] -> [Integer]
generateLeftPrime xs = [prime | p <- xs, k <-[1, 3, 7, 9], let prime = 10*p + k, isPrime prime]

candidates :: [Integer]
candidates = drop 4 $ concat $ takeWhile (not . null) (iterate generateLeftPrime [2, 3, 5, 7])

-- Slow solution.. Can be improved a lot.
answer = sum $ take 11 [x | x <- candidates, isTruncatedPrimeLeft x, isTruncatedPrimeRight x]