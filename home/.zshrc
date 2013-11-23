autoload -U colors && colors

# the prompt
export PS1="%{$fg[red]%}» %{$fg[cyan]%}%1~ %{$reset_color%}"
export LSCOLORS="gxfxcxdxbxegedabagacad"

alias ls="ls -G"
alias clj="lein repl"
alias st="/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl"
alias stt="st ."

##############################################################################
## History Configuration
##############################################################################
HISTSIZE=5000               #How many lines of history to keep in memory
HISTFILE=~/.zsh_history     #Where to save history to disk
SAVEHIST=5000               #Number of history entries to save to disk
HISTDUP=erase               #Erase duplicates in the history file
setopt append_history     #Append history to the history file (no overwriting)
setopt share_history      #Share history across terminals
setopt inc_append_history  #Immediately append to the history file, not just when a term is killed
setopt hist_ignore_dups # ignore duplicates

source $HOME/.zsh/git_prompt.zsh
source $HOME/.homesick/repos/homeshick/homeshick.sh
