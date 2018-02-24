-- Lattice paths
-- Problem 15
--
-- Starting in the top left corner of a 2×2 grid, and only being able to move to
-- the right and down, there are exactly 6 routes to the bottom right corner.
--
-- How many such routes are there through a 20×20 grid?

-- Lattice paths can be counted using combinatorics. The number of lattice
-- paths from (0,0) to (n, k) is equal to the binomial cofficient ((n+k) over n).

grid = (20, 20)

binomial :: (Integer, Integer) -> Integer
binomial (n, k) = factorial (n) `div` (factorial k * factorial(n-k))

factorial :: Integer -> Integer
factorial n = product [1..n]

gridToBinomial :: (Integer, Integer) -> (Integer, Integer)
gridToBinomial (x, y) = (x+y, y)

answer = binomial $ gridToBinomial $ grid