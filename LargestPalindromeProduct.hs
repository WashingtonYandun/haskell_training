{-
A palindromic number reads the same both ways. The largest palindrome made from the product of two 
digit numbers is 9009 = 91 * 99.
Find the largest palindrome made from the product of two digit numbers.
-}

isPalindrome :: Int -> Bool
isPalindrome n = show n == reverse (show n)

res = maximum [x | y <- [100..999], z <- [100..999], let x = y * z, isPalindrome x]

main :: IO ()
main = print res -- 906609 (Works fine)