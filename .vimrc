"Configuração e instalação do Vundle no vim
"Link: https://github.com/VundleVim/Vundle.vim
"1. Set up Vundle $ git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
"2. Configure Plugins
"3. Install plugins with this command:
"vim +PluginInstall +qall
"or launch vim an d run :PluginInstall

"vimrc
"vimrc by @morvanabonin
"
set nocompatible   "be improved. required
filetype off       "required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" my plugins

" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
" plugin to search basically anything from VIM
Plugin 'kien/ctrlp.vim'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

" Color schemes
Plugin 'tomasr/molokai'
Plugin 'flazz/vim-colorschemes'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on

" General configurations
set encoding=utf8
syntax on
set nowrap
set number 

set tabstop=2    " Set the default tabstop
set softtabstop=2
set shiftwidth=2 " Set the default shift width for indents

" ignores cases in search
set ignorecase

" alloy auto indentation
set autoindent
set smartindent

colorscheme Monokai

cab tb tabnew
cab nt NERDTreeToggle
