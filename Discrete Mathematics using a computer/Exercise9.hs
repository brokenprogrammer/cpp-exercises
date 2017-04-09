-- Write a function that takes two lists of type [Maybe Int] and examines the pair
-- of list heads before looking at the rest of the list. It returns a list in which the Ints of
-- each pair have been added if both are of the form Just n, preserving any Just n values
-- otherwise.

addMaybe :: Maybe Int -> Maybe Int -> Maybe Int
addMaybe Nothing Nothing = Nothing
addMaybe (Just x) (Just y) = Just (x + y)
addMaybe x Nothing = x
addMaybe Nothing x = x

addJust :: [Maybe Int] -> [Maybe Int] -> [Maybe Int]
addJust = zipWith addMaybe

main = do
    print (addJust [Just 2, Nothing, Just 3] [Nothing, Nothing, Just 5])
