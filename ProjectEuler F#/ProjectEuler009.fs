module ProjectEuler

(*
    Special Pythagorean triplet
    Problem 9

    A Pythagorean triplet is a set of three natural numbers,
    a < b < c, 
    for which,

    a^2 + b^2 = c^2
    For example, 3^2 + 4^2 = 9 + 16 = 25 = 5^2.

    There exists exactly one Pythagorean triplet for which a + b + c = 1000.
    Find the product abc.
*)


let pythagorean = 
    seq {
        for b in [1..500] do
            for a in [1..b] do
            let c = 1000 - a - b
            if ((pown a 2) + (pown b 2)) = (pown c 2) then yield a*b*c
    }

let answer = pythagorean |> Seq.take 1 |> Seq.head
