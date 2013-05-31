" Set shell to bash to fix compatability issues with other shells.
" https://github.com/gmarik/vundle/wiki
set shell=bash

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
" original repos on Github
Bundle 'scrooloose/syntastic'
Bundle 'edsono/vim-matchit'
Bundle 'scrooloose/nerdcommenter'
" Bundle 'tpope/vim-endwise'
Bundle 'pangloss/vim-javascript'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-liquid'
Bundle 'tpope/vim-sleuth'

" Display symbols next to lines in git projects that show changes, additions, and deletions
Bundle 'airblade/vim-gitgutter'

" Supertab is a vim plugin which allows you to use <Tab> for all your insert completion needs (:help ins-completion).
Bundle 'ervandew/supertab'

" Bundle 'tpope/sensible'
Bundle 'timcharper/textile.vim'
Bundle 'docunext/closetag.vim'
Bundle 'mattn/zencoding-vim'
" vim-scripts repos

filetype plugin indent on     " required!

" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..
