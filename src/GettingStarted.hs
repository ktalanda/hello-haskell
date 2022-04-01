module GettingStarted where

greet :: String -> String
greet name = "Hello " ++ name

takeNameAndGreet :: IO ()
takeNameAndGreet = do
    name <- getLine
    putStrLn $ greet name

printNumbers :: IO ()
printNumbers = do
  putStrLn (show (3+4))

main :: IO ()
main = do
  printNumbers
  takeNameAndGreet
