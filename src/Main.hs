module Main where

greet :: String -> String
greet name = "Hello " ++ name ++ "!"

main :: IO ()
main = do
  name <- getLine
  putStrLn (greet name)
