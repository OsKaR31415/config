" default value for the file running command
let g:file_running_command = "Dispatch "

" Run a file with AsyncRun
fun! AsyncRunCurrentFile()
    wa
    if &ft == "haskell"
        AsyncRun! ghci 
    elseif &ft == "java"
        AsyncRun! java %:t:r
    elseif &ft == "markdown"
        MarkdownCompile
    elseif &ft == "python"
        AsyncRun! python3 %
    elseif &ft == "scheme"
        AsycRun! cat % | guile
    endif
endfun
command! AsyncRunCurrentFile call AsyncRunCurrentFile()

" Run a file and let the interpreter open after execution
fun! RunWithInterpreter()
    wa
    let the_path = expand('%:p:h')
    let filename = ''.expand('%')
    if &ft == "python"
        call VimuxRunCommandInDir('python3 -i ' . filename, the_path)
    else
        echo "no runner for filetype " . &ft
    endif
endfun
command! RunWithInterpreter call RunWithInterpreter()

" Run a file
fun! RunCurrentFile()
    wa
    let filename = ''.expand('%:p')

    if &ft =~ "haskell"
        exec g:file_running_command . ' ghc ' . filename

    elseif &ft =~ "java"
        " let classname = expand('%:t:r')
        exec g:file_running_command . ' java ' . filename

    elseif &ft =~ "markdown"
        MarkdownCompile

    elseif &ft =~ "python"
        " call VimuxRunCommandInDir('python3 ' . filename, the_path)
        exec g:file_running_command . " python3 " . filename

    elseif &ft =~ "scheme"
        exec "Dispatch cat " . filename . " | guile"

    elseif &ft == "tex" || &ft == "latex"
        if !exists(g:latex_compiler)
            let g:latex_compiler = "pdflatex"
        endif
        exec g:file_running_command . " " . g:latex_compiler . ' -- ' . filename

    elseif &ft =~ "agda"
        AgdaLoad

    else
        echo "no runner for filetype " . &ft
    endif
endfun
command! RunCurrentFile call RunCurrentFile()

fun! RunnerSettings()
    let method = input("what running method to use ? [v]mux or [d]ispatch >")
    if method == "t"
        let g:file_running_command = "VimuxRunCommand "
    elseif method == "d"
        let g:file_running_command = "Dispatch "
    endif
endfun
command! RunnerSettings call RunnerSettings()

" running file
" with make (the dispatch plugin's `:Make`)
nnoremap <silent> <leader>m :up<cr>:Make<cr>
" this is to run make with the current file name as the target
nnoremap <silent> <leader>n :up<cr>:Make %<cr>

" with tmux
nnoremap <leader>j <cmd>RunCurrentFile<cr>
nnoremap <leader>i <cmd>RunWithInterpreter<cr>
" nnoremap <C-C> :Tmux <C-v><C-c><cr>
" run with ripple
" set in the ripple section
" nnoremap <leader>ri :%Ripple<cr>
"
