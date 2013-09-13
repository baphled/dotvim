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
        exec ":Dispatch bundle exec cucumber --require features" . a:filename
    elseif match(a:filename, '_spec\.js\.coffee$') != -1
        exec ":Dispatch bundle exec jasmine-headless-webkit " . a:filename
    elseif match(a:filename, '_test\.rb') != -1
      "If there is a colon in the file name we need to find the test method
      "name and use that to call the specific test
        exec ":Dispatch bundle exec ruby -I\"lib:test\" " . a:filename
    else
      exec ":Dispatch bundle exec rspec " . a:filename
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

noremap <leader>c :exec "!clear; Display cucumber " . bufname("%") . ":" . line(".")<CR>
noremap <leader>C :w\|:Dispatch bundle exec cucumber --profile wip<cr>
noremap <leader>cu :w\|:Dispatch bundle exec cucumber<cr>

" I've typically got rake setup to run all tests
noremap <leader>rr :w\|: Dispatch bundle exec rake<cr>
noremap <leader>pc :w\|:!RAILS_ENV=cucumber Dispatch bundle exec rake assets:precompile<cr>

" Calling bundle shouldn't be so much of a pain
nmap <leader>B :Dispatch bundle<CR>
