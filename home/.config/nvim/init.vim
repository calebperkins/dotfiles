filetype plugin indent on
syntax on
setl number
colorscheme Tomorrow-Night

let g:python3_host_prog=expand('~/.cache/nvim/venv/bin/python3')

" auto-install vim-plug
if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
	silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	autocmd VimEnter * PlugInstall
endif

" plugins
call plug#begin('~/.local/share/nvim/plugged')
Plug 'autozimu/LanguageClient-neovim', { 'do': ':UpdateRemotePlugins' }
Plug 'junegunn/fzf' " a command-line fuzzy finder
Plug 'Shougo/denite.nvim' " Multi-entry selection UI.
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' } " Completion integration with deoplete.
Plug 'roxma/nvim-completion-manager' " Completion integration with nvim-completion-manager.
Plug 'Shougo/echodoc.vim' " Showing function signature and inline doc.
Plug 'fishbullet/deoplete-ruby'
call plug#end()

" LSP support

let g:languageClient_serverCommands = {}

if executable('pyls')
  let g:LanguageClient_serverCommands.python = ['pyls']
end

let g:LanguageClient_autoStart = 1
