module P1 where

fizzbuzz :: [Int] -> Int
fizzbuzz [] = 0
fizzbuzz (h:t) = let
  aux x | (x `mod` 3 == 0) = x
        | (x `mod` 5 == 0) = x
        | otherwise = 0
  in  
    aux h + fizzbuzz t

solution :: Int
solution = fizzbuzz [1..999]
