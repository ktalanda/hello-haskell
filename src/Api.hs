{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}
module Api where

import Web.Scotty
import Data.Monoid ((<>))
import Data.Aeson (FromJSON, ToJSON)
import GHC.Generics

data User = User { userId :: Int, userName :: String } deriving (Show, Generic)
instance ToJSON User
instance FromJSON User

matchesId :: Int -> User -> Bool
matchesId id user = userId user == id

bob :: User
bob = User { userId = 1, userName = "bob" }

jenny :: User
jenny = User { userId = 2, userName = "jenny" }

allUsers :: [User]
allUsers = [bob, jenny]

routes :: ScottyM ()
routes = do
    get "/hello/:name" $ do
        name <- param "name"
        text ("hello " <> name <> "!")

    get "/users" $ do
        json allUsers

    get "/users/:id" $ do
        id <- param "id"
        json (filter (matchesId id) allUsers)

    post "/users" $ do
      user <- jsonData :: ActionM User
      json user

main = do
    putStrLn "Starting Server..."
    scotty 3000 routes
