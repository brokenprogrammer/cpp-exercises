-- Each of the following expressions has a type error. Change the expression so that
-- the type error no longer occurs.
-- [1, False]
-- ’2’ ++ ’a’
-- [(3,True), (False,9)]
-- 2 == False
-- ’a’ > "b"
-- [[1],[2],[[3]]]

--Expression 1: Lists are homogenous
exp11 = [True, False]
exp12 = [1, 2]

-- Expression 2: The (++) append operator is for lists.
exp21 = ['2'] ++ ['a']

-- Expression 3: Since lists are homogenous the tuple has to
-- stay the same (Int, Bool)
exp31 = [(3,True), (9,False)]

-- Expression 4: The (==) operator requires homogenous types.
exp41 = 2 == 2
exp42 = False == False

-- Expression 5: Comparing elements with (>) needs homogenous types
exp51 = 'a' > 'b'
exp52 = "a" > "b"

-- Expression 6: Should just be [[1],[2],[3]] instead of [[1],[2],[[3]]]
exp61 = [[1],[2],[3]]
