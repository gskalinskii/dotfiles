"--------------------------------------------------------------
" VUNDLE - plugin manager
"--------------------------------------------------------------

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

"--------------------------------------------------------------
" PLUGINS
"--------------------------------------------------------------

Plugin 'altercation/vim-colors-solarized'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'mattn/emmet-vim'
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/nerdtree'

"--------------------------------------------------------------

call vundle#end()            " required
filetype plugin indent on    " required

"--------------------------------------------------------------
" EMMET
" -------------------------------------------------------------
let g:user_emmet_install_global = 0
autocmd FileType html,css,scss EmmetInstall
let g:user_emmet_leader_key='<C-W>'

"==============================================================

syntax on

set number

"--------------------------------------------------------------
"REMAP ESC
"--------------------------------------------------------------
ino jk <esc>
ino kj <esc>
nmap s <Plug>(easymotion-s)
"--------------------------------------------------------------
" COLOR SCHEME
"--------------------------------------------------------------
syntax enable
set background=dark
let g:solarized_termtrans=1
let g:solarized_termcolors=256 
colorscheme solarized
"--------------------------------------------------------------
" TABS
" -------------------------------------------------------------
" size of a hard tabstop
set tabstop=4
" size of an "indent"
set shiftwidth=4
" a combination of spaces and tabs are used to simulate tab stops at a width
"  " other than the (hard)tabstop
set softtabstop=4
"--------------------------------------------------------------
" NERDTree
" -------------------------------------------------------------
nmap <silent> <C-D> :NERDTreeToggle<CR>