# XNomad and terminal config

# Tools used
* [Lux](https://github.com/Ventto/lux) allows to control brightness thru xmonad.
* [fzf](https://github.com/junegunn/fzf) is a useful command-line tool to filter content and search history.
* [p10k](https://github.com/romkatv/powerlevel10k) is a nice theme for Zsh.
* [xmonad](https://github.com/xmonad/xmonad) is a great window manager tool for Linux.
* [xmobar](https://hackage.haskell.org/package/xmobar) is a text based status bar to use with xmonad.

## Links
* installation of Xmonad: https://xmonadhaskell.wordpress.com/2018/10/22/xmonad-ubuntu-18-04-install/
* Xmobar for info bar https://xmonadhaskell.wordpress.com/2018/10/22/xmobar-configure
* How to manage XMonad config file: https://hackage.haskell.org/package/xmonad-contrib-0.16/docs/XMonad-Doc-Configuring.html
* xmobar: https://hackage.haskell.org/package/xmobar-0.35.1#readme
* [xnomad, xmobar tips](https://beginners-guide-to-xmonad.readthedocs.io/intro.html)
* [Haskell general xmonah.hs congif tips](https://wiki.haskell.org/Xmonad/General_xmonad.hs_config_tips)
* [fzf](https://medium.com/better-programming/boost-your-command-line-productivity-with-fuzzy-finder-985aa162ba5d#9ce6): some customisation tips and tricks
* [VimAwesome](https://vimawesome.com/)
* [RXVT unicocde](https://addy-dclxvi.github.io/post/configuring-urxvt/) inspiration.
* [Rxvt-unicode](https://wiki.archlinux.org/index.php/Rxvt-unicode#Reload_the_config) set-up wiki by Arch Linux.
* [urxvt](https://gitlab.com/Abdullah/cfg/-/blob/master/etc/.Xresources) set-up

### To look into:
* taking screenshots: https://github.com/supki/xmonad-screenshot
* file explorer: https://wiki.archlinux.org/index.php/ranger

### Terminal
* [rxvt-unicode](https://wiki.gentoo.org/wiki/Rxvt-unicode)
* [fzf](https://github.com/junegunn/fzf)

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

### Use fzf
- `CTRL+T` show contents of current directory

### Configure vim
- Gloabal settings in `/etc/vim/vimrc` (`vimrc` in this repository)
- User settings in `.vimrc`, see also this [guide](https://www.linode.com/docs/tools-reference/tools/introduction-to-vim-customization/).