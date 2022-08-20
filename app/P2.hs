module P2 where

fibonacci :: Int -> Int
fibonacci 0 = 1
fibonacci 1 = 1
fibonacci x = (+) (fibonacci (x - 1))
                  (fibonacci (x - 2))

-- The fibonacci function could be memoized for performance
solution :: [Int]
solution = takeWhile
           (< 4000000)
           [ f  | x <- [1..],let f = fibonacci x,
                                 f `mod` 2 == 0]


