set nocompatible
filetype off
set nu
set tabstop=4
set background=dark
set backspace=2
syntax on
set laststatus=2
set shiftwidth=4
set smartindent
set smarttab

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'rust-lang/rust.vim'
call vundle#end()
filetype plugin on
