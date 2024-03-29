{-
If we list all the natural numbers below $10$ that are multiples of $3$ or $5$, we get $3, 5, 6$ and $9$.
The sum of these multiples is $23$
Find the sum of all the multiples of $3$ or $5$ below $1000$.
-}

multipleof :: Int -> Bool
multipleof x = x `mod` 3 == 0 || x `mod` 5 == 0

res = sum [x | x <- [0..1000], multipleof x]

main :: IO ()
main = print res -- 234168