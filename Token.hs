module Token
  ( Token(..)
  , createToken
  ) where

data Token = Token {
    tokenName :: String,
    quantity  :: Integer
} deriving (Show, Eq)

createToken :: String -> Integer -> Token
createToken name qty = Token name qty