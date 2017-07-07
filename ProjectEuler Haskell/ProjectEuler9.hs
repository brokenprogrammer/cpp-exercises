-- Special Pythagorean triplet   
-- Problem 9
--
-- A Pythagorean triplet is a set of three natural numbers,
-- a < b < c, 
-- for which,
--
-- a^2 + b^2 = c^2
-- For example, 3^2 + 4^2 = 9 + 16 = 25 = 5^2.

-- There exists exactly one Pythagorean triplet for which a + b + c = 1000.
-- Find the product abc.

getProduct :: (Num a) => (a, a, a) -> a
getProduct (a, b, c) = a*b*c 

pythagorean = [(a, b, c) | b <- [1..500], a <- [1..b], let c = 1000 - a - b, a^2+b^2==c^2]

answer = getProduct $ head $ take 1 pythagorean 
