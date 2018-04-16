module ProjectEuler

(*
    Longest Collatz sequence
    Problem 14

    The following iterative sequence is defined for the set of positive integers:

    n → n/2 (n is even)
    n → 3n + 1 (n is odd)

    Using the rule above and starting with 13, we generate the following sequence:

    13 → 40 → 20 → 10 → 5 → 16 → 8 → 4 → 2 → 1
    It can be seen that this sequence (starting at 13 and finishing at 1) contains 10 terms. Although it has not been proved yet (Collatz Problem), it is thought that all starting numbers finish at 1.

    Which starting number, under one million, produces the longest chain?

    NOTE: Once the chain starts the terms are allowed to go above one million.
*)

let (|Even|Odd|) x = if x % 2L = 0L then Even else Odd

let answer = 
    let mutable longest = 1L, 0L

    for i in 2L..1000000L do
        let mutable l = 1L
        let mutable curr = i

        while curr <> 1L do
            match curr with
            | Even -> curr <- curr / 2L
            | Odd -> curr <- 3L * curr + 1L
            l <- l + 1L

        if l > fst longest then longest <- l, i
    
    snd longest