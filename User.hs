module User
  ( User(..)
  , createUser
  ) where

import Token

data User = User {
    userId   :: Int,
    username :: String,
    holdings :: [Token]
} deriving (Show, Eq)

createUser :: Int -> String -> User
createUser uid uname = User uid uname []