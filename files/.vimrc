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

" ---Theme---
Plugin 'altercation/vim-colors-solarized'

" ---Syntax---
Plugin 'othree/html5.vim'
Plugin 'hail2u/vim-css3-syntax'
Plugin 'pangloss/vim-javascript'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'othree/javascript-libraries-syntax.vim'
Plugin 'mxw/vim-jsx'

Plugin 'Lokaltog/vim-easymotion'
Plugin 'mattn/emmet-vim'
Plugin 'tpope/vim-surround'

"automatically add the closing quote, bracket ... 
Plugin 'Raimondi/delimitMate'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive'
Plugin 'tomtom/tcomment_vim'
Plugin 'terryma/vim-multiple-cursors'

Plugin 'evindor/vim-rusmode'


"--------------------------------------------------------------

call vundle#end()            " required
filetype plugin indent on    " required

"--------------------------------------------------------------
" EMMET
" -------------------------------------------------------------
let g:user_emmet_install_global = 0
autocmd FileType html,cfm,php,css,scss EmmetInstall
let g:user_emmet_leader_key='<C-E>'

"--------------------------------------------------------------
" MULTI CURSOR
"--------------------------------------------------------------
" pressing in Insert mode will not quit and delete 
" all existing cursors.
let g:multi_cursor_exit_from_insert_mode=0

"--------------------------------------------------------------
" VIM-RUSMODE
"--------------------------------------------------------------
let g:rusmode_normal_layout='British'
let g:rusmode_autotoggle_insertleave=1

"==============================================================

"--------------------------------------------------------------
" COLOR SCHEME
"--------------------------------------------------------------
syntax enable
set t_Co=256
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
" DIFFERENT
" -------------------------------------------------------------

" turn syntax support on
syntax on

" turn on line number
set number

" highlight current line number
set cursorline
hi clear CursorLine " removes line highliting leaving just line number

" make backspace work with previously inserted text
set backspace=2

" copy the indentation from the previous line
set autoindent
set smartindent

" nowrap
set nowrap

" refresh file if changed outside of vim
set autoread
au FocusGained,BufEnter * :silent! !


"==============================================================


"==============================================================
" MAPPINGS
"==============================================================

"--------------------------------------------------------------
"REMAP ESC
"--------------------------------------------------------------
ino jk <esc>
ino kj <esc>
ino йк <esc>
ino кй <esc>
"--------------------------------------------------------------
"EASY MOTION
"--------------------------------------------------------------
nmap s <Plug>(easymotion-s)
"--------------------------------------------------------------
" NERDTree
" -------------------------------------------------------------
nmap <silent> <C-D> :NERDTreeToggle<CR>
"
"--------------------------------------------------------------
" netrw
"--------------------------------------------------------------
" nmap <C-D> :Explore<CR>
" nmap <C-X> :Rex<CR>
" Allow netrw to remove non-empty local directories
" let g:netrw_localrmdir='rm -r'

" split current line, mostly for { }
imap <C-c> <CR><Esc>O

"--------------------------------------------------------------
" Different
"--------------------------------------------------------------
