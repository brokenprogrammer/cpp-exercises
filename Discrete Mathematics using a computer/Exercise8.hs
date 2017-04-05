main = do
    --Expand the following application:
    let a = foldr max 0 [1,5,3]
    -- = max 1 (max 5 (max 3 0))
    -- = max 1 (max 5 3)
    -- = max 1 5
    -- = 5

    print (a)
