# -*- mode:shell-script -*-
#
# dot.zshrc
#
source $ZDOTDIR/.zaliases
source $ZDOTDIR/.zcompctl

# Emacs style key binding
bindkey -e

# colors enabled
autoload -U colors
colors

setopt hist_ignore_space
setopt auto_list
setopt auto_pushd
setopt pushd_ignore_dups
setopt extended_glob
setopt hist_expand
setopt printeightbit
setopt correct

cdpath=($HOME)
setopt extended_history
setopt inc_append_history
setopt share_history
setopt hist_ignore_all_dups
setopt hist_ignore_dups
setopt hist_ignore_space
setopt hist_verify

HISTFILE=~/.zsh-history
HISTSIZE=10000
SAVEHIST=10000000

export LANG=ja_JP.UTF-8

export PAGER=less
export LESSCHARSET=utf-8
export RSYNC_RSH=ssh
export GISTY_DIR="$HOME/git-repos/gisty"

if [ ! -n "${TERM}" ]; then
    TERM=xterm-color
fi

PROMPT="%m:%n%% "
RPROMPT="[%~]"
SPROMPT="correct: %R -> %r ? "

source $ZDOTDIR/.zshrc.mine
