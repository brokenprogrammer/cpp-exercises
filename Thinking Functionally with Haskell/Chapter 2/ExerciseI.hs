-- Write an interactive program palindrome :: IO ()
-- which when run conducts an interative session which
-- lets you check if entered Strings are a palindrome or not.

import Data.Char

isPalindrome :: String -> Bool
isPalindrome xs = (ys == reverse ys)
    where ys = map toLower (filter isAlpha xs) 

palindrome :: IO ()
palindrome = do {
    putStrLn "Enter a String: ";
    xs <- getLine;
    if isPalindrome xs then putStrLn "Yes!"
    else putStrLn "No!"
}