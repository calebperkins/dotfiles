autoload -U colors && colors
autoload -U promptinit; promptinit
prompt pure

bindkey -e

alias vim="nvim"
alias icloud="cd ~/Library/Mobile\ Documents/com\~apple\~CloudDocs/"

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

# returns what processes are listening on the provided port
function whatport() {
    lsof -i tcp:"$1"
}

# create a new Python venv and install neovim and lang server support
function venv() {
    python3 -m venv ~/.virtualenvs/$1
    source ~/.virtualenvs/$1/bin/activate
    pip install neovim python-language-server
}

[ -r ~/.zsh/local.zsh ] && . ~/.zsh/local.zsh
