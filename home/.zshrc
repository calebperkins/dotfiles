autoload -U colors && colors
export PS1="%{$fg[red]%}» %{$fg[cyan]%}%1~ %{$reset_color%}"
export LSCOLORS="gxfxcxdxbxegedabagacad"
alias homesick="$HOME/.homesick/repos/homeshick/home/.homeshick"
alias ls="ls -G"

alias clj="lein repl"

