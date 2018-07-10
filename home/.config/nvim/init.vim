filetype plugin indent on
syntax on
setl number
colorscheme Tomorrow-Night

"let g:python3_host_prog=expand('~/.cache/nvim/venv/bin/python3')

" auto-install vim-plug
if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
	silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	autocmd VimEnter * PlugInstall
endif

" plugins
" use PlugInstall, PlugClean, PlugUpdate
call plug#begin('~/.local/share/nvim/plugged')
call plug#end()

" LSP support

let g:LanguageClient_serverCommands = {}

if executable('pyls')
  let g:LanguageClient_serverCommands.python = ['pyls']
end

let g:LanguageClient_autoStart = 1
