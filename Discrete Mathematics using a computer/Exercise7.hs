-- Write a function member0 :: String -> Bool that takes a list of Char values and returns
-- True if at leat one of the characters is '0' and False otherwise.
member0:: String -> Bool
member0 a = let d = map isZero a
    in or d

isZero :: Char -> Bool
isZero '0' = True
isZero _ = False

-- Recursive solution
member0Rec :: String -> Bool
member0Rec [] = False
member0Rec ('0':_) = True
member0Rec (_:xs) = member0Rec xs

has0 = "Hello 0"
hasno0= "Hello"

main = do
    print (member0 has0)
    print (member0 hasno0)
    print (member0Rec has0)
    print (member0Rec hasno0)
