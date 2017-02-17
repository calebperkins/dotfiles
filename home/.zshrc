autoload -U colors && colors
autoload -U promptinit; promptinit
prompt pure

bindkey -e

alias vim="nvim"

export CLICOLOR= LSCOLORS=exfxcxdxbxegedabagacad

export PIP_REQUIRE_VIRTUALENV=true

export VISUAL=nvim

##############################################################################
## History Configuration
##############################################################################
bindkey '^R' history-incremental-search-backward
HISTSIZE=5000               #How many lines of history to keep in memory
HISTFILE=~/.zsh_history     #Where to save history to disk
SAVEHIST=5000               #Number of history entries to save to disk
HISTDUP=erase               #Erase duplicates in the history file
setopt append_history     #Append history to the history file (no overwriting)
setopt share_history      #Share history across terminals
setopt inc_append_history  #Immediately append to the history file, not just when a term is killed
setopt hist_ignore_dups # ignore duplicates

function whatport() {
    lsof -i tcp:"$1"
}

[ -r ~/.zsh/local.zsh ] && . ~/.zsh/local.zsh
