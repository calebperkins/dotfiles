filetype off " required!
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'vim-scripts/paredit.vim'
Bundle "scrooloose/nerdtree"
Bundle "kien/ctrlp.vim"
Bundle 'itchyny/lightline.vim'
Bundle 'scrooloose/syntastic'

Bundle "altercation/vim-colors-solarized"
colorscheme solarized

filetype plugin indent on " required!

