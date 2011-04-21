"Noriak vim configuration
filetype off
call pathogen#runtime_append_all_bundles()
filetype plugin indent on

set nocompatible

set modelines=0
syntax on
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set encoding=utf-8
set scrolloff=3
set autoindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
set relativenumber
set undofile

"show invisible character
set list
set listchars=tab:▸\ ,eol:¬

"leader
let mapleader = ","

"search
nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch
nnoremap <leader><space> :noh<cr>
nnoremap <tab> %
vnoremap <tab> %

set wrap
set textwidth=79
set formatoptions=qrn1
set colorcolumn=85

"moving in file hjkl
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
nnoremap j gj
nnoremap k gk

"ignore help on F1
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

"; instead of :
nnoremap ; :

"save the file if lose focus
au FocusLost * :wa

"escape with jj
inoremap jj <ESC>

"functions with leader
nnoremap <leader>1 yypVr=
nnoremap <leader>v V`]
nnoremap <leader>ev <C-w><C-v><C-l>:e $MYVIMRC<cr>

"Move between windows easilly
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <leader>w <C-w>v<C-w>l

"Gundo
nnoremap <leader>u :GundoToggle<CR>

"Spellchecking
nmap <silent> <leader>s :set spell!<CR>
set spelllang=fr

"Grammar checking
"let g:languagetool_jar=$HOME . '/languagetool/LanguageTool.jar'
let g:languagetool_jar='/var/tmp/languagetool/dist/LanguageTool.jar'
