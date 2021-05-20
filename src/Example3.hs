-- | Example 3
--
-- deriving: manual
-- constructor: normal
--
module Example3
  ( example
  ) where

import Melude

example :: IO ()
example = putStrLn $ encode $ Example True

newtype Example = Example
  { property :: Bool
  }

instance ToJSON Example where
  toJSON ex = object ["property" .= property ex]
