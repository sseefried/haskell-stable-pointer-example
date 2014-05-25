module Main where

import Foreign.StablePtr
import Foreign.C

-- An arbitrary algeberaic data structure. Specifics not important
data D = I Int
       | S String
       | C Char deriving Show

foreign export ccall showDFromHaskell :: StablePtr D -> IO ()
foreign import ccall showDFromC :: StablePtr D -> IO ()

showDFromHaskell:: StablePtr D -> IO ()
showDFromHaskell dPtr = do
  d <- deRefStablePtr dPtr
  putStrLn . show $ d

main :: IO ()
main = do
  dPtr <- newStablePtr (I 10)
  showDFromHaskell dPtr