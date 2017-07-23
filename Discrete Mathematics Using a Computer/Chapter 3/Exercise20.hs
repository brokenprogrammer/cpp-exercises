-- Using recursion, write two functions that expect
-- a string containing a number that contains a decimal
-- point (for example, 23.455). The ﬁrst function returns 
-- the whole part of the number (i.e., the part to the left
-- of the decimal point). The second function returns the
-- fractional part (the part to the right of the decimal point).

wholeNumber :: String -> String
wholeNumber [] = []
wholeNumber (x:xs)
    | x  == '.' = []
    | otherwise = x : wholeNumber xs

fractionNumber :: String -> String
fractionNumber [] = []
fractionNumber (x:xs)
    | x == '.' = xs
    | otherwise = fractionNumber xs