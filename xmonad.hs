{-
Inspired by (read: shamelessly copied from):
* https://hackage.haskell.org/package/xmonad-contrib-bluetilebranch-0.9.1.4/docs/XMonad-Hooks-DynamicLog.html
* https://gist.github.com/Soft/763129
-}
import XMonad
import XMonad.Config.Desktop
import XMonad.Hooks.DynamicLog (statusBar, xmobarPP, xmobarColor, ppCurrent, ppOutput, defaultPP, dynamicLogWithPP, wrap, ppVisible, ppTitle, ppLayout, shorten)
import XMonad.Hooks.ManageDocks
import XMonad.Util.Run(spawnPipe)
import XMonad.Util.Themes
import XMonad.Util.EZConfig(additionalKeys)
import System.IO

-- The main function.
main = xmonad =<< statusBar myBar myPP toggleStrutsKey myConfig

-- Command to launch the bar.
myBar = "xmobar"

-- Custom PP, configure it as you like. It determines what is being written to the bar.
myPP = xmobarPP
    { ppCurrent = currentStyle
    , ppVisible = visibleStyle
    , ppTitle = titleStyle
    , ppLayout = (\layout -> case layout of
        "Tall" -> "[|]"
        "Mirror Tall" -> "[-]"
        "ThreeCol" -> "[||]"
        "Tabbed" -> "[_]"
        "Gimp" -> "[@]"
        )
    }
    where
        currentStyle = xmobarColor "#ee9a00" "" . wrap "[" "]"
        visibleStyle = wrap "(" ")"
        titleStyle = xmobarColor "cyan" "" . shorten 100 . filterCurly
        filterCurly = filter (not . isCurly)
        isCurly x = x == '{' || x == '}'

-- Key binding to toggle the gap for the bar.
toggleStrutsKey XConfig {XMonad.modMask = modMask} = (modMask, xK_b)

-- Main configuration, override the defaults to your liking.
myConfig = def { modMask = mod4Mask
               , borderWidth = 2
               , normalBorderColor = "#000000"
               , focusedBorderColor = "#ee9a00"
               }
