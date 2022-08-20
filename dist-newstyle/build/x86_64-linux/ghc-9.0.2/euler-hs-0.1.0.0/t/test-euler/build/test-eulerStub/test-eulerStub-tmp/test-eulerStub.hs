module Main ( main ) where
import Distribution.Simple.Test.LibV09 ( stubMain )
import EulerTest ( tests )
main :: IO ()
main = stubMain tests
