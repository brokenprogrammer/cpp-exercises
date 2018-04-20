module ProjectEuler

(*
    Power digit sum
    Problem 16

    2^15 = 32768 and the sum of its digits is 3 + 2 + 7 + 6 + 8 = 26.

    What is the sum of the digits of the number 2^1000?
*)


let number = (bigint 2)**1000

let answer = 
    number.ToString() 
    |> Seq.map (fun x -> int32(x.ToString())) 
    |> Seq.sum