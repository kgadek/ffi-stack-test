{-# LANGUAGE ForeignFunctionInterface #-}

module Main where

import Foreign
import Foreign.C.Types

foreign import ccall "foo.h bar"
  c_bar :: CDouble -> CDouble

bar :: Double -> Double
bar = realToFrac . c_bar . realToFrac


main :: IO ()
main = do
    let amICpp = bar 0.0
    print amICpp

