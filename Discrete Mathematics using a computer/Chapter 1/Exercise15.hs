-- Define a function that takes a Maybe value and prints it.

showMaybe :: Show a => Maybe a -> String
showMaybe Nothing = "Nothing"
showMaybe (Just x) = show x
