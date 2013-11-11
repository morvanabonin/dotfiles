"vimrc
"vimrc by @morvanabonin
"
set nocompatible
filetype off

" Vundle
" git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

" My Bundles here:
"
" original repos on github
Bundle 'scrooloose/nerdtree'
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'tpope/vim-rails.git'
Bundle 'flazz/vim-colorschemes'
" vim-scripts repos
Bundle 'L9'
Bundle 'FuzzyFinder'
" non-GitHub repos
Bundle 'git://git.wincent.com/command-t.git'
" Git repos on your local machine (i.e. when working on your own plugin)
Bundle 'file:///Users/gmarik/path/to/plugin'
Bundle 'derekprior/vim-trimmer'
" ...

filetype plugin indent on " required!
"- install (update) bundles
":BundleInstall

set encoding=utf8
syntax on
set nowrap

" set theme
colorscheme desert256

"set tabs
set tabstop=4
set shiftwidth=4
set noexpandtab

" show lines
set number
set cursorline
set cursorcolumn
highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE
hi CursorLine guibg=#404040 
hi CursorColumn guibg=#404040
nnoremap <Leader>c :set cursorline! cursorcolumn!<CR>

" enabled backspace
set backspace=indent,eol,start

" color of row fetched
highlight Search guibg=#FF0000 guifg='NONE'

" always shows the status bar
set laststatus=2

" ignores cases in search
set ignorecase

" alloy auto indentation
set autoindent
set smartindent

" search
set incsearch
set hlsearch
set ignorecase

" Highlight trailing whitespace in vim on non empty lines, but not while
" typing in insert mode!
highlight ExtraWhitespace ctermbg=red guibg=Brown
au ColorScheme * highlight ExtraWhitespace guibg=red
au BufEnter * match ExtraWhitespace /\S\zs\s\+$/
au InsertEnter * match ExtraWhitespace /\S\zs\s\+\%#\@<!$/
au InsertLeave * match ExtraWhiteSpace /\S\zs\s\+$/

" Arrow syntax PHP syntax for extensions 'ctp'.
au BufNewFile,BufRead *.ctp setfiletype php

" set autocomplete for PHP
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
:imap <s-tab> <c-x><c-o>
