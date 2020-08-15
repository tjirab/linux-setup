import XMonad
import XMonad.Config.Desktop
import XMonad.Hooks.DynamicLog (xmobar)
import XMonad.Hooks.ManageDocks
import XMonad.Util.Run(spawnPipe)
import XMonad.Util.Themes
import XMonad.Util.EZConfig(additionalKeys)
import System.IO


myConfig = def
       { borderWidth        = 2
       , normalBorderColor  = "#000000"
       , focusedBorderColor = "#ee9a00" }

main = xmonad =<< xmobar myConfig
