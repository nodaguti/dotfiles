###
# LANG
###

export LC_CTYPE=utf-8
export LANG=ja_JP.UTF-8
export LC_ALL=ja_JP.UTF-8


###
# PATH
###
export PATH="/usr/local/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
export MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"

# Language-specific paths
source "$HOME/workspaces/dotfiles/zsh/go.sh"
source "$HOME/workspaces/dotfiles/zsh/java.sh"


###
# Options
###

setopt auto_cd
setopt auto_pushd
setopt pushd_ignore_dups
setopt extended_glob
setopt print_eight_bit # Enable multi-byte character drawing

# Resource Limit
ulimit -n 4096

# Disable key delays
KEYTIMEOUT=0


###
# Features
###

source "$HOME/workspaces/dotfiles/zsh/alias.zsh"
source "$HOME/workspaces/dotfiles/zsh/colouring.zsh"
source "$HOME/workspaces/dotfiles/zsh/history.zsh"
source "$HOME/workspaces/dotfiles/zsh/autocomplete.zsh"
source "$HOME/workspaces/dotfiles/zsh/zgen.zsh"
source "$HOME/workspaces/dotfiles/zsh/ssh.zsh"
source "$HOME/workspaces/dotfiles/zsh/auto_ls.zsh"


###
# Scripts that have been automatically appended to .zshrc
###
