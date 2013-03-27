" be 'modern'
set nocompatible
syntax on
filetype plugin indent on

" prevent vim from adding that stupid empty line at the end of every file
set noeol
set binary

" presentation settings
set number              " precede each line with its line number
set numberwidth=3       " number of culumns for line numbers
"set textwidth=0         " Do not wrap words (insert)
set nowrap              " Do not wrap words (view)
set showcmd             " Show (partial) command in status line.
set showmatch           " Show matching brackets.
set ruler               " line and column number of the cursor position
set wildmenu            " enhanced command completion
set visualbell          " use visual bell instead of beeping
set laststatus=2        " always show the status line
set encoding=utf-8      " Necessary to show unicode
set listchars=tab:▷⋅,trail:·,eol:$
"set listchars=tab:▷⋅,trail:·
set list

" This is the default setting
" TODO I want this to be customisable dependant on the mime type
set colorcolumn=118
set textwidth=118


" Enable Cursor line
set cursorline
" Enable Cursor column
set cursorcolumn
" status line

set statusline=%<%1*%f%*\ %h%m%r%#warningmsg#%{SyntasticStatuslineFlag()}%*%=%-14.(%l,%c%V%)\ %P

" behavior
                        " ignore these files when completing names and in
                        " explorer
set wildignore=.svn,CVS,.git,.hg,*.o,*.a,*.class,*.mo,*.la,*.so,*.obj,*.swp,*.jpg,*.png,*.xpm,*.gif
set shell=/bin/bash     " use of zsh for shell commands breaks things
set autowriteall        " Automatically save before commands like :next and :make
set hidden              " enable multiple modified buffers
set history=1000
set autoread            " automatically read feil that has been changed on disk and doesn't have changes in vim
set backspace=indent,eol,start
set guioptions-=T       " disable toolbar"
set completeopt=menuone,preview
let bash_is_sh=1        " syntax shell files as bash scripts
set cinoptions=:0,(s,u0,U1,g0,t0 " some indentation options ':h cinoptions' for details
set modelines=5         " number of lines to check for vim: directives at the start/end of file
"set fixdel                 " fix terminal code for delete (if delete is broken but backspace works)

set et                  " expand tabs into spaces

" mouse settings
if has("mouse")
  set mouse=a
endif
set mousehide                           " Hide mouse pointer on insert mode."

" search settings
set incsearch           " Incremental search
set hlsearch            " Highlight search match
"set ignorecase          " Do case insensitive matching
set smartcase           " do not ignore if search pattern has CAPS

" omni completion settings
set ofu=syntaxcomplete#Complete
let g:rubycomplete_buffer_loading = 0
let g:rubycomplete_classes_in_global = 1

" directory settings
set backupdir=~/.backup,.       " list of directories for the backup file
set directory=~/.backup,~/tmp,. " list of directory names for the swap file
set nobackup            " do not write backup files
set noswapfile          " do not write .swp files

" folding
set foldcolumn=0        " columns for folding
set foldmethod=indent
set foldlevel=9
set nofoldenable        "dont fold by default "

" extended '%' mapping for if/then/else/end etc
runtime macros/matchit.vim

" Jump to the last position the cursor was in when you left the file
augroup vimrcEx
  autocmd BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal g`\"" |
    \ endif
augroup vimrcEx
