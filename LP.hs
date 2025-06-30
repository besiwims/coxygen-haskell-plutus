module LP
  ( LPToken(..)
  , generateMLTTokens
  ) where

data LPToken = LPToken {
    lpOwner :: String,
    lpQty   :: Integer
} deriving (Show, Eq)

generateMLTTokens :: [String] -> [LPToken]
generateMLTTokens owners = [ LPToken owner 100 | owner <- owners ]