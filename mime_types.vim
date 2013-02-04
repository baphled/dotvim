" For ejs templates. Needs a happy home.
autocmd BufNewFile,BufRead *jst.ejs set filetype=html
autocmd BufNewFile,BufRead *.zsh-theme set filetype=zsh
autocmd BufNewFile,BufRead *_spec.rb compiler rspec

" Automatic fold settings for specific files. Uncomment to use.
autocmd FileType asc setlocal filetype=asciicode
autocmd FileType md setlocal filetype=markdown
autocmd FileType css  setlocal foldmethod=indent shiftwidth=2 tabstop=2
