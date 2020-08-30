module Lib
  ( runner,
  )
where

import Control.Applicative (optional, (<$>))
import Data.ByteString.Char8 as C
import Data.ByteString.Lazy.Char8 as L
import Data.Maybe (fromMaybe)
import Happstack.Lite

runner :: IO ()
runner = serve config myApp

config :: Maybe ServerConfig
config =
  Just
    ( ServerConfig
        { port = 8000,
          ramQuota = 1 * 10 ^ 6,
          diskQuota = 20 * 10 ^ 6,
          tmpDir = "/tmp/"
        }
    )

myApp :: ServerPart Response
myApp =
  ok
    ( toResponseBS
        (C.pack "text/plain")
        (L.pack "hello, world")
    )