-- Suppose that you have some coins that have been sorted into piles,
-- each of which contains only one kind of coin. Define a data type that can be
-- used to represent the piles of coins.

data Coins = Penny Integer
           | Dime Integer
           | Nickel Integer
           | Quarter Integer
           | Dollar Integer
           deriving (Eq, Show)

main = do
    let p = Penny 20
    print p
