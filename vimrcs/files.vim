" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile

" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 4 spaces
set shiftwidth=2
set tabstop=2

" Linebreak on 500 characters
set lbr
set tw=500

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" MRU settings
let MRU_Max_Entries = 400
map <leader>f :MRU<CR>

" fzf settings
let g:fzf_command_prefix = 'Fzf'

map <c-f> :FzfFiles<cr>
map <c-b> :FzfBuffers<cr>
map <c-t> :FzfTags<cr>

" Vim grep
let Grep_Skip_Dirs = 'RCS CVS SCCS .svn generated'
set grepprg=/bin/grep\ -nH

" Nerd Tree
let g:NERDTreeWinPos = "right"
let NERDTreeShowHidden=0
let NERDTreeIgnore = ['\.pyc$', '__pycache__']
let g:NERDTreeWinSize=35
map <leader>nn :NERDTreeToggle<cr>
map <leader>nb :NERDTreeFromBookmark<Space>
map <leader>nf :NERDTreeFind<cr>

" Close the current buffer
map <leader>d :Bclose<cr>:tabclose<cr>gT

" Close all the buffers
map <leader>ba :bufdo bd<cr>

map <silent> <a-l> <Plug>lightline#mru#next_file()
map <silent> <a-h> <Plug>lightline#mru#prev_file()

" Useful mappings for managing tabs
map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove
map <leader>t<leader> :tabnext

" Let 'tl' toggle between this and the last accessed tab
let g:lasttab = 1
nmap <Leader>tl :exe "tabn ".g:lasttab<CR>
au TabLeave * let g:lasttab = tabpagenr()

" Opens a new tab with the current buffer's path
" Super useful when editing files in the same directory
map <leader>te :tabedit <c-r>=expand("%:p:h")<cr>/

" Switch CWD to the directory of the open buffer
map <leader>cd :cd %:p:h<cr>:pwd<cr>

" Specify the behavior when switching between buffers
try
  set switchbuf=useopen,usetab,newtab
catch
endtry

" Return to last edit position when opening files (You want this!)
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" Turn persistent undo on
" means that you can undo even when you close a buffer/VIM
try
    set undodir=~/.vim/temp_dirs/undodir
    set undofile
catch
endtry

""""""""""""""""""""""""""""""
" => Dart section
""""""""""""""""""""""""""""""
au FileType dart set shiftwidth=2
au FileType dart set tabstop=2
au FileType dart let dart_style_guide = 2
au FileType dart let dart_format_on_save = 1

""""""""""""""""""""""""""""""
" => Python section
""""""""""""""""""""""""""""""
"let python_highlight_all = 0
au FileType python syn keyword pythonDecorator True None False self

au BufNewFile,BufRead *.jinja set syntax=htmljinja
au BufNewFile,BufRead *.mako set ft=mako

au FileType python map <buffer> F :set foldmethod=indent<cr>

au FileType python inoremap <buffer> $r return
au FileType python inoremap <buffer> $i import
au FileType python inoremap <buffer> $p print
au FileType python inoremap <buffer> $f # --- <esc>a
au FileType python map <buffer> <leader>1 /class
au FileType python map <buffer> <leader>2 /def
au FileType python map <buffer> <leader>C ?class
au FileType python map <buffer> <leader>D ?def
au FileType python set cindent
au FileType python set cinkeys-=0#
au FileType python set indentkeys-=0#


""""""""""""""""""""""""""""""
" => JavaScript section
"""""""""""""""""""""""""""""""

au FileType javascript set shiftwidth=2
au FileType javascript set tabstop=2
au FileType vue set shiftwidth=2
au FileType vue set tabstop=2

au FileType javascript call JavaScriptFold()
au FileType javascript setl fen
au FileType javascript setl nocindent

au FileType javascript imap <c-t> $log();<esc>hi
au FileType javascript imap <c-a> alert();<esc>hi

au FileType javascript inoremap <buffer> $r return
au FileType javascript inoremap <buffer> $f // --- PH<esc>FP2xi

function! JavaScriptFold()
    setl foldmethod=syntax
    setl foldlevelstart=1
    syn region foldBraces start=/{/ end=/}/ transparent fold keepend extend

    function! FoldText()
        return substitute(getline(v:foldstart), '{.*', '{...}', '')
    endfunction
    setl foldtext=FoldText()
endfunction

autocmd FileType vue syntax sync fromstart

""""""""""""""""""""""""""""""
" => CoffeeScript section
"""""""""""""""""""""""""""""""
function! CoffeeScriptFold()
    setl foldmethod=indent
    setl foldlevelstart=1
endfunction
au FileType coffee call CoffeeScriptFold()

au FileType gitcommit call setpos('.', [0, 1, 1, 0])

""""""""""""""""""""""""""""""
" => Ruby on Rails section
"""""""""""""""""""""""""""""""
map <leader>r :R<cr>
au FileType ruby, eruby imap <c-t> $log();<esc>hi

""""""""""""""""""""""""""""""
" => Shell section
""""""""""""""""""""""""""""""
set termguicolors                    " Enable GUI colors for the terminal to get truecolor
if exists('$TMUX')
    if has('nvim')
        set termguicolors
    else
        set term=screen-256color
    endif
endif

""""""""""""""""""""""""""""""
" => Clojure section
"""""""""""""""""""""""""""""""
au FileType clojure set shiftwidth=2
au FileType clojure set tabstop=2
let g:paredit_shortmaps = 1

""""""""""""""""""""""""""""""
" => Twig section
""""""""""""""""""""""""""""""
autocmd BufRead *.twig set syntax=html filetype=html

""""""""""""""""""""""""""""""
" => Ctags section
""""""""""""""""""""""""""""""
let g:gutentags_exclude_project_root=['/usr/local', $HOME]
nnoremap <silent> <Leader>t :TagbarToggle<CR>

""""""""""""""""""""""""""""""
" => Notational-fzf section
""""""""""""""""""""""""""""""
let g:nv_search_paths = ['~/Notes']
nnoremap <silent> <Leader>s :NV<CR>
