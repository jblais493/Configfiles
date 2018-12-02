" vundle {{{1

" needed to run vundle (but I want this anyways)
set nocompatible

" vundle needs filtype plugins off
" i turn it on later
filetype plugin indent off
syntax off

" set the runtime path for vundle
set rtp+=~/.vim/bundle/Vundle.vim

" start vundle environment
call vundle#begin()

" list of plugins {{{2
" let Vundle manage Vundle (this is required)
"old: Plugin 'gmarik/Vundle.vim'
Plugin 'VundleVim/Vundle.vim'

" to install a plugin add it here and run :PluginInstall.
" to update the plugins run :PluginInstall! or :PluginUpdate
" to delete a plugin remove it here and run :PluginClean
" 

" YOUR LIST OF PLUGINS GOES HERE LIKE THIS:
Plugin 'bling/vim-airline'
Plugin 'sheerun/vim-polyglot'
Plugin 'trevordmiller/nova-vim'
Plugin 'mattn/emmet-vim'
Plugin 'jceb/vim-orgmode'

" add plugins before this
call vundle#end()

" --EMMET CONFIG--
"redefine trigger key
let g:user_emmet_leader_key=','

" now (after vundle finished) it is save to turn filetype plugins on
filetype plugin indent on
syntax on

" Remap ESC to kj keys.
inoremap kj <Esc>
cnoremap kj <Esc>

syntax enable

set tabstop=4       " number of visual spaces per TAB
set softtabstop=4   " number of spaces in tab when editing
set expandtab       " tabs are spaces

set number              " show line numbers

set incsearch           " search as characters are entered
set hlsearch            " highlight matches

set foldenable          " enable folding
set foldlevelstart=10   " open most folds by default
set foldnestmax=10      " 10 nested fold max

set clipboard=unnamedplus

colorscheme nova
set termguicolors
set background=dark
set t_Co=256

"set powerline font
let g:airline_powerline_fonts = 1
