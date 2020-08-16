# XNomad and terminal config

## Links
* installation of Xmonad: https://xmonadhaskell.wordpress.com/2018/10/22/xmonad-ubuntu-18-04-install/
* Xmobar for info bar https://xmonadhaskell.wordpress.com/2018/10/22/xmobar-configure
* How to manage XMonad config file: https://hackage.haskell.org/package/xmonad-contrib-0.16/docs/XMonad-Doc-Configuring.html
* xmobar: https://hackage.haskell.org/package/xmobar-0.35.1#readme
* [xnomad, xmobar tips](https://beginners-guide-to-xmonad.readthedocs.io/intro.html)
* [Haskell general xmonah.hs congif tips](https://wiki.haskell.org/Xmonad/General_xmonad.hs_config_tips)

### To look into:
* taking screenshots: https://github.com/supki/xmonad-screenshot

### Terminal
* [rxvt-unicode](https://wiki.gentoo.org/wiki/Rxvt-unicode)

## How to

### How to update config...
- edit `~/xmonad/xmonad.hs`
- run `xmonad --recompile` in terminal
- hit `POWER+Q` (power key = alt-key)

### How to install xmobar
- Tried install with `cabal` but no success. I could simply install it with `sudo apt-install xmobar`
- See [guide](https://xmonadhaskell.wordpress.com/2018/10/22/xmobar-ubuntu-18-04-install/)
- Update the config with `import XMonad.Hooks.DynamicLog (xmobar)`
- Recompile and reload with ALT+Q

### How to configure xmobar
- `vim ~/.xmobarrc`
- See guide/examples [this link](Config https://beginners-guide-to-xmonad.readthedocs.io/configure_xmobar.html)
- To reload `xmobar`, use the same method to reload xmobar

### How to configure rxvt-unicode
- `vim ~/.Xdefaults` and add your config
- `xrdb -merge .Xdefaults`
- close existing terminal and restart

### How to change default terminal
- [Source](https://itsfoss.com/change-default-terminal-ubuntu/)
- `sudo update-alternatives --config x-terminal-emulator` 

### How to paste in rxvt-unicode
- `SHIFT`+`Insert`
