-- Question 1
-- Write a multiline comment below.
{- 
    test comment
 -}
-- Question 2
-- Define a function that takes a value and multiplies it by 3.
func x = x*3
-- Question 3
-- Define a function that calculates the area of a circle.
funcArea x = pi*x*x
-- Question 4
-- Define a function that calculates the volume of a cylinder by composing the previous function together with the height of the cylinder. 
--y is the height
funcVolume x y = funcArea x *y 
-- Question 5
-- Define a function that checks if the volume of a cylinder is greater than or equal to 42.
funcChecGreaterOrNot :: (Ord a, Floating a) => a -> a -> [Char]
funcChecGreaterOrNot x y = 
    if funcVolume x y >= 42 then "greater or equal" else "Smaller"