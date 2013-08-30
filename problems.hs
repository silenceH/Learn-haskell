{- /Learn-haskell/problems.hs
 - An attempt at answers to the 99 Haskell problems:
 - http://www.haskell.org/haskellwiki/H-99:_Ninety-Nine_Haskell_Problems
 -}

-- problem1: find the last element of a list
-- TODO: exception for the empty list

lastElement :: [a] -> a
lastElement [x] = x
lastElement (x:xs) = lastElement xs


