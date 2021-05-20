-- | Example 1
--
-- deriving: generic
-- constructor: normal
--
module Example1
  ( example
  ) where

import Melude

example :: IO ()
example = putStrLn $ encode $ Example True

newtype Example = Example
  { property :: Bool
  }
  deriving stock Generic
  deriving anyclass (ToJSON)
