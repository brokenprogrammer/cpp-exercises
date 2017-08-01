-- Write a functions modernise :: String -> String
-- that capitalises the first letter in each words of 
-- a string.

import Data.Char

modernise :: String -> String
modernise = unwords . map capitalize . words

capitalize :: [Char] -> [Char]
capitalize (x:xs) = toUpper x : xs