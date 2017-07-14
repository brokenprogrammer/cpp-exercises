-- Write a function convert :: [Int] -> [Bool] that converts a list of numbers to the
-- corresponding Booleans. 0 means False and 1 means True.
convert :: [Int] -> [Bool]
convert a = map intToBool a

intToBool :: Int -> Bool
intToBool 0 = False
intToBool 1 = True
intToBool _ = error "Invalid Input"

myList = [1, 0, 0, 0, 1]

main = do
    print (convert myList)
