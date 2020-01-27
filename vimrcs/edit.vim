" Remap VIM 0 to first non-blank character
map 0 ^

" Map copying and pasting to/from system clipboard
vnoremap <leader>c "*y :let @+=@*<CR>
map <C-v> "+P

" Move a line of text using ALT+[jk] or Command+[jk] on mac
nmap <A-j> mz:m+<cr>`z
nmap <A-k> mz:m-2<cr>`z
vmap <A-j> :m'>+<cr>`<my`>mzgv`yo`z
vmap <A-k> :m'<-2<cr>`>my`<mzgv`yo`z

if has("mac") || has("macunix")
  nmap <D-j> <C-j>
  nmap <D-k> <C-k>
  vmap <D-j> <C-j>
  vmap <D-k> <C-k>
endif

" Delete trailing white space on save, useful for some filetypes ;)
fun! CleanExtraSpaces()
    let save_cursor = getpos(".")
    let old_query = getreg('/')
    silent! %s/\s\+$//e
    call setpos('.', save_cursor)
    call setreg('/', old_query)
endfun

if has("autocmd")
    autocmd BufWritePre *.txt,*.js,*.py,*.wiki,*.sh,*.coffee :call CleanExtraSpaces()
endif

" Pressing ,ss will toggle and untoggle spell checking
map <leader>ss :setlocal spell!<cr>

" Shortcuts using <leader>
map <leader>sn ]s
map <leader>sp [s
map <leader>sa zg
map <leader>s? z=

" Parenthesis/bracket
vnoremap $1 <esc>`>a)<esc>`<i(<esc>
vnoremap $2 <esc>`>a]<esc>`<i[<esc>
vnoremap $3 <esc>`>a}<esc>`<i{<esc>
vnoremap $$ <esc>`>a"<esc>`<i"<esc>
vnoremap $q <esc>`>a'<esc>`<i'<esc>
vnoremap $e <esc>`>a"<esc>`<i"<esc>

" Map auto complete of (, ", ', [
inoremap $1 ()<esc>i
inoremap $2 []<esc>i
inoremap $3 {}<esc>i
inoremap $4 {<esc>o}<esc>O
inoremap $q ''<esc>i
inoremap $e ""<esc>i

" General abbreviations
iab xdate <c-r>=strftime("%d/%m/%y %H:%M:%S")<cr>

" YankStack settings
let g:yankstack_yank_keys = ['y', 'd']

nmap <c-p> <Plug>yankstack_substitute_older_paste
nmap <c-n> <Plug>yankstack_substitute_newer_paste

" UltiSnip
let g:UltiSnipsSnippetDirectories=[$HOME.'/.vim/ultisnips']
let g:UltiSnipsExpandTrigger="<m-l>"
let g:UltiSnipsJumpForwardTrigger="<m-j>"
let g:UltiSnipsJumpBackwardTrigger="<m-k>"

" Add tabs through normal mode command
nnoremap <leader>TT  @="I<C-v><C-H><C-v><C-[>j"<CR>
nnoremap <leader>tt  @="I<C-v><C-I><C-v><C-[>j"<CR>

function! DeleteTabs(count)
    let save_pos = getpos(".")
    execute "normal " . a:count . ",TT"
    call setpos(".", save_pos)
    execute "normal 0"
endfunction

function! AddTabs(count)
    let save_pos = getpos(".")
    execute "normal " . a:count . ",tt"
    call setpos(".", save_pos)
    execute "normal 0"
endfunction

command! -nargs=1 DeleteTabsCmd call DeleteTabs(<args>)
command! -nargs=1 AddTabsCmd call AddTabs(<args>)
map T :<C-U>DeleteTabsCmd(v:count)<CR>
map tt :<C-U>AddTabsCmd(v:count)<CR>

" surround.vim config
" Annotate strings with gettext
vmap Si S(i_<esc>f)
au FileType mako vmap Si S"i${ _(<esc>2f"a) }<esc>

" Quickfix window
map <C-n> :cn<CR>
map <C-k> :cp<CR>
