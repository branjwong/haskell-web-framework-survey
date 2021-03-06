{-# LANGUAGE OverloadedStrings #-}

module Lib
  ( runner,
  )
where

import Control.Applicative
import Snap.Core
import Snap.Http.Server
import Snap.Util.FileServe

runner :: IO ()
runner = quickHttpServe site

site :: Snap ()
site =
  ifTop (writeBS "hello world")
    <|> route
      [ ("foo", writeBS "bar"),
        ("echo/:echoparam", echoHandler)
      ]
    <|> dir "static" (serveDirectory ".")

echoHandler :: Snap ()
echoHandler = do
  param <- getParam "echoparam"
  maybe
    (writeBS "must specify echo/param in URL")
    writeBS
    param