main = do
    print "Hello World"

    -- [] Because all tests fail under the current filter
    let ex21 = [x | x <- [1,2,3], False]
    print ex21

    --[True, True, True, False]
    --Following tuples are evaluated: (False, False), (False, True), (True, False), (True, True)
    let ex22 = [not (x && y) | x <- [False, True], y <- [False, True]]
    print ex22

    --[True, True]
    --Following tuples are evaluated: (False, False), (False, True), (True, False), (True, True)
    --Out of theese the filter removes: (False, False), (True, True)
    let ex23 = [x || y | x <- [False, True], y <- [False, True], x /= y]
    print ex23

    --All Pythagorean tripples bellow 50
    let ex24 = [[x, y, z] | x <- [1..50], y <- [1..50], z <- [1..50], x ** 2 + y ** 2 == z ** 2]
    print ex24
