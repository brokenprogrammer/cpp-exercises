module ProjectEuler

(*
    10001st prime
    Problem 7

    By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, 
    we can see that the 6th prime is 13.

    What is the 10 001st prime number?
*)

let isPrime n = 
    let sqrt' = (float >> sqrt >> int) n
    [2..sqrt']
    |> List.forall (fun z -> n % z <> 0)

let primes =
    let rec primes' n =
        seq {
            if isPrime n then
                yield n
            yield! primes' (n+1)
        }
    primes' 2

let answer = primes |> Seq.nth 10000