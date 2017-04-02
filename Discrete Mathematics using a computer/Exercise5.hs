-- Write a function that takes a string and removes a leading space if it exists.
removeLeadingSpace :: String -> String
removeLeadingSpace (' ':xs) = xs
removeLeadingSpace x = x

main = do
    print (removeLeadingSpace " Hello")
    print (" Hello")
    print (removeLeadingSpace "No leading space")
