#!/bin/sh
set -e

cd ~/.dotfiles

echo "set runtimepath+=~/.dotfiles

call plug#begin('~/.dotfiles/plugins')
\" Interface
Plug 'morhetz/gruvbox'
Plug 'myusuf3/numbers.vim'
Plug 'itchyny/lightline.vim'

\" Utils
Plug 'tomtom/tlib_vim'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'sophacles/vim-bundle-mako'

\" Search
Plug 'mileszs/Ack.vim'
Plug 'kien/ctrlp.vim'
Plug 'scrooloose/nerdtree'
Plug 'jlanzarotta/bufexplorer'
Plug 'vim-scripts/mru.vim'
Plug 'easymotion/vim-easymotion'

\" Syntax
Plug 'chr4/nginx.vim'
Plug 'othree/html5.vim'
Plug 'nvie/vim-flake8'
Plug 'plasticboy/vim-markdown'
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-rails'

\" Helpers
Plug 'amix/open_file_under_cursor.vim'
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-commentary'
Plug 'terryma/vim-expand-region'
Plug 'godlygeek/tabular'
Plug 'michaeljsmith/vim-indent-object'
Plug 'tpope/vim-surround'
Plug 'maxbrunsfeld/vim-yankstack'

\" Git
Plug 'tpope/vim-fugitive'

\" Other
Plug 'junegunn/goyo.vim'
Plug 'amix/vim-zenroom2'
Plug 'garbas/vim-snipmate'
Plug 'honza/vim-snippets'

call plug#end()

source ~/.dotfiles/vimrcs/helpers.vim
source ~/.dotfiles/vimrcs/general.vim
source ~/.dotfiles/vimrcs/interface.vim
source ~/.dotfiles/vimrcs/edit.vim
source ~/.dotfiles/vimrcs/search.vim
source ~/.dotfiles/vimrcs/files.vim
source ~/.dotfiles/vimrcs/misc.vim
source ~/.dotfiles/vimrcs/command_line.vim" > ~/.vimrc

echo "Successfully installed"
