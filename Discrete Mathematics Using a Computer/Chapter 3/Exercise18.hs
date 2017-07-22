-- Show that the deﬁnition of factorial using foldr always produces
-- the same result as the recursive deﬁnition given in the previous section.

factorialRec :: Int -> Int
factorialRec 0 = 1
factorialRec n = n * factorialRec (n-1)

factorialFold :: Int -> Int
factorialFold n = foldr (*) 1 [1..n]

{-
    Prooving that the recursive factorial and the foldr factorial provides 
    the same result using induction.

    Base case: n = 0
        Recursive function: returns 0 by pattern matching.
        Foldr function: foldr (*) 1 [1..0]
                      = foldr (*) 1 []
                      = 1
    
    Asume true for every n, now show it is true for n = k + 1
        Recursive function: returns (k+1) * factorial k by pattern matching.
        Foldr function: foldr (*) 1 [1..(k + 1)]
                      = (1 * (2 * ... (k + 1 * 1)))
                      = (k + 1) * (1 * (2 * ... (k * 1)))
                      = (k + 1) * (foldr (*) 1 [1..k])
                      = (k + 1) * factorial k
-}