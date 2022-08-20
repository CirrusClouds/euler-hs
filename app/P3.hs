module P3 where

factorial :: Int -> Int
factorial 1 = 1
factorial x = x * factorial (x - 1)

