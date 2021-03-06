module Lib (fizzbuzz) where

fizzbuzz :: Int -> String
fizzbuzz n | (mod n 3)==0 && (mod n 5)==0 = "FizzBuzz"
           | (mod n 3)==0 = "Fizz"
           | (mod n 5)==0 = "Buzz"
           | otherwise = show n
