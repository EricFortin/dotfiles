" Eric Fortin's vimrc file.

if has('vim_starting')
    set nocompatible            " No Vi compatibility mode. Need to be first.
endif


" Colors

syntax enable
colorscheme evening

" UI

set number                      " Display line numbers
set incsearch                   " Incremental search
set hlsearch                    " Highlight search
set showmatch

if has("gui_running")
    " Maximize window
    set lines=999 columns=999
endif

" Formatting

set autoindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab

" Remaps
let mapleader=','

" Misc
set nobackup
set noswapfile

" CtrlP
let g:ctrlp_working_path_mode='ra'
"""""""""""""""""""""""""""""""""""""""""""
