" Example Vim graphical configuration.
" Copy to ~/.gvimrc or ~/_gvimrc.

set guifont=anonymous+Pro-Powerline-Powerline:20            " Font family and font size.
set antialias                     " MacVim: smooth fonts.
set encoding=utf-8                " Use UTF-8 everywhere.
set guioptions-=T                 " Hide toolbar.
set background=light              " Background.
set lines=25 columns=100          " Window dimensions.

set guioptions-=r                 " Don't show right scrollbar

"set cuc
set cul

set background=light
hi! CursorLine term=underline cterm=underline gui=underline