-- Construct the function addSum :: CIN -> CIN and
-- valid :: CIN -> Bool which takes a ten digit identification
-- number called CIN and verifies it by checking if the sum of the
-- first eight digits is equal to the two last digits.

data CIN = CIN [Char] deriving (Eq, Show)

addSum :: CIN -> CIN
addSum (CIN t) = (CIN q)
    where n = sum (map getDigit t)
          q = t ++ show (div n 10) ++ show (mod n 10)


valid :: CIN -> Bool
valid (CIN x) = (CIN x) == addSum (CIN (take 8 x)) 

getDigit :: Char -> Int
getDigit c = read [c]
