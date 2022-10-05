-- Question 1
-- Lets say you have the nested values defined bellow. How would you get the value of
-- 4 by using only pattern matching in a function?

nested :: [([Int], [Int])]
nested = [([1,2],[3,4]), ([5,6],[7,8])]

four :: [([Int], [Int])] -> Int
four [(_,[_,d]), _] = d
four _ = 0
-- example four [([1,2],[3,8]), ([5,6],[7,8])]

-- Question 2
-- Write a function that takes a list of elements of any type and, if the list has 3 or more elements, it
-- removes them. Else, it does nothing. Do it two times, one with multiple function definitions and one with
-- case expressions.
only3list :: [String] -> String
--only3list (x:y:z:rest) = "The first element is: " ++ show x ++ ", second is " ++ show y ++ " and third is " ++ show z
only3list (_:_:_:z) = show z
only3list _ = ""

caseonly3list :: [String] -> String
caseonly3list lst = case lst of
  (_:_:_:z) -> show z
  _         -> ""
--example only3list ["aaaa","bbbb","cccc","dddd"] caseonly3list ["aaaa","bbbb","cccc","dddd"]

-- Question 3
-- Create a function that takes a 3-element tuple (all of type Integer) and adds them together

adding3 :: [Int] -> Int
adding3 [x, y, z] = x + y + z
adding3 _ = 0 --just in case there are more or less
--example adding3 [1,2,3,5]

-- Question 4
-- Implement a function that returns True if a list is empty and False otherwise.

emptyOrNot :: [String] -> Bool
emptyOrNot [] = True
emptyOrNot _ = False
--example emptyOrNot [] emptyOrNot ["sss"]

-- Question 5
-- Write the implementation of the tail function using pattern matching. But, instead of failing if
-- the list is empty, return an empty list.

newTail :: [String] -> [String]
newTail (_:rest) = rest
newTail [] = []
--example newTail ["aaa","bbbb","cccc"] newTail ["aaa"] newTail []

-- Question 6
-- write a case expression wrapped in a function that takes an Int and adds one if it's even. Otherwise does nothing. 
-- (Use the `even` function to check if the number is even.)

isItEven :: Int -> Int
isItEven number = case even number of
    True -> number + 1
    False -> number
--example isItEven 7 isItEven 8