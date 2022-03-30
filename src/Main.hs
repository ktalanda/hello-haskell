module Main where

import System.IO (readFile)
import Data.Time (getCurrentTime)
import Data.Aeson
import Data.Text.Encoding

printNumbers :: IO ()
printNumbers = do
  putStrLn (show (3+4)) 

printConfig :: IO ()
printConfig = do
  contents <- readFile "stack.yaml"
  putStrLn contents

printTime :: IO ()
printTime = do
  time <- getCurrentTime
  putStrLn (show time)

greet :: String -> String
greet name = "Hello " ++ name ++ "!"

list :: [Int]
list = [1,2,3,4]

main :: IO ()
main = do
  name <- getLine
  putStrLn (greet name)
  printNumbers
  printConfig
  printTime
  print (encode list)
