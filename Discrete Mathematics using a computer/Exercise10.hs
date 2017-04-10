-- Define a data type that represents six different metals and automatically
-- creates versions of == and show.

data Metal = Copper | Silver | Gold | Tin | Iron | Aluminium
    deriving (Eq, Show)

main = do
    print (Aluminium)
    print (Copper == Copper)
