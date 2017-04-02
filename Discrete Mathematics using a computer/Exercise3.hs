-- Write a function that takes a character and returns True if the character is 'a'
-- and False otherwise.
isA :: Char -> Bool
isA 'a' = True
isA a = False

main = do

    print (isA 'a')
    print (isA 'x')
