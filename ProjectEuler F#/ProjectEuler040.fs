module ProjectEuler

(*
    Champernowne's constant
    Problem 40

    An irrational decimal fraction is created by concatenating the 
    positive integers:
    0.123456789101112131415161718192021...

    It can be seen that the 12th digit of the fractional part is 1.

    If dn represents the nth digit of the fractional part, 
    find the value of the following expression.
    d1 × d10 × d100 × d1000 × d10000 × d100000 × d1000000
*)

let numbers = Seq.unfold (fun x -> Some(x, x+1)) 1

let target =
    numbers
    |> Seq.collect (fun x -> x.ToString().ToCharArray() |> Seq.map (fun carr -> carr.ToString()))

let nthDigit n = int(target |> Seq.nth (n-1))

let answer = 
    [0..6]
    |> Seq.map (fun n -> nthDigit (pown 10 n))
    |> Seq.reduce (fun accum i -> accum * i)