module ProjectEuler

(*
Summation of primes
Problem 10

The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.

Find the sum of all the primes below two million.
*)

let isPrime n = 
    let sqrt' = (float >> sqrt >> int64) n
    [2L..sqrt']
    |> List.forall (fun z -> n % z <> 0L)

let primes =
    let rec primes' n =
        seq {
            if isPrime n then
                yield n
            yield! primes' (n+1L)
        }
    primes' 2L

let answer = 
    [2L..2000000L]
    |> Seq.filter(isPrime)
    |> Seq.sum