module Node.Electron.IPCMain
  ( on
  , handle
  , IPCData
  ) where

import Prelude

import Effect as Effect

import Node.Electron.Event as Event

foreign import data IPCData :: Type

-- | Attach a handler to an IPC message channel.
foreign import on
  :: String
  -> (Event.Event -> Array String -> Effect.Effect Unit)
  -> Effect.Effect Unit


foreign import handle
  :: String
  -> (Event.Event -> Array String -> Effect.Effect IPCData)
  -> Effect.Effect Unit
