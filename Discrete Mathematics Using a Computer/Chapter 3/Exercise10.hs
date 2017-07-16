-- Write a function
-- f :: String -> String -> Maybe Int 
-- that takes two strings. If the second string appears within the ﬁrst,
-- it returns the index identifying where it starts. Indexes start from 0. 
-- For example, 
-- f "abcde" "bc" ==> Just 1 f "abcde" "fg" ==> Nothing

subString :: String -> String -> Maybe Int
subString x y = substr' x y 0
  where substr' str@(x:xs) y index = 
          if length y > length str 
          then Nothing
          else if (take (length y) str) == y 
               then Just index
               else substr' xs y (index + 1)