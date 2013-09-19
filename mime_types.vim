" For ejs templates. Needs a happy home.
autocmd BufNewFile,BufRead *jst.ejs set filetype=html
autocmd BufNewFile,BufRead *.zsh-theme set filetype=zsh
autocmd BufNewFile,BufRead *_spec.rb compiler rspec

autocmd FileType asc setlocal filetype=asciicode
autocmd BufNewFile,BufReadPost Capfile,Cheffile setfiletype ruby
autocmd FileType md setlocal filetype=markdown
autocmd FileType css  setlocal foldmethod=indent shiftwidth=2 tabstop=2
