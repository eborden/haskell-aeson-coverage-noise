-- | Example 4
--
-- deriving: manual
-- constructor: record
--
module Example4
  ( example
  ) where

import Melude

example :: IO ()
example = putStrLn $ encode $ Example { property = True }

newtype Example = Example
  { property :: Bool
  }

instance ToJSON Example where
  toJSON ex = object ["property" .= property ex]
