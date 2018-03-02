-- Integer right triangles
-- Problem 39
--
-- If p is the perimeter of a right angle triangle with integral length sides,
-- {a,b,c}, there are exactly three solutions for p = 120.
--
-- {20,48,52}, {24,45,51}, {30,40,50}
--
-- For which value of p ≤ 1000, is the number of solutions maximised?

-- This can be solved using arithmetics:
-- We have the following equations:
--      a^2 + b^2 = c^2
--      a + b + c = p
--
-- The second equation can be written as:
--      c = p - a - b
-- Which in turn can be used within the first equation:
--      a^2 + b^2 = (p - a - b)^2
-- Which can be extended to:
--      a^2 + b^2 = p^2 + a^2 + b^2 - 2pa - 2pb + 2ab
--
-- B can be isolated like this:
--      a^2 + b^2 = p^2 + a^2 + b^2 - 2pa - 2pb + 2ab
--              0 = p^2 - 2pa - 2pb + 2ab
--      2pb - 2ab = p^2 - 2pa
--     b(2p - 2a) = p^2 - 2pa
--              b = (p^2 - 2pa)/(2p - 2a)

import qualified Data.Map as M

answer = maxTuple [(p, a) | p <- [1..1001], a <-[1..(p `div` 3)], (isTriplet p a) == 0]
    where
        maxTuple t = maximum $ map (\x -> (snd x, fst x)) $ M.toList $ M.fromListWith (+) t
        isTriplet i j = (i*(i-2*j) `mod` (2*(i-j)))