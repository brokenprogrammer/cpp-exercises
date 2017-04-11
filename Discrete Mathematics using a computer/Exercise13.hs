-- Define a type that contains tuples of up to four elements.

data TupleUpTo4 a b c d = Touple0
                        | Touple1 a
                        | Touple2 a b
                        | Touple3 a b c
                        | Touple4 a b c d
                        deriving (Eq, Show)

main = do
    print ("Hello World!")
