set runtimepath+=~/.vim

call plug#begin('~/.vim/plugins')
" Interface
Plug 'morhetz/gruvbox'
Plug 'robertmeta/nofrils'
Plug 'myusuf3/numbers.vim'
Plug 'itchyny/lightline.vim'

" Utils
Plug 'tomtom/tlib_vim'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'sophacles/vim-bundle-mako'
Plug 'KabbAmine/zeavim.vim'
Plug 'mattn/emmet-vim'
Plug 'Quramy/tsuquyomi'
Plug 'Valloric/YouCompleteMe'
Plug 'Shougo/vimproc.vim', {'do' : 'make'}

" Search
Plug 'mileszs/Ack.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'scrooloose/nerdtree'
Plug 'vim-scripts/mru.vim'
Plug 'easymotion/vim-easymotion'
Plug 'ludovicchabant/vim-gutentags'
Plug 'majutsushi/tagbar'
Plug 'ton/vim-bufsurf'

" Syntax
Plug 'sheerun/vim-polyglot'
Plug 'sheerun/vim-polyglot'
Plug 'chr4/nginx.vim'
Plug 'othree/html5.vim'
Plug 'nvie/vim-flake8'
Plug 'plasticboy/vim-markdown'
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-rails'
Plug 'posva/vim-vue'
Plug 'dart-lang/dart-vim-plugin'
Plug 'PotatoesMaster/i3-vim-syntax'
Plug 'leafgarland/typescript-vim'

" Helpers
Plug 'amix/open_file_under_cursor.vim'
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-commentary'
Plug 'terryma/vim-expand-region'
Plug 'godlygeek/tabular'
Plug 'michaeljsmith/vim-indent-object'
Plug 'tpope/vim-surround'
Plug 'maxbrunsfeld/vim-yankstack'
Plug 'reisub0/hot-reload.vim'

" Git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

" Other
Plug 'junegunn/goyo.vim'
Plug 'amix/vim-zenroom2'
Plug 'garbas/vim-snipmate'
Plug 'honza/vim-snippets'

call plug#end()

source ~/.vim/vimrcs/helpers.vim
source ~/.vim/vimrcs/general.vim
source ~/.vim/vimrcs/interface.vim
source ~/.vim/vimrcs/edit.vim
source ~/.vim/vimrcs/search.vim
source ~/.vim/vimrcs/files.vim
source ~/.vim/vimrcs/misc.vim
source ~/.vim/vimrcs/command_line.vim
