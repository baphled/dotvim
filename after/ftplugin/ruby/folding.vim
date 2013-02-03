set foldtext=RubyFold()
set fillchars=fold:\ 
 
function! RubyFold()
  let line = getline(v:foldstart)
  let lastline = getline(v:foldend)
  let numfolded = v:foldend - v:foldstart + 1
  return line . '  folded ' . numfolded . ' lines'
endfunction
 
highlight Folded term=bold ctermbg=0 ctermfg=7 guibg=bg guifg=fg
highlight FoldColumn term=bold ctermbg=10 ctermfg=7 guibg=bg guifg=fg
