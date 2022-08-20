{-# LANGUAGE CPP #-}
{-# LANGUAGE NoRebindableSyntax #-}
{-# OPTIONS_GHC -fno-warn-missing-import-lists #-}
{-# OPTIONS_GHC -Wno-missing-safe-haskell-mode #-}
module Paths_euler_hs (
    version,
    getBinDir, getLibDir, getDynLibDir, getDataDir, getLibexecDir,
    getDataFileName, getSysconfDir
  ) where

import qualified Control.Exception as Exception
import Data.Version (Version(..))
import System.Environment (getEnv)
import Prelude

#if defined(VERSION_base)

#if MIN_VERSION_base(4,0,0)
catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
#else
catchIO :: IO a -> (Exception.Exception -> IO a) -> IO a
#endif

#else
catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
#endif
catchIO = Exception.catch

version :: Version
version = Version [0,1,0,0] []
bindir, libdir, dynlibdir, datadir, libexecdir, sysconfdir :: FilePath

bindir     = "/home/jam/.cabal/bin"
libdir     = "/home/jam/.cabal/lib/x86_64-linux-ghc-9.0.2/euler-hs-0.1.0.0-inplace-test-euler"
dynlibdir  = "/home/jam/.cabal/lib/x86_64-linux-ghc-9.0.2"
datadir    = "/home/jam/.cabal/share/x86_64-linux-ghc-9.0.2/euler-hs-0.1.0.0"
libexecdir = "/home/jam/.cabal/libexec/x86_64-linux-ghc-9.0.2/euler-hs-0.1.0.0"
sysconfdir = "/home/jam/.cabal/etc"

getBinDir, getLibDir, getDynLibDir, getDataDir, getLibexecDir, getSysconfDir :: IO FilePath
getBinDir = catchIO (getEnv "euler_hs_bindir") (\_ -> return bindir)
getLibDir = catchIO (getEnv "euler_hs_libdir") (\_ -> return libdir)
getDynLibDir = catchIO (getEnv "euler_hs_dynlibdir") (\_ -> return dynlibdir)
getDataDir = catchIO (getEnv "euler_hs_datadir") (\_ -> return datadir)
getLibexecDir = catchIO (getEnv "euler_hs_libexecdir") (\_ -> return libexecdir)
getSysconfDir = catchIO (getEnv "euler_hs_sysconfdir") (\_ -> return sysconfdir)

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir ++ "/" ++ name)
