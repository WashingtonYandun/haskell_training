myplus :: Int -> Int -> Int
myplus a b = a + b

mySquare :: Int -> Int
mySquare x = x * x

isPositive :: Int -> String
isPositive x = if x > 0
    then "Positive"
    else "Negative"

isWashington :: String -> String
isWashington x = if x == "Washington"
    then "Yes"
    else "No"

numbers = [1,2,3,4,5,6,7,8,9,10]
x = numbers !! 0

-- list comprehension

squares = [x^2 | x <- [1..10], x `mod` 2 == 0, x^2 < 50]

cord = [(x, y) | x <- [0..10] , y <- [0..10]]

main = print cord








