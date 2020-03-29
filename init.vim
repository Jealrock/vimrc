set runtimepath+=~/.config/nvim

call plug#begin('~/.vim/plugins')
" Interface
Plug 'morhetz/gruvbox'
Plug 'robertmeta/nofrils'
Plug 'myusuf3/numbers.vim'
Plug 'itchyny/lightline.vim'
Plug 'jealrock/lightline-mru'

" Utils
Plug 'tomtom/tlib_vim'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'sophacles/vim-bundle-mako'
Plug 'KabbAmine/zeavim.vim'
Plug 'vim-scripts/paredit.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}"
Plug 'kkoomen/vim-doge', {'on': 'DogeGenerate'}
Plug 'ntpeters/vim-better-whitespace'
Plug 'tpope/vim-repeat'
Plug 'kamykn/spelunker.vim'
Plug 'AndrewRadev/splitjoin.vim'
" Plug 'wellle/context.vim'

" Search
Plug 'mileszs/Ack.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'scrooloose/nerdtree'
Plug 'vim-scripts/mru.vim'
Plug 'ludovicchabant/vim-gutentags'
Plug 'majutsushi/tagbar'
Plug 'dyng/ctrlsf.vim'

" Syntax
Plug 'sheerun/vim-polyglot'
Plug 'chr4/nginx.vim'
Plug 'othree/html5.vim'
Plug 'nvie/vim-flake8'
Plug 'plasticboy/vim-markdown'
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-rails'
Plug 'posva/vim-vue'
Plug 'PotatoesMaster/i3-vim-syntax'
Plug 'leafgarland/typescript-vim'
Plug 'ekalinin/Dockerfile.vim'
Plug 'ap/vim-css-color', { 'for': ['css', 'scss', 'less'] }

" Helpers
" Plug 'amix/open_file_under_cursor.vim'
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-commentary'
Plug 'terryma/vim-expand-region'
Plug 'godlygeek/tabular'
Plug 'michaeljsmith/vim-indent-object'
Plug 'tpope/vim-surround'
Plug 'maxbrunsfeld/vim-yankstack'
Plug 'reisub0/hot-reload.vim'
Plug 'Yggdroot/indentLine'

" Git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

" Other
Plug 'alok/notational-fzf-vim', { 'on': 'NV' }

call plug#end()

source ~/.config/nvim/vimrcs/helpers.vim
source ~/.config/nvim/vimrcs/general.vim
source ~/.config/nvim/vimrcs/interface.vim
source ~/.config/nvim/vimrcs/edit.vim
source ~/.config/nvim/vimrcs/search.vim
source ~/.config/nvim/vimrcs/files.vim
source ~/.config/nvim/vimrcs/misc.vim
source ~/.config/nvim/vimrcs/command_line.vim
source ~/.config/nvim/vimrcs/coc.vim
