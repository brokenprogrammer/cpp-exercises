-- Problem 1
-- Find the last element of a list.

myLast :: [a] -> a
myLast [] = error "No end for empty lists!"
myLast x = last x

myLastN :: [a] -> a
myLastN [] = error "No end for empty lists!"
myLastN x = x !! ((length x)-1)

myLastRec :: [a] -> a
myLastRec [] = error "No end for empty lists!"
myLastRec [x] = x -- If there is one item within the list return it.
myLastRec (_:xs) = myLastRec xs -- More elements then recursively call with splitted list.

main = do
    print (myLast [1, 2, 3 ,4])
    print (myLastN [1, 2, 3 ,4])
    print (myLastRec [1, 2, 3 ,4])

    print (myLast ['x','y','z'])
    print (myLastN ['x','y','z'])
    print (myLastRec ['x','y','z'])
