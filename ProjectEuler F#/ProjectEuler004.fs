module ProjectEuler

(*
    Largest palindrome product
    Problem 4

    A palindromic number reads the same both ways. The largest palindrome 
    made from the product of two 2-digit numbers is 9009 = 91 � 99.

    Find the largest palindrome made from the product of two 3-digit numbers.
*)

let rec isPalindrome s =
    let l = List.ofSeq s
    match l with
        | [] -> true
        | [a;] -> true
        | head :: tail -> 
            if (head = Seq.last tail) 
                then Seq.take ((Seq.length tail) - 1) tail |> isPalindrome 
                else false

let answer = 
    let s = seq {
        for x in [100..999] do 
            for y in [100..999] do
                if isPalindrome (string (x * y)) then yield (x * y)
    }
    Seq.max s