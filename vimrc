" Example Vim configuration.
" Copy or symlink to ~/.vimrc or ~/_vimrc.

call pathogen#runtime_append_all_bundles()

source ~/.vim/global.vim
source ~/.vim/bindings.vim
source ~/.vim/plugins.vim

if filereadable(expand("~/.vim_local"))
  source ~/.vim_local
endif

if filereadable(expand("~/.vim/cucumber_tables.vim"))
  source ~/.vim/cucumber_tables.vim
endif

if filereadable(expand("~/.vim/ruby.vim"))
  source ~/.vim/ruby.vim
endif

set nocompatible                  " Must come first because it changes other options.

" silent! call pathogen#runtime_append_all_bundles()

syntax enable                     " Turn on syntax highlighting.
filetype plugin indent on         " Turn on file type detection.

set history=10000                 " Keep a decent history

set showcmd                       " Display incomplete commands.
set showmode                      " Display the mode you're in.

set backspace=indent,eol,start    " Intuitive backspacing.

set hidden                        " Handle multiple buffers better.

set wildmenu                      " Enhanced command line completion.
set wildmode=list:longest         " Complete files like a shell.

set ignorecase                    " Case-insensitive searching.
set smartcase                     " But case-sensitive if expression contains a capital letter.

set number                        " Show line numbers.
set ruler                         " Show cursor position.

set showmatch                     " Show matching brackets
set incsearch                     " Highlight matches as you type.
set hlsearch                      " Highlight matches.
set ignorecase smartcase          " make searches case-sensitive only if they contain upper-case characters

set scrolloff=3                   " Show 3 lines of context around the cursor.

" Prevent Vim from clobbering the scrollback buffer. See
" http://www.shallowsky.com/linux/noaltscreen.html
set t_ti= t_te=

set title                         " Set the terminal's title

set visualbell                    " No beeping.

set nobackup                      " Don't make a backup before overwriting a file.
set nowritebackup                 " And again.
set directory=$HOME/.vim/tmp//,.  " Keep swap files in one location

" UNCOMMENT TO USE
set tabstop=2                    " Global tab width.
set shiftwidth=2                 " And again, related.
set expandtab                    " Use spaces instead of tabs

set laststatus=2                  " Show the status line all the time
