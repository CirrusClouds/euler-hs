module Main where

import System.Exit (exitFailure)
import Test.HUnit
import qualified P1 as P1
import qualified P2 as P2

p1_test = TestCase
  (assertEqual "p1 solution" 233168 P1.solution)
p2_test = TestCase
  (assertBool "p2 solution"
   (all (\x -> and [(x < 4000000), (even x)])
     P2.solution))

  
tests = TestList
  [TestLabel "Problem_1" p1_test,
   TestLabel "Problem_2" p2_test]

main :: IO Counts
main = do
  runTestTT tests
