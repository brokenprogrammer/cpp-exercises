-- A universal type is one in which any type can be represented.
-- Each different type is identified by its own constructor, which serves as a
-- distinguishing tag. Define a universal type that contains Booleans, characters,
-- and integers (Ints).

data UniversalType = BOOL Bool
                   | CHAR Char
                   | INT Int
                   deriving (Eq, Show)

main = do
    let ut = BOOL False
    print ut
