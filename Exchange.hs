module Exchange
  ( Tradable(..),
    Listing(..),
    listToken,
    viewListings
  ) where

import Token

class Tradable a where
  assetName :: a -> String
  assetQty  :: a -> Integer

instance Tradable Token where
  assetName = tokenName
  assetQty  = quantity

data Listing = Listing {
    listedToken :: Token,
    price       :: Double
} deriving (Show, Eq)

listToken :: Token -> Double -> Listing
listToken token price = Listing token price

viewListings :: [Listing] -> IO ()
viewListings listings = mapM_ print listings