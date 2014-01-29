"" Eric Fortin's vimrc file.

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
"NeoBundle 'ervandew/supertab'
"NeoBundle 'scrooloose/nerdtree'

" vim-scripts repos
NeoBundle 'minibufexpl.vim'
"NeoBundle 'L9'
"NeoBundle 'FuzzyFinder'

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

" Formatting

set autoindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin config

" MiniBufExpl
let g:miniBufExplMapWindowNavVim = 1 
let g:miniBufExplMapWindowNavArrows = 1 
let g:miniBufExplMapCTabSwitchBufs = 1 
let g:miniBufExplModSelTarget = 1 
