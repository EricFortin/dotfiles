" Eric Fortin's vimrc file.

if has('vim_starting')
    set nocompatible            " No Vi compatibility mode. Need to be first.

    set runtimepath+=~/.vim/bundle/neobundle.vim/
endif


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NeoBundle config
call neobundle#rc(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
NeoBundleFetch 'Shougo/neobundle.vim'

" Bundle configuration

" GitHub repos
"NeoBundle 'tpope/vim-fugitive'
"NeoBundle 'fholgado/minibufexpl.vim'
NeoBundle 'ervandew/supertab'
NeoBundle 'scrooloose/nerdtree' 
NeoBundle 'moll/vim-bbye'

NeoBundle 'MarcWeber/vim-addon-mw-utils' " Required fir vim-snipmate
NeoBundle 'tomtom/tlib_vim' " Required fir vim-snipmate
NeoBundle 'garbas/vim-snipmate'
NeoBundle 'honza/vim-snippets' " Collection of snippets.

NeoBundle 'kien/ctrlp.vim'

" vim-scripts repos
NeoBundle 'minibufexpl.vim'

" Non GitHub repos
"NeoBundle 'git://git.wincent.com/command-t.git'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Standar vim config.
filetype plugin indent on

NeoBundleCheck

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



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugins config

" MiniBufExpl
let g:miniBufExplMapWindowNavVim = 1 
let g:miniBufExplMapWindowNavArrows = 1 
let g:miniBufExplMapCTabSwitchBufs = 1 
let g:miniBufExplModSelTarget = 1
"""""""""""""""""""""""""""""""""""""""""""

" NerdTree
map <C-n> :NERDTreeToggle<cr>
let NERDTreeShowBookmarks=1
let NERDTreeIgnore = ['\.lo$', '\.o', '\.pyc']

" open on startup.
autocmd VimEnter * NERDTree 

" Move cursor to main window
autocmd VimEnter * wincmd p

" Close if only buffer left is NerdTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
"""""""""""""""""""""""""""""""""""""""""""

" BBye
cnoremap <expr> bd (getcmdtype() == ':' ? 'Bdelete' : 'bd')
"""""""""""""""""""""""""""""""""""""""""""

" CtrlP
let g:ctrlp_working_path_mode='ra'
"""""""""""""""""""""""""""""""""""""""""""
