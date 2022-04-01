module Monads where

import Control.Monad

beCareful :: Maybe Int
beCareful = do
    Just 6
    Nothing
    return 5

getNumber :: IO Int
getNumber = do
    input <- getLine
    return $ (read input :: Int)

printRepeat :: IO ()
printRepeat = do
    message <- getLine
    repeatTimes <- getNumber
    replicateM_ repeatTimes $ putStrLn message

main :: IO ()
main = printRepeat