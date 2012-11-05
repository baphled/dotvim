let mapleader = ","

let g:Powerline_symbols = 'fancy'

" Don't use Ex mode, use Q for formatting
map Q gq

"make Y consistent with C and D
nnoremap Y y$

" Ctrol-E to switch between 2 last buffers
nmap <C-E> :b#<CR>

" ,e to fast finding files. just type beginning of a name and hit TAB
nmap <leader>e :e **/

" Make shift-insert work like in Xterm
map <S-Insert> <MiddleMouse>
map! <S-Insert> <MiddleMouse>

" Toggle spell checker
nmap <leader>sp :set spell!<CR>

"set completeopt=menuone,preview,longest
set completeopt=menuone,preview

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Custom bindings for increasing/decreasing the height and width of a buffer
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <leader>< :vertical res +10^M<CR>
nmap <leader>> :vertical res -10^M<CR>

" Toggle paste
set pastetoggle=<F12>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Custom bindings for moving lines around alah TextMate
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

vmap <C-K> [egv
vmap <C-J> ]egv

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" MISC KEY MAPS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Move around splits with <c-hjkl>
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

" Insert a hash rocket with <c-l>
imap <c-l> <space>=><space>

" Pressing ESC can be quite a stretch
imap <c-c> <esc>

" Clear the search buffer when hitting return
function! MapCR()
  nnoremap <cr> :nohlsearch<cr>
endfunction
call MapCR()
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Shortcuts
"
" Change Working Directory to that of the current file
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
cmap cwd lcd %:p:h
cmap cd. lcd %:p:h

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Format raw JSON string
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <leader>jt <Esc>:%!python -m json.tool<CR><Esc>:set filetype=json<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Automatically set syntax
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if did_filetype()   " filetype already set..
    finish      " ..don't do these checks
endif
if getline(1) =~ '^#!.*\<mine\>'
    setfiletype mine
elseif getline(1) =~? '\<drawing\>'
    setfiletype drawing
endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ARROW KEYS ARE UNACCEPTABLE

" Using these to get out of the habit of using the arrow keys
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <Left> <Nop>
map <Right> <Nop>
map <Up> <Nop>
map <Down> <Nop>

" Reload my ctags for this project
"
" @TODO: Only do this when coding.
noremap <leader>ct :!ctags -R .<CR>

" Gitscribe
"
noremap <leader>gsa :Git scribe gen all<CR>
noremap <leader>gss :Git scribe gen site<CR>
noremap <leader>gsp :Git scribe gen pdf<CR>