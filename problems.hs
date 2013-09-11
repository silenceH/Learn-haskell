{- /Learn-haskell/problems.hs
 - An attempt at answers to the 99 Haskell problems:
 - http://www.haskell.org/haskellwiki/H-99:_Ninety-Nine_Haskell_Problems
 -}

-- problem1: find the last element of a list
lastElement :: [a] -> a
lastElement [] = error "error: empty list has no elements"
lastElement [x] = x
lastElement (_:xs) = lastElement xs

-- problem2: find the last but one element of a list
lastButOne :: [a] -> a
lastButOne (x:y:[]) = x
lastButOne (_:y:ys) = lastButOne (y:ys)

-- problem3: find the kth element in a list where the first element is 1
kthElement :: [a] -> Int -> a
kthElement _ 0 = error "There is no 0th element"
kthElement [] _ = error "There are not enough elements in the list"
kthElement (x:xs) 1 = x
kthElement (x:xs) n = kthElement xs (n-1)

-- problem4: find the number of elements in a list
myLength :: [a] -> Int
myLength [] = 0
myLength (_:xs) = 1 + myLength xs

-- problem5: reverse a list
myReverse :: [a] -> [a]
myReverse [] = []
myReverse (x:xs) = myReverse xs ++ [x]

-- problem6: find out whether a list is a palendrome
isPalendrome :: Eq a => [a] -> Bool
isPalendrome [] = True
isPalendrome [_] = True
isPalendrome (x:xs)
	| x == last xs = isPalendrome $init xs 
	| otherwise = False

