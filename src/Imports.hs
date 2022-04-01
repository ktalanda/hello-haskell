module Imports where

import Data.Time (getCurrentTime)
import Data.Aeson
import Data.Text.Encoding
import System.IO (readFile)

printTime :: IO ()
printTime = do
  time <- getCurrentTime
  putStrLn (show time)

printJson :: IO ()
printJson = do
  let list = [1 :: Int, 2, 3, 4]
  print (encode list)

printFile :: IO ()
printFile = do
  contents <- readFile "stack.yaml"
  putStrLn contents

main :: IO ()
main = do
  printTime
  putStrLn "-----------------------------"
  printJson
  putStrLn "-----------------------------"
  printFile
