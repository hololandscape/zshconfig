set nocompatible
set paste
set tabstop=4
set shiftwidth=4
set expandtab
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
call vundle#end()
filetype plugin indent on
set laststatus=2

let g:airline_theme='onedark'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

syntax on
colorscheme onedark
set t_Co=256
set background=dark
set backspace=indent,eol,start
set hlsearch

