# paked's dotfiles!

```
git clone --recursive git@github.com:paked/dotfiles
```

These are my dotfiles for i3, tmux and vim.

Previously I used a python script in order to install them, now I recommend that the person on the other end of this (probably me) manually links them.

```
ln -s $(pwd)/.vim ~/.vim
ln -s $(pwd)/.vimrc ~/.vimrc
ln -s $(pwd)/.tmux.conf ~/.tmux.conf
ln -s $(pwd)/.alias.zsh ~/.alias.zsh
```

My main device is currently a Razer Blade Stealth. My specific Xorg configuration is in the [razer_blade_stealth](razer_blade_stealth) folder.

Too set that up use:

```
sudo mkdir -p /etc/X11/xorg.conf.d && sudo ln -s $(pwd)/razer_blade_stealth/* /etc/X11/xorg.conf.d/
```

Make sure to source `.alias.zsh` in `.zshrc`

## Other things to do

- **Create an alias!**: `ae`

## Other things that need to be installed:

- Prezto (Like oh-my-zsh but not bloated)
- Terminator (a terminal for i3)
- dmenu improved (a better dmenu for i3)
- A FontAwesome ttf (icons for i3status
