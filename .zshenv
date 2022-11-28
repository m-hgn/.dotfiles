#              _
#      _______| |__   ___ _ ____   __
#     |_  / __| '_ \ / _ \ '_ \ \ / /
#    _ / /\__ \ | | |  __/ | | \ V /
#   (_)___|___/_| |_|\___|_| |_|\_/
#
#   mark 2022


# -- xdg --

export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$XDG_CONFIG_HOME/local/share"
export XDG_CACHE_HOME="$XDG_CONFIG_HOME/cache"


# -- zsh --

export ZDOTDIR="$XDG_CONFIG_HOME/zsh"

export HISTFILE="$ZDOTDIR/.zshhistory"
export HISTSIZE=666
export SAVEHIST=666


# -- path --

export PATH=$PATH:'/home/mark/.local/bin'
export PATH=$PATH:'/home/mark/.ghcup/bin'


# -- misc software --

export VIMCONFIG="$XDG_CONFIG_HOME/nvim"
export SCREENSHOT="$HOME/Pictures/Screenshots"


# -- options --

export EDITOR="hx"
export VISUAL="hx"


# -- dev software --

export HELIX_RUNTIME="$HOME/.local/share/helix/runtime"
. "$HOME/.cargo/env"


