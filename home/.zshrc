autoload -U colors && colors

export PS1="%{$fg[red]%}» %{$fg[cyan]%}%1~ %{$reset_color%}"
export LSCOLORS="gxfxcxdxbxegedabagacad"

alias ls="ls -G"
alias clj="lein repl"
alias st="/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl"
alias stt="st ."

source .zsh/git_prompt.zsh
