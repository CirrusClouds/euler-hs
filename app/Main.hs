module Main where

import qualified P1 as P1

putShow :: Int -> IO ()
putShow = (putStrLn . show)

main :: IO ()
main = putShow $ P1.solution
