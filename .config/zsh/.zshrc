#!/bin/zsh
#                     oooo                           
#                     `888                           
#   oooooooo  .oooo.o  888 .oo.   oooo d8b  .ooooo.  
#  d'""7d8P  d88(  "8  888P"Y88b  `888""8P d88' `"Y8 
#    .d8P'   `"Y88b.   888   888   888     888       
#  .d8P'  .P o.  )88b  888   888   888     888   .o8 
# d8888888P  8""888P' o888o o888o d888b    `Y8bod8P' 
#

# -- sources --

source "$ZDOTDIR/.aliases"
source "$ZDOTDIR/.functions"
source "$ZDOTDIR/.keybinds"
source "$ZDOTDIR/.completion"


# -- setopts --

# navigation
setopt AUTO_CD                              # navigate without typing out cd
setopt AUTO_PUSHD                           # automatically push to directory stack
setopt CDABLE_VARS                          # make variables cdable
setopt PUSHD_IGNORE_DUPS                    # no duplicate directory stack entries
setopt PUSHD_SILENT                         # don't show directory stack on change

# history
setopt HIST_FIND_NO_DUPS                    # don't display previously found entry
setopt HIST_IGNORE_SPACE                    # don't save entry with leading space
setopt HIST_SAVE_NO_DUPS                    # don't save duplicate entries
setopt HIST_VERIFY                          # don't immediately enter
setopt SHARE_HISTORY                        # share history between sessions


# -- plugins --

autoload -U compinit; compinit              # default completion
_comp_options+=(globdots)                   # completion works on dotfiles
fpath+="$ZDOTDIR/plugins/zsh-completions"
source "$ZDOTDIR/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh"
source "$ZDOTDIR/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"


# -- prompt --

eval "$(starship init zsh)"

if command -v hitux 1>/dev/null ; then
    printf "\n";
    hitux --clean
elif command -v pfetch 1>/dev/null ; then
    printf "\n";
    PF_INFO="ascii title os shell wm editor palette" PF_SEP=":" PF_COLOR=1 PF_ASCII="linux" pfetch
fi

