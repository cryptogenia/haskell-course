-- Question 1
-- Write a function that checks if the monthly consumption of an electrical device is bigger, equal, or smaller than the maximum allowed and
-- returns a message accordingly. 
-- The function has to take the hourly consumption of an electrical device, the hours of daily use, and the maximum monthly consumption allowed.
-- (Monthly usage = consumption (kW) * hours of daily use (h) * 30 days).

electricConsumption :: Float -> Float -> Float -> String
electricConsumption kWh h maxCons
    | mConsumption < maxCons = "Smaller"  
    | mConsumption == maxCons = "Equal"
    | otherwise = "Bigger"
    where
        mConsumption = kWh * h * 30        

-- Question 2
-- Prelude:
-- We use the function `show :: a -> String` to transform any type into a String.
-- So `show 3` will produce `"3"` and `show (3 > 2)` will produce `"True"`.

-- In the previous function, return the excess/savings of consumption as part of the message.
electricConsumption' :: Float -> Float -> Float -> String
electricConsumption' kWh h maxCons
    | mConsumption < maxCons = "Smaller " ++ show (maxCons - mConsumption)
    | mConsumption == maxCons = "Equal"
    | otherwise = "Bigger " ++ show (mConsumption - maxCons)
    where
        mConsumption = kWh * h * 30        


-- Question 3
-- Write a function that showcases the advantages of using let expressions to split a big expression into smaller ones.
-- Then, share it with other students in Canvas.
stockMostProfitable :: String -> String -> Float -> Float -> Float -> Float -> String
stockMostProfitable stock1 stock2 averagePrice1 averagePrice2 currentPrice1 currentPrice2 = 
    let proffStock1 = currentPrice1 - averagePrice1  
        proffStock2 = currentPrice2 - averagePrice2 
    in  if proffStock1 <= 0 && proffStock2 <= 0 then "None of them has been profitable "
        else if proffStock1 < proffStock2 then stock2 ++ " is the more profitable"
        else if proffStock2 < proffStock1 then stock1 ++ " is the more profitable"
        else "Same profit"

-- Question 4
-- Write a function that takes in two numbers and returns their quotient such that it is not greater than 1.
-- Return the number as a string, and in case the divisor is 0, return a message why the division is not
-- possible. To implement this function using both guards and if-then-else statements.  
divisionFuncElseIf :: Float -> Float -> String
divisionFuncElseIf x y =  --to make it not greater than one, first we check which one is bigger so we can use it as divisor
    if x == 0 && y == 0 then "Not posible because both are zero" else 
        if x >= y then show (y/x) else show (x/y)

divisionFuncGuards :: Float -> Float -> String
divisionFuncGuards x y   --to make it not greater than one, first we check which one is bigger so we can use it as divisor
    | x == 0 && y == 0 = "Not posible because both are zero"
    | x >= y = show (y/x)
    | otherwise = show (x/y)


-- Question 5
-- Write a function that takes in two numbers and calculates the sum of squares for the product and quotient
-- of those numbers. Write the function such that you use a where block inside a let expression and a
-- let expression inside a where block. 
squareDivision :: Float -> Float -> Float
squareDivision x y = let squareProd = sqrt abProd where abProd = x * y
                            in squareProd + squareDiv
                            where squareDiv = let abDiv = x / y in sqrt abDiv