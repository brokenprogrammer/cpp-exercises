-- Problem 4
-- Find the number of elements of a list.

elements :: [a] -> Int
elements = length

elementsRec :: [a] -> Int
elementsRec [] = 0
elementsRec x = 1 + (elementsRec (tail x))

elementsRec2 :: [a] -> Int
elementsRec2 [] = 0
elementsRec2 (_:xs) = 1 + elementsRec xs

elementsSum :: [a] -> Int
elementsSum = sum . map (\_ -> 1)
