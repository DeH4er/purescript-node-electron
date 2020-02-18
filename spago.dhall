{-
Welcome to a Spago project!
You can edit this file as you like.
-}
{ name = "node-electron"
, dependencies =
  [ "console"
  , "effect"
  , "foreign"
  , "halogen"
  , "maybe"
  , "options"
  , "prelude"
  , "psci-support"
  , "transformers"
  , "unsafe-coerce"
  , "web-dom"
  , "web-events"
  , "web-html"
  ]
, packages = ./packages.dhall
, sources = [ "src/**/*.purs", "test/**/*.purs" ]
}
