-- Define a function showDate :: Date -> String
-- so that, for example,
--  showDate (10,12,2013) = "10th December, 2013"
--  showDate (21,11,2020) = "21th November, 2020"

data Date = Date Int Int Int deriving (Show)

showDate :: Date -> String
showDate (Date d m y) = show d ++ suffix d ++ " " ++
    months !! (m-1) ++ ", " ++ show y

suffix d = if d == 1 || d == 21 || d == 31 then "st" else
    if d == 2 || d == 22 then "nd" else
    if d == 3 || d == 23 then "rd" else
    "th"

months = ["January", "February", "Mars", "April", "May", "June", 
    "July", "August", "September", "October", "November", "December"]