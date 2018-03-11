module ProjectEuler

(*
    Sum square difference
    Problem 6

    The sum of the squares of the first ten natural numbers is,

    12 + 22 + ... + 102 = 385
    The square of the sum of the first ten natural numbers is,

    (1 + 2 + ... + 10)2 = 552 = 3025
    Hence the difference between the sum of the squares of the 
    first ten natural numbers and the square of the sum is 3025 - 385 = 2640.

    Find the difference between the sum of the squares of the 
    first one hundred natural numbers and the square of the sum.
*)

let squareSum =
    [for x in [1..100] do yield pown x 2 ]
    |> List.sum 

let sumSquare = 
    let sum = [for x in [1..100] do yield x] |> List.sum
    pown sum 2

let answer = sumSquare - squareSum