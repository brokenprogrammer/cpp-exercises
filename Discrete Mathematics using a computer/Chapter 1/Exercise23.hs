-- Write a list comprehension that produces a list giving
-- all of the positive integers that are not squares
-- in the range 1 to 20.

-- null means to check if a list is empty.
-- First list comprehension lists numbers 1 - 20
-- Second list comprehension tests all numbers up to current a
-- and checks if current x squared becomes a. If the list is empty
-- no squares were found.
x = [a | a <- [1..20], null [x | x <- [1..a], x*x == a]]
