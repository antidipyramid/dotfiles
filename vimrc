set nocompatible              " be iMproved, required
filetype off                  " required
set path+=**
set wildmenu

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'

Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-surround'
Plugin 'townk/vim-autoclose'
Plugin 'sheerun/vim-polyglot'
Plugin 'vim-airline/vim-airline'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-commentary'
Plugin 'yuttie/comfortable-motion.vim'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'mattn/emmet-vim'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

set relativenumber
set shiftwidth=4
set tabstop=4
syntax enable
set autoindent
set cindent
set showmatch
set cursorline
packadd! matchit
set hidden
set term=screen-256color

" Don't use the arrow keys

" Custom mappings
map :NT :NERDTree
map :nt :NERDTree

" Airline configs
let g:airline#extensions#tabline#enabled = 1

" Emmet configs
let g:user_emmet_mode='n'
let g:user_emmet_leader_key=','
