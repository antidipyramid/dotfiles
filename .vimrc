" Global settings for all files
" Settings for specific filetypes are in $HOME/.vim/ftplugin
set nocompatible              " be iMproved, required
filetype off                  " required for Vundle-- turned back on below
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
" Plugin 'yuttie/comfortable-motion.vim'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'mattn/emmet-vim'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'tpope/vim-repeat'
Plugin 'Vimjas/vim-python-pep8-indent'
Plugin 'neoclide/coc.nvim'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'flazz/vim-colorschemes'
Plugin 'gcmt/taboo.vim'
Plugin 'tidalcycles/vim-tidal'
Plugin 'tpope/vim-dispatch'
Plugin 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plugin 'junegunn/fzf.vim'
Plugin 'airblade/vim-rooter'
Plugin 'tell-k/vim-autopep8'
Plugin 'Glench/Vim-Jinja2-Syntax'


" JS/Typescript plugins
Plugin 'leafgarland/typescript-vim'
Plugin 'pangloss/vim-javascript'
Plugin 'peitalin/vim-jsx-typescript'
Plugin 'maxmellon/vim-jsx-pretty'


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

set path=.,**
set wildmenu
set wildignore+=*/node_modules/*,*/__pycache__/,*/venv/*
set relativenumber number
set shiftwidth=2
set tabstop=4
syntax on
set autoindent
set cindent
set showmatch
set cursorline
packadd! matchit
set hidden
set incsearch
set nohlsearch

" Highlight python
let g:python_highlight_all = 1

" Run autopep8 Python formatter on save
let g:autopep8_disable_show_diff=1
autocmd BufWritePost *.py Autopep8

" use neovim's own terminal instead of tmux:
let g:tidal_target = "terminal"

" Split settings
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

set splitbelow
set splitright

" Don't use the arrow keys
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

" Enable folding
set foldmethod=indent
set foldlevel=99

" Fold code with spacebar
nnoremap <space> za

" Custom mappings
map :NT :NERDTree
map :Q :q
map :nt :NERDTree
map :node :call OpenNodeREPL()
map <C-T> :call OpenTerm()<CR>

" fzf mappings
" map / :BLines<CR>
map <C-F> :Files<CR>
map <C-B> :Buffers<CR>

function! OpenTerm()
	botright split term://zsh
	resize 10
	normal i
endfunction

function! OpenNodeREPL()
	botright split term://node
	resize 10
	normal i
endfunction

set termguicolors
let ayucolor="dark"
colorscheme ayu
hi Normal guibg=NONE ctermbg=NONE

" Highlight matching parens
highlight MatchParen gui=bold guibg=NONE guifg=lightblue cterm=bold ctermbg=NONE

" Change color of line numbers
hi LineNr guifg=#5C6773


" Terminal mappings
" tnoremap <Esc> <C-\><C-n>

"
" Airline configs
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='ayu_dark'

" Emmet configs

" Indent config
let g:indent_guides_auto_colors = 0
let g:indent_guides_guide_size = 1
let g:indent_guides_start_level = 2
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=black
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=darkgrey

""" Customize colors
" func Setup_Colors()
"     hi Pmenu guibg=DarkGray gui=NONE
"     " hi PmenuSel guibg=#b7c7b7 gui=NONE
"     " hi PmenuSbar guibg=#bcbcbc
"     " hi PmenuThumb guibg=#585858
" endfunc
" autocmd VimEnter * :call Setup_Colors()

" Snippets shortcuts
" list all snippets for current filetype
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsListSnippets="<c-l>"

" So vim can find tags
set tags=tags

" No line numbers in terminal mode
autocmd TermOpen * setlocal nonumber norelativenumber
autocmd TermOpen * setlocal nonumber norelativenumber

" Prettier settings
" let g:prettier#autoformat_config_present = 1
" let g:prettier#autoformat_config_files = ['.prettierrc.js']
" let g:prettier#config#single_quote = 'true'
command! -nargs=0 Prettier :CocCommand prettier.formatFile
