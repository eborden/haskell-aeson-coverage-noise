-- | Example 2
--
-- deriving: generic
-- constructor: record
--
module Example2
  ( example
  ) where

import Melude

example :: IO ()
example = putStrLn $ encode $ Example { property = True }

newtype Example = Example
  { property :: Bool
  }
  deriving stock Generic
  deriving anyclass (ToJSON)
