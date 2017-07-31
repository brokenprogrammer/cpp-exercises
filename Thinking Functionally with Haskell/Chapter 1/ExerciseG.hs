-- Write a function song that prints the song displayed in the book.
-- Assume n < 10.

numbers = ["Two", "Three", "Four", "Five", "Six", 
    "Seven", "Eight", "Nine"]

numbersSmall = ["two", "three", "four", "five", "six", 
    "seven", "eight"]

line1 :: Int -> String
line1 n = if n == 1 then "One man went to mow\n"
    else numbers!!(n-2) ++ " men went to mow\n"

line2 :: Int -> String
line2 n = "Went to mow a meadow\n"

line3 :: Int -> String
line3 n = if n == 1 then "One man and his dog"
    else numbers!!(n-2) ++ " men, " ++ count (n-2) ++ "one man and his dog\n"

line4 :: Int -> String
line4 n = "Went to mow a meadow\n\n"

count :: Int -> String
count n = if n == 0 then ""
    else numbersSmall!!(n-1) ++ " men, " ++ count (n-1)

song :: Int -> String
song n = if n == 0 then ""
    else song (n-1) ++ "\n" ++ verse n

verse :: Int -> String
verse n = line1 n ++ line2 n ++ line3 n ++ line4 n