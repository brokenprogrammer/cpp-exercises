-- Summation of primes
-- Problem 10
--
-- The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
--
-- Find the sum of all the primes below two million.

primes = 2 : sieve primes [3..] 
sieve (p:ps) xs | (h,t) <- span (< p*p) xs = h ++ sieve ps [x | x <- t, rem x p /= 0]

answer = sum $ takeWhile (<2000000) primes