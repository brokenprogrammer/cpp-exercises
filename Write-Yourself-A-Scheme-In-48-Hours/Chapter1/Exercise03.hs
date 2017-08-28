module Main where
import System.Environment

main :: IO () 
main = do 
    putStrLn "Please enter your name: "
    name <- getLine
    putStrLn ("Hello, " ++ name)