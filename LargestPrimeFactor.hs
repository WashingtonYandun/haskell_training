{-
The prime factors of 13195 are 5, 7, 13 and 29.
What is the largest prime factor of the number 600851475143
-}

isPrime :: Int -> Bool
isPrime n = all (\x -> n `mod` x /= 0) [2..floor (sqrt (fromIntegral n))]

getPrimeFactors :: Int -> [Int]
getPrimeFactors n = [x | x <- [2..n], n `mod` x == 0 && isPrime x]

largestPrimeFactor :: Int -> Int
largestPrimeFactor n = maximum (getPrimeFactors n)

res = largestPrimeFactor 600851475143 :: Int

main :: IO ()
main = print res -- 6857 (Took eternity to run, but it works!, I think. I need to find a better way to do this.)
