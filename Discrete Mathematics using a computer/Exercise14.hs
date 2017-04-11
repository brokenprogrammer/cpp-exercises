-- The quadratic equation a * x^2 + b * x + c = 0 has two roots given by its formula.
-- as long as the discriminant (tge exoressuib ybder the square root sign) is non-negative.
-- If the discriminant is negative the roots are complex. Define a function that finds the
-- real solutions of the quadratic equation, and reports failiure if they don't exist.

discriminant :: (Floating a) => a -> a -> a -> a
discriminant a b c = (b^2) - (4*a) * c

-- The entire quadratic formula looks like:
-- x = ((-b) +- sqrt(b^2 - 4 * a * c)) / 2 * a

--Disc (Discriminant) is the value under the square root within the quadratic formula.
-- sqdisc is the value of the squareroot of the discriminant divided by 2 * a.
-- pref is the prefix of the equation containing (-b) divided by 2 * a

-- Compare the discriminant and zero to know if the value is LT(Less than 0),
-- EQ(Equal to 0) or GT(Greater than 0).
-- If the discriminant is EQ to 0 we just return a tuple with the two same solutions.
-- Otherwise we add the two fractions respectively subtract them to get the two solutions.
realQuadratic :: (Ord a, Floating a) => a -> a -> a -> Maybe (a,a)
realQuadratic a b c = case (compare disc 0) of
    LT -> Nothing
    EQ -> Just (pref, pref)
    GT -> Just (pref + sqdisc, pref - sqdisc)
    where disc = discriminant a b c
          sqdisc = sqrt disc / (2 * a)
          pref = (-b) / (2 * a)


main = do
    -- The equation x^2 + 3x - 4 = 0 with the solutions x = -4, x = 1
    print (realQuadratic 1.0 3.0 (-4.0))
