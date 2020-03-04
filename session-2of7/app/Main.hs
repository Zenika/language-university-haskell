module Main where

import Lib

main :: IO ()
main = do
    print $"3=" ++ (fizzbuzz 3)
    print $"4=" ++ (fizzbuzz 4)
    print $"5=" ++ (fizzbuzz 5)
    print $"6=" ++ (fizzbuzz 6)
    print $"10=" ++ (fizzbuzz 10)
    print $"15=" ++ (fizzbuzz 15)

