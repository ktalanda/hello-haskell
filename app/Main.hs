module Main where

import GettingStarted 
import Imports
import Monads

-- beCareful :: Maybe Int
-- beCareful = do
--   Just 6
--   Nothing
--   return 5

main :: IO ()
main = 
  -- GettingStarted.main
  -- Imports.main
  Monads.main
