-- What cause the type error in this definition and application?
--
-- f :: Num a => (a,a) -> a
-- f (x,y)=x+y
--
-- f (True,4) Is an error cause True is not a number.

f :: Num a => (a,a) -> a
f (x,y) = x+y

val = f (5, 5) -- Val should contain 10.
