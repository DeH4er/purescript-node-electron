module Node.Electron.IPCMain
  ( on
  , sendToHost
  ) where

import Prelude

import Effect as Effect

import Node.Electron.Event as Event

-- | Attach a handler to an IPC message channel.
foreign import on
  :: String
  -> (Event.Event -> Array String -> Effect.Effect Unit)
  -> Effect.Effect Unit


foreign import handle
  :: String
  -> (Event.Event -> Array String -> Effect.Effect Type)
  -> Effect.Effect Unit
