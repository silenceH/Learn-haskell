{- Basic Functions
 -}

-- Drop : A function that drops the first n elements from a list.
drop' :: [a] -> Int -> [a]
drop' xs 0 = xs
drop' [] _ = []
drop' (x:xs) n = drop' xs (n - 1)

take' :: Int -> [a] -> [a]
take' 0 _ = []
take' _ [] = []
take' n (x:xs) = x : take' (n-1) xs 

-- sum' : return the sum' of the elements in the list
sum' :: [Int] -> Int
sum' [] = 0
sum' (x:xs) = x + sum' xs

-- product : return the product of the elements in the list
product' :: [Int] -> Int
product' [] = 1
product' (x:xs) = x * product' xs

-- elem : returns whether or not x is an element of a list
elem' :: Eq a => a -> [a] -> Bool
elem' _ [] = False 
elem' x (y:ys) = if x == y 
		then  True
		else elem' x ys

elemCE :: Eq a => a -> [a] -> Bool
elemCE x ys 	| (_,[]) -> False
		| (x,(y:ys)) -> if x == y then True else elemCE x ys
-- length: measures length of a set

lengthR [] = 0
lengthR (x:xs) = 1 + lengthR xs -- recursion

lengthLC xs = sum [1 | _ <- xs] -- list comprehension


{- TODO : Finish this one
-- null 
null' :: [a] -> Bool
null' xs = if xs == [] then True else False
-}


fact :: Integer -> Integer
fact 1 = 1
fact x = x * fact (x-1)
