module ProjectEuler

(*
    Lattice paths
    Problem 15

    Starting in the top left corner of a 2×2 grid, and only being able to move to
    the right and down, there are exactly 6 routes to the bottom right corner.

    How many such routes are there through a 20×20 grid?

    Lattice paths can be counted using combinatorics. The number of lattice
    paths from (0,0) to (n, k) is equal to the binomial cofficient ((n+k) over n).
*)

let grid = (bigint 20, bigint 20)

let rec factorial(n:bigint) = if n <= 1I then 1I else n * factorial(n-1I)

let binomial (n : bigint, k : bigint) = factorial (n) / (factorial (k) * factorial (n-k)) 

let gridToBinomial (x : bigint , y : bigint) = (x+y, y)

let answer = grid |> gtb |> binomial