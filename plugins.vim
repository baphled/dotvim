" showmarks
let g:showmarks_enable = 0 " disabled by default by populardemand ;)
hi! link ShowMarksHLl LineNr
hi! link ShowMarksHLu LineNr
hi! link ShowMarksHLo LineNr
hi! link ShowMarksHLm LineNr

" syntastic
let g:syntastic_enable_signs=1
let g:syntastic_auto_loc_list=1

" delimitMate
let g:delimitMate_expand_space = 1
let g:delimitMate_expand_cr = 1

" nerdcommenter
" ,/ to invert comment on the current line/selection
nmap <leader>/ :call NERDComment(0, "invert")<cr>
vmap <leader>/ :call NERDComment(0, "invert")<cr>

" yankring
let g:yankring_replace_n_pkey = '<leader>['
let g:yankring_replace_n_nkey = '<leader>]'

" ,y to show the yankring
nmap <leader>y :YRShow<cr>

" CtrlP
let g:ctrlp_working_path_mode = 2                               "Set to a directory that contains .git
let g:ctrlp_map = '<unique> <silent> <Leader><Leader>'
nnoremap <unique> <silent> <Leader><Leader><Leader> :CtrlPClearAllCaches<CR>:CtrlP<CR>

" Fugitive
" ,e for Ggrep
nmap <leader>grep :Ggrep 

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Custom bindings for Fugitive
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <leader>gcb :Git checkout -b
nmap <leader>gr :Git rebase -i
nmap <leader>gcf :Git checkout -- %<CR>
nmap <leader>gst :Gstatus<CR>
nmap <leader>gp :Git push<CR>
nmap <leader>gl :Glog --<CR>

" Bindings to custom git commands
nmap <leader>gra :Git ra<CR>
nmap <leader>gdc :Git dc<CR>
nmap <leader>ggn :Git gn<CR>

" Ack
nmap <leader>ack :Ack 

if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

" vim-indentobject
" add Markdown to the list of indentation based languages
let g:indentobject_meaningful_indentation = ["haml", "sass", "python", "yaml", "markdown"]

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vimerl custom bindings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Automatic folding
let erlang_folding = 0

" Hide and show errors
nmap <leader>ee :ErlangEnableShowErrors<CR>
nmap <leader>ede :ErlangDisableShowErrors<CR>

" Skeleton bindings
nmap <leader>ea :ErlangApplication<CR>
nmap <leader>es :ErlangSupervisor<CR>
nmap <leader>eg :ErlangGenServer<CR>
nmap <leader>ef :ErlangGenFsm<CR>
nmap <leader>ege :ErlangGenEvent<CR>

" vim-repeat
" silent! call repeat#set("\<Plug>MyWonderfulMap", v:count)

" matichit
let loaded_matchit = 1

" vim-ruby
let ruby_operators = 1
let ruby_space_errors = 1

" nerdtree
" Load NERDTree if no files was passed when calling vim
autocmd vimenter * if !argc() | NERDTree | endif

" Toggle NERDTree
noremap <C-p> :NERDTreeToggle<CR>
nmap <leader>p :NERDTreeFind<CR>

" bufexplorer
noremap <leader>' :BufExplorer<CR>

" gis-vim
" TODO: Check the OS and set accordingly
let g:gist_clip_command = 'pbcopy'
let g:gist_detect_filetype = 1

" vim-powerline
let g:Powerline_symbols = 'fancy'

" vim-solarized
hi! CursorLine term=underline cterm=underline gui=underline

let g:solarized_termtrans=1 " 1|0 background transparent
let g:solarized_bold=1 " 1|0 show bold fonts
let g:solarized_italic=1 " 1|0 show italic fonts
let g:solarized_underline=1 " 1|0 show underlines
let g:solarized_contrast="normal" " normal|high|low contrast
let g:solarized_visibility="low" " normal|high|low effect on whitespace characters

" xmpfilter
nmap <buffer> <F5> <Plug>(xmpfilter-run)
xmap <buffer> <F5> <Plug>(xmpfilter-run)
imap <buffer> <F5> <Plug>(xmpfilter-run)

nmap <buffer> <F4> <Plug>(xmpfilter-mark)
xmap <buffer> <F4> <Plug>(xmpfilter-mark)
imap <buffer> <F4> <Plug>(xmpfilter-mark)