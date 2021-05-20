{-# LANGUAGE NoImplicitPrelude #-}
module Melude
  ( module X
  ) where

import Prelude as X hiding (putStrLn)

import Data.Aeson as X (ToJSON, encode, object, toJSON, (.=))
import Data.ByteString.Lazy.Char8 as X (putStrLn)
import GHC.Generics as X (Generic)
