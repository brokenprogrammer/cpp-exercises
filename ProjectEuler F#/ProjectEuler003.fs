module ProjectEuler

open System

(*
    Largest prime factor
    Problem 3

    The prime factors of 13195 are 5, 7, 13 and 29.
    What is the largest prime factor of the number 600851475143 ?
*)

let findFactorsOf(n:int64) =
    let upperBound = int64(Math.Sqrt(double(n)))
    [2L..upperBound] |> Seq.filter (fun x -> n % x = 0L)

let isPrime(n:int64) =
    let bound = int64(Math.Sqrt(double(n)))
    [2L..bound]
    |> Seq.filter (fun x -> n % x = 0L)
    |> Seq.length = 0

let getLargestPrime (n:int64) =
    let bound = int64(Math.Sqrt(double(n)))

    [2L..bound]
    |> Seq.filter (fun x -> n % x = 0L)
    |> Seq.filter isPrime
    |> Seq.max

let answer = getLargestPrime 600851475143L