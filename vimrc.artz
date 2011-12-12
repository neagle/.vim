
" Install Pathogen
call pathogen#infect()

" syntax highlight
syntax on

" auto-detect the filetype
filetype plugin indent on

" http://stevelosh.com/blog/2010/09/coming-home-to-vim/

" Enable all VIM features
set nocompatible

" Prevent some security exploits having to do with modelines in files.
set modelines=0

" Create an undo file - not needed? Nate?
set undofile

" Tabs are 4 characters
set tabstop=4
set softtabstop=4

" (Auto)indent uses 4 characters
set shiftwidth=4

" spaces instead of tabs
set expandtab

" UTF-8 Encoding
set encoding=utf-8

" Keep 3 lines from previous page when scrolling
set scrolloff=3

" Displays the current mode (i.e. -- INSERT --, -- VISUAL --, etc.)
set showmode

" Show partial commands
set showcmd

" guess indentation
set autoindent

" line numbers, rulers, and everything else
set ruler

" Always show the last status
set laststatus=2

" http://blog.interlinked.org/tutorials/vim_tutorial.html

" long lines
set wrap
" Expand the command line using tab
" set wildchar=<Tab>

" show line numbers
set number

" Fold using markers {{{
" like this
" }}}
set foldmethod=marker

" powerful backspaces
set backspace=indent,eol,start

" Ignore case while searching.
set ignorecase

" When uppercase is used, do case sensitive search.
set smartcase

" Enable global search/replace (/g/) by default.
set gdefault

" highlight the searchterms
set hlsearch

" jump to the matches while typing
set incsearch

" show matching braces
set showmatch

" For consideration.
" nnoremap <leader><space> :noh<cr>
" nnoremap <tab> %
" vnoremap <tab> %

" Autosave when focus is lost.
au FocusLost * :wa

" Set word wrap character limit.
" set textwidth=0
set textwidth=79

" Not sure what this formatting does, but it is recommended.
"set formatoptions=qrn1

" Set a colored bar at 85 to help avoid long lines of code.
" set colorcolumn=85

" Show invisible characters.
set list
set listchars=tab:▸\ ,eol:¬

" history
set history=50

" 1000 undo levels
set undolevels=1000

" write before hiding a buffer
set autowrite

" allows hidden buffers to stay unsaved
set hidden

" Enable the wild menu.
set wildmenu
set wildmode=list:longest

" Use visual bell instead of beeping when doing something wrong
set visualbell

" Highlight the current line.
set cursorline

" Improves redrawing.
set ttyfast

"set wmh=0

" we use a dark background, don't we?
set background=dark

" Always show the menu, insert longest match
set completeopt=menuone,longest

" When editing a file, always jump to the last known cursor position.
" Don't do it when the position is invalid or when inside an event handler
" (happens when dropping a file on gvim).
autocmd BufReadPost *
  \ if line("'\"") > 0 && line("'\"") <= line("$") |
  \   exe "normal g`\"" |
  \ endif

" Map visual editor to key directions.
map <C-J> <C-W>j
map <C-K> <C-W>k
map <c-h> <c-w>h
map <c-l> <c-w>l

" Turn off the arrow keys - learn to use hjkl
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

" Set 256 colors
set t_Co=256

" Set color theme.
colorscheme dw_red

" Code completion.
" autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
" autocmd FileType c set omnifunc=ccomplete#Complete

" http://vim.wikia.com/wiki/Example_vimrc

" Set the command window height to 2 lines, to avoid many cases of having to "press <Enter> to continue"
set cmdheight=2

