# paked's dotfiles!
These are a collection of my dotfiles!
Included are:
* vim
* zsh
* X
* i3
* termite
* tmux

## Installation
Installation is performed with `install.py`, which provide two possible flags: permanent mode, and projects. Permanent mode should always be enabled (`-p=true`), unless the user is debugging and wishes to install into the `./test/` directory. Projects is a list of all programs configuration should be installed for (re: **note** the configuration files name, but the program it belongs to), leaving blank will install everything.

### Examples
`python3 install.py -p=true -u vim tmux`
Install permanently (into the current users home directory), the configuration files for vim (.vimrc, .vim/) and tmux  (.tmux.conf)

`python3 install.py -p=true -u`
Install all of the available programs permanently (into the current users home directory).
