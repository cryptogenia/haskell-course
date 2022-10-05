-- Question 1
-- Add the type signatures for the functions below and then remove the comments and try to compile.
f1 :: Float -> Float -> Float -> Float
f1 x y z = x ** (y/z)

f2 :: Double -> Double -> Double -> Double
f2 x y z = sqrt (x/y - z)

f3 :: Char -> Double -> String -> String
f3 x y z = x:((show y) ++ z)

f4 :: Double -> Double -> Bool -> [Bool]
f4 x y z = [x > y] ++ [z]

f5 :: String -> String -> String -> Bool
f5 x y z = x == (y ++ z)

-- Question 2
-- Are really all variables in Haskell immutable? Try googling for the answer.

{- 
    looks like not. I'm copying the answer:
    Not all variables are immutable. An example is the data type STUArray which stands for stateful unboxed array. 
    But you can not just declare it as a normal variable. It can be only created inside a function and then returned 
    as a normal unboxed array which is immutable. So there are still some restrictions in Haskell what you can do
    with mutable data structures.      
-}

-- Question 3
-- Why should we define type signatures of functions? How can they help you? How can they help others?

{-
    It can help us to avoid mistakes passing variables, and to others to know what is expected 
-}

-- Question 4
-- Why should you define type signatures for variables? How can they help you?

{- 
    To help understand the errors that are appearing
-}

-- Question 5
-- Are there any functions in Haskell that let you transform one type to the other? Try googling for the answer.
 {- 
    show (number to string), read(string to numeric) and Round(Float to int) are some of them-}

-- Question 6
-- How would you write the prod function from our lesson so that it works for Int and Double? Does the code compile?
-- I would write it prod :: a -> a -> a, but it does not compile
-- You can write it as following. But you need to use a type class constraint in the type signature of your function.
-- The constraint is the "Num a =>" that tells haskell "a" can be only of certain types that implement the Num class 
-- for which the multiplication function (*) is defined. Without this, the compilation would give an error. We will 
-- learn more about type classes in lesson "Intro to type classes".
prod :: Num a => a -> a -> a
prod a b = a * b

-- Question 7
-- Can you also define in Haskell list of lists? Did we showed any example of that? How would you access the inner
-- most elements?
-- Yes you can and yes we did. When we used the function words and lines we got a list of strings and a string is 
-- also a list of characters. Here is an example:
listOfLists :: [String]
listOfLists = ["abc","def","ghi"]

v6 :: Char
v6 = listOfLists !! 1 !! 2