"                                    /$$
"                                   | $$
"       /$$$$$$   /$$$$$$   /$$$$$$ | $$  /$$$$$$
"      /$$__  $$ |____  $$ /$$__  $$| $$ /$$__  $$
"     | $$$$$$$$  /$$$$$$$| $$  \ $$| $$| $$$$$$$$
"     | $$_____/ /$$__  $$| $$  | $$| $$| $$_____/
"  /$$|  $$$$$$$|  $$$$$$$|  $$$$$$$| $$|  $$$$$$$
" |__/ \_______/ \_______/ \____  $$|__/ \_______/
"                          /$$  \ $$
"                         |  $$$$$$/
"                          \______/
"
" Nate Eagle's .vimrc file.
" =========================
" If my .vimrc file is going to suck, it might as well be because I 
" assembled it.
"
" Maintainer:	Nate Eagle <nate@nateeagle.com>
" Last Change:	2010 Feb 06
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use Vim settings, rather than Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

" Sets how many lines of history VIM has to remember
set history=300

" Set to auto read when a file is changed from the outside
set autoread

filetype off
" Pathogen: https://github.com/tpope/vim-pathogen
call pathogen#infect()
filetype plugin indent on

set modelines=0

set undofile

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM User Interface 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Remap leader character to comma - easier to reach than \ (the default)
let mapleader = ","

set ruler " show the cursor position all the time
set number " show line numbers

" Set backspace configuration
set backspace=eol,start,indent

" Search Configuration
set ignorecase " Ignore case when searching
set smartcase " Do case-sensitive search when one or more characters are uppercase
set gdefault " global search/replace is the default
set hlsearch " Hilight search results
set incsearch " do incremental searching

set showmatch " Show matching brackets when text indicator is over them

" Clear search results with leader + space
nnoremap <leader><space> :noh<cr>

" Use tab - which is much easier to reach than % - to navigate bracket pairs
nnoremap <tab> %
vnoremap <tab> %

" Create a new line below the current one of the same length with = chars
nnoremap <leader>1 yypVr=

" No sound on errors
set noerrorbells
set novisualbell
set t_vb=

" Folding
" Save and reload fold state
au BufWinLeave * mkview
au BufWinEnter * silent loadview

" Save file when losing focus
au FocusLost * :wa

" Use ctrl + c/x to copy/cut visual mode selection to OS X clipboard (pasteboard)
vmap <C-x> :!pbcopy<CR>
vmap <C-c> :w !pbcopy<CR><CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
colorscheme wombat
syntax enable " Enable syntax highlighting

" Set font according to system


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Files and Backups 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab, and indent related 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set expandtab
set shiftwidth=4
set softtabstop=4
set tabstop=4
set smarttab
set autoindent

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Filetype settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Set filetype for EE templates on nateeagle.com via Mountee
autocmd BufRead,BufNewFile /Volumes/nateeagle.com/* set filetype=html

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugins 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

filetype plugin on

map <C-J> <C-W>j
map <C-K> <C-W>k
map <c-h> <c-w>h
map <c-l> <c-w>l
