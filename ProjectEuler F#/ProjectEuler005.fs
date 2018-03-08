module ProjectEuler

(*
    Smallest multiple
    Problem 5

    2520 is the smallest number that can be divided by each of 
    the numbers from 1 to 10 without any remainder.

    What is the smallest positive number that is evenly divisible 
    by all of the numbers from 1 to 20?
*)

let rec gcd (x:int64) (y:int64) = if y = 0L then abs x else gcd y (x % y) 

let lcm x y = x * y / (gcd x y)

let answer =
    List.fold (fun acc x -> lcm acc x) 1L [1L..20L]