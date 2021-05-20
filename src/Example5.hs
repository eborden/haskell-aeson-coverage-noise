-- | Example 5
--
-- deriving: manual
-- constructor: normal
-- accessor: underscore prefixed
--
module Example5
  ( example
  ) where

import Melude

example :: IO ()
example = putStrLn $ encode $ Example True

newtype Example = Example
  { _property :: Bool
  }
  deriving stock Generic
  deriving anyclass (ToJSON)
