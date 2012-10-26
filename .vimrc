"   /$$$$$$                /$$             /$$
"  /$$__  $$              | $$            |__/
" | $$  \__//$$$$$$   /$$$$$$$  /$$    /$$ /$$ /$$$$$$/$$$$   /$$$$$$   /$$$$$$$
" | $$$$   /$$__  $$ /$$__  $$ |  $$  /$$/| $$| $$_  $$_  $$ /$$__  $$ /$$_____/
" | $$_/  | $$$$$$$$| $$  | $$  \  $$/$$/ | $$| $$ \ $$ \ $$| $$  \__/| $$
" | $$    | $$_____/| $$  | $$   \  $$$/  | $$| $$ | $$ | $$| $$      | $$
" | $$    |  $$$$$$$|  $$$$$$$ /$$\  $/   | $$| $$ | $$ | $$| $$      |  $$$$$$$
" |__/     \_______/ \_______/|__/ \_/    |__/|__/ |__/ |__/|__/       \_______/
"
" Every FED needs a .vimrc. Why have a million when you could make an awesome one?
"
" Maintainers: Dave Artz and Nate Eagle

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Use Vim settings, rather than Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible
filetype off " required!

" Use Vundle to manage bundles (plugins) and keep them up-to-date
" https://github.com/gmarik/vundle
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

" My Bundles here:
"
" original repos on github
"Bundle 'tpope/vim-fugitive'
" Functions and mappings to close HTML/XML tags

"Bundle 'Lokaltog/vim-easymotion'
"Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
"Bundle 'tpope/vim-rails.git'
" vim-scripts repos
"Bundle 'L9'
"Bundle 'FuzzyFinder'
" non github repos
"Bundle 'git://git.wincent.com/command-t.git'
" ...

" Having plugins you don't know shit about is significantly worse than having no
" no plugins at all. Put plugins you want to use or try in ~/.vim/.mybundles
" Then run :BundleInstall from inside Vim
runtime .mybundles

 filetype plugin indent on     " required!
 "
 " Brief help
 " :BundleList          - list configured bundles
 " :BundleInstall(!)    - install(update) bundles
 " :BundleSearch(!) foo - search(or refresh cache first) for foo
 " :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
 "
 " see :h vundle for more details or wiki for FAQ
 " NOTE: comments after Bundle command are not allowed..

" syntax highlight
syntax on

filetype on
filetype plugin on

" http://stevelosh.com/blog/2010/09/coming-home-to-vim/

" Prevent some security exploits having to do with modelines in files.
set modelines=0

" Store undo history in an external file - allows undoing even if the file
" has been closed and reopened
set undofile
set undodir=~/.vim/undo

set noswapfile
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM User Interface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Remap leader character to comma - easier to reach than \ (the default)
let mapleader = ","

set ruler " show the cursor position all the time
set number " show line numbers

" UTF-8 Encoding
set encoding=utf-8

" Keep 3 lines from previous page when scrolling
set scrolloff=3

" Displays the current mode (i.e. -- INSERT --, -- VISUAL --, etc.)
set showmode

" Show partial commands
set showcmd

" Always show the last status
set laststatus=2

" http://blog.interlinked.org/tutorials/vim_tutorial.html

" long lines
" set wrap
" Expand the command line using tab
" set wildchar=<Tab>

" show line numbers
set number

" Folding

" Save and reload fold state
au BufWinLeave * silent! mkview
au BufWinEnter * silent! loadview

" Fold using markers {{{
" like this
" }}}
set foldmethod=marker

" powerful backspaces
set backspace=indent,eol,start

" Search Configuration
set ignorecase " Ignore case while searching.
set smartcase " When uppercase is used, do case sensitive search.
set gdefault " Enable global search/replace (/g/) by default.
set hlsearch " highlight the searchterms
set incsearch " jump to the matches while typing
set showmatch " Show matching brackets when text indicator is over them
"
" Clear search results with leader + space
nnoremap <leader><space> :noh<cr>

" Easily edit the .vimrc file
nmap <leader>v :vsplit $MYVIMRC<CR>

" Toggle the color column
nmap <leader>tc :call ToggleColorColumn()<CR>

function! ToggleColorColumn()
    if &colorcolumn == 0
        execute "set colorcolumn=80,120"
    else
        execute "set colorcolumn=0"
    endif
endfunction

" Turn on the color column initially
"call ToggleColorColumn()

" Source the vimrc file after saving it
if has("autocmd")
  autocmd! bufwritepost .vimrc source $MYVIMRC
endif


" No sound on errors
set noerrorbells
set novisualbell
set t_vb=

" Use tab - which is much easier to reach than % - to navigate bracket pairs
"nnoremap <tab> %
"vnoremap <tab> %
nmap <tab> %
vmap <tab> %

" Visual mode blockwise indent
" This keeps the current visual block selection active after changing indent
" with '<' or '>'. Usually the visual block selection is lost after you shift
" it, which is incredibly annoying.
vmap > >gv
vmap < <gv

" Select the text you just pasted with 'gp'
" http://vim.wikia.com/wiki/Selecting_your_pasted_text
nnoremap <expr> gp '`[' . strpart(getregtype(), 0, 1) . '`]'

" Autosave when focus is lost.
au FocusLost * :wa

" Use ctrl + c/x to copy/cut visual mode selection to OS X clipboard (pasteboard)
vmap <C-x> :!pbcopy<CR>
vmap <C-c> :w !pbcopy<CR><CR>

nmap <leader>gc :call CopyEntireFile()<CR>

function! CopyEntireFile()
    let lline=line(".")
    "execute 'echo lline'
    execute 'normal! ggVG'
    execute 'silent !pbcopy'
    execute ':redraw!'
    execute 'normal! V' . lline . 'G'
endfunction

" Set word wrap character limit.
" set textwidth=0
"set textwidth=79

" Not sure what this formatting does, but it is recommended.
"set formatoptions=qrn1

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
" This setting is on probation - it looks great in MacVim and horrible in
" terminal
set cursorline

" Improves redrawing.
set ttyfast "set wmh=0

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
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
nnoremap j gj
nnoremap k gk

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Set 256 colors
set t_Co=256

" Set your color scheme in .vimrc.supplemental - this is one place it's
" okay to be different.


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab, and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set expandtab
set shiftwidth=2
set softtabstop=2
set tabstop=2
"set smarttab
"set autoindent

" Code completion.
" autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
" autocmd FileType c set omnifunc=ccomplete#Complete

" http://vim.wikia.com/wiki/Example_vimrc

" Set the command window height to 2 lines, to avoid many cases of
" having to "press <Enter> to continue"
set cmdheight=2

" Automatically strip trailing whitespace on file save.
autocmd BufWritePre * :%s/\s\+$//e

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Custom Filetypes
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd BufNewFile,BufRead *.zsh setlocal filetype=zsh

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Awesome Sauce
"    Crazy, useful stuff for doing particular, awesome things.
"
"    By implication, other settings should be more general.
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Create a new line below the current one of the same length with = chars
nnoremap <leader>1 yypVr=
nnoremap <leader>2 yypVr-

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugins
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Supplemental
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Maybe there are some things you want in your .vimrc that you REALLY
" can't get everyone else to agree to. Put them in .vimrc.supplemental

runtime .vimrc.supplemental
