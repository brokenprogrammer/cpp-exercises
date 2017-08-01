-- How many multiplications does it take to evaluate exp x n?
--
-- Answer:
--  It takes (n-1) multiplications to evaluate the function presented.
--  Dick's function utilizes the identity x^(2m) = x^2^m and x^(2m+1) = x^(x^2)^m
--  Which is a divide and conquer strategy that takes p multiplications where
--  2^p <= n > 2^(p+1) thus p = floor (log n)

exp :: Integer -> Integer -> Integer
exp x n 
    | n == 0 = 1
    | n == 1 = x
    | even n = exp (x*x) m 
    | odd n = x*exp (x*x) (m-1)
    where m = div n 2