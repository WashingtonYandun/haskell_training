{-
2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20 ?
-}

isDivisibleByAll :: Int -> Bool
isDivisibleByAll n = all (\x -> n `mod` x == 0) [1..20]

res = head [x | x <- [1..], isDivisibleByAll x]

main :: IO ()
main = print res -- 232792560 (Took eternity to run, but it works! I think. I need to find a better way to do this. x2)