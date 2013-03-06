""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Ruby centric functionality to enhance my ruby workflow
"
"

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Running tests
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" vim-makegreen binds itself to ,t unless something else is bound to its
" function.
map <leader>\dontstealmymapsmakegreen :w\|:call MakeGreen('spec')<cr>

function! RunTests(filename)
    " Write the file and run tests for the given filename
    :w
    :silent !echo;echo;echo;echo;echo;echo;echo;echo;echo;echo
    if match(a:filename, '\.feature$') != -1
        exec ":!bundle exec cucumber " . a:filename
    elseif match(a:filename, '_spec\.js\.coffee$') != -1
        exec ":!bundle exec jasmine-headless-webkit " . a:filename
    elseif match(a:filename, '_test\.rb') != -1
      "If there is a colon in the file name we need to find the test method
      "name and use that to call the specific test
        exec ":!bundle exec ruby -I\"lib:test\" " . a:filename
    else
      exec ":!bundle exec rspec " . a:filename
    end
endfunction

function! SetTestFile()
    " Set the spec file that tests will be run for.
    let t:grb_test_file=@%
endfunction

function! RunTestFile(...)
    if a:0
        let command_suffix = a:1
    else
        let command_suffix = ""
    endif

    " Run the tests for the previously-marked file.
    let in_test_file = match(expand("%"), '\(.feature\|_spec.rb\|_test.rb\|_spec.js.coffee\)$') != -1
    if in_test_file
        call SetTestFile()
    elseif !exists("t:grb_test_file")
        return
    end
    call RunTests(t:grb_test_file . command_suffix)
endfunction

function! RunNearestTest()
    let spec_line_number = line('.')
    call RunTestFile(":" . spec_line_number)
endfunction

map <leader>t :call RunTestFile()<cr>
map <leader>T :call RunNearestTest()<cr>
map <leader>a :call RunTests('')<cr>

nnoremap <leader>c :exec "!clear; bundle exec cucumber " . bufname("%") . ":" . line(".")<CR>
map <leader>C :w\|:!bundle exec cucumber --profile wip<cr>
nnoremap <leader>cu :w\|:!bundle exec cucumber<cr>

" I've typically got rake setup to run all tests
map <leader>rr :w\|: !bundle exec rake<cr>
map <leader>pc :w\|:!RAILS_ENV=cucumber bundle exec rake assets:precompile<cr>

" Calling bundle shouldn't be so much of a pain
nmap <leader>B :Bundle<CR>

