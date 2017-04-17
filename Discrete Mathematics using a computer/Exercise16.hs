-- A Bit is an integer that is either 0 or 1. A Word is a list of bits that represents a
-- binary number. Here are some binary values that can be represented by Words:
-- [1, 0] => 2
-- [1, 0, 0, 1] => 9
-- [1, 1, 1] => 7

-- Extra credit can be to create a Bit data type and a Word type to represent the words
-- for theese functions.

bitOr :: Int -> Int -> Int
bitOr 0 0 = 0
bitOr x y = 1

bitAnd :: Int -> Int -> Int
bitAnd 1 1 = 1
bitAnd x y = 0

bitwiseAnd :: [Int] -> [Int] -> [Int]
bitwiseAnd = zipWith bitAnd
