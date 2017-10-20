set nocompatible
filetype off
set nu
set tabstop=4
set background=dark
set backspace=2
syntax on
set laststatus=2
set shiftwidth=4

" 缩进设置
set smartindent
set autoindent

" tab相关设置
set tabstop=4
set expandtab
set smarttab

" 代码折叠
set foldlevel=100
set foldmethod=syntax

set wildmenu " 按tab键提示的时候会列出所有的选择
map j gj
map k gk
set nobackup
set t_Co=256
set hlsearch
set ignorecase
set noswapfile

" 插件设置
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'rust-lang/rust.vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'bling/vim-airline'
Plugin 'scrooloose/nerdtree'
call vundle#end()
filetype plugin indent on


" Rust相关配置
autocmd BufNewFile,BufRead *.rs set filetype=rust
let g:rustfmt_autosave = 1

" 重新打开文件，光标定位到上次退出时的位置
if has("autocmd")
      au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" 关于airline插件的配置
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

" autocmd vimenter * NERDTree
noremap <F2> :NERDTreeToggle<CR>
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" 以下为按键映射
let mapleader = "-"

" 切换tab
nnoremap <leader>1 1gt<cr>
nnoremap <leader>2 2gt<cr>
nnoremap <leader>3 3gt<cr>
nnoremap <leader>4 4gt<cr>
nnoremap <leader>5 5gt<cr>
nnoremap <leader>6 6gt<cr>
nnoremap <leader>7 7gt<cr>
nnoremap <leader>8 8gt<cr>
nnoremap <leader>9 9gt<cr>

" 空格折叠
noremap <space> za
