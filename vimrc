" Automatic reloading of .vimrc
autocmd! bufwritepost .vimrc source %

" Rebind <Leader> key
let mapleader = ","

" Better copy/paste
set pastetoggle=<F3>
set clipboard=unnamed

" Quicksave command
noremap <C-Z> :update<CR>
vnoremap <C-Z> <C-C>:update<CR>
inoremap <C-Z> <C-O>:update<CR>

" Quick quit command
noremap <Leader>e :quit<CR>
noremap <Leader>E :qa!<CR>

" map sort function to a key
vnoremap <Leader>s :sort<CR>

" Move block of code with keeping selection
vnoremap < <gv
vnoremap > >gv

" Set Airline theme to random
let g:airline_theme='owo'

set encoding=utf8
let g:ycm_server_python_interpreter = '/opt/python/3.9.9/bin/python3.9'

" Basic vim settings
set autoread
set wildmenu
set showmatch
set nocompatible
syntax enable
set number
set ruler
set smartcase
set hlsearch
set ttyfast
set ai
set si
set history=900
set undolevels=900
set scrolloff=10
map <silent> <BS> :nohlsearch<CR>

" Define abbrivations
ab trun [...Truncated for Readability...]

filetype plugin indent on

" Tab = 4 spaces
set tabstop     =4
set softtabstop =4
set shiftwidth  =4
set expandtab

" Custom macros to add datetime to a file
let @a="025I-€ýayypk:r !datek3Jo€ýa"

" Plugins
call plug#begin('~/.vim/myPlugins/')
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-characterize'
Plug 'scrooloose/nerdtree'
Plug 'junegunn/vim-easy-align'
Plug 'scrooloose/syntastic'
Plug 'tpope/vim-commentary'
Plug 'elzr/vim-json'
Plug 'dhruvasagar/vim-table-mode'
Plug 'tpope/vim-surround'
Plug 'ervandew/supertab'
Plug 'tpope/vim-commentary'
Plug 'othree/xml.vim'
Plug 'vimwiki/vimwiki'
Plug 'lilydjwg/colorizer'
Plug 'flazz/vim-colorschemes'
Plug 'xolox/vim-misc'
Plug 'xolox/vim-notes'
Plug 'chrisbra/unicode.vim'
Plug 'itchyny/calendar.vim'
call plug#end()

" Table mode setting
let g:table_mode_corner_corner='+'

# Ctrl+n for nerdtree
map <C-n> :NERDTreeToggle<CR>

"Set persistent undo history in the .VIM_UNDO_FILES directory
if has('persistent_undo')
    set undofile
    set undolevels=5000
    set undodir=$HOME/.VIM_UNDO_FILES
endif

" Set colorscheme
if &t_Co >= 256 || has("gui_running")
    colorscheme zmrok
    " colorscheme vimicks
    " colorscheme ir_black
endif

"Highlight the line if the content of the line goes beyond 80 column  
highlight ColorColumn ctermbg=cyan
call matchadd('ColorColumn', '\%80v', 100)
