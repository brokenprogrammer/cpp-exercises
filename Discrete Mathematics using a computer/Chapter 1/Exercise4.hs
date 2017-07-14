-- Write a function that takes a string and returns True if the string is "hello"
-- and False otherwise.
isHello :: String -> Bool
isHello "hello" = True
isHello a = False

main = do
    print (isHello "hello")
    print (isHello "not hello")
