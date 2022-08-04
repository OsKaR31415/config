" default value for the file running command
let g:file_running_command = "VimuxRunCommand "

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

" Run a file
fun! RunCurrentFile()
    wa
    let the_path = expand('%:p:h')
    let filename = ''.expand('%')

    if &ft == "haskell"
        call VimuxRunCommandInDir('ghc ' . filename, the_path)

    elseif &ft == "java"
        let classname = expand('%:t:r')
        call VimuxRunCommandInDir('java ' . filename, the_path)

    elseif &ft == "markdown"
        MarkdownCompile

    elseif &ft == "python"
        call VimuxRunCommandInDir('python3 ' . filename, the_path)

    elseif &ft == "scheme"
        call VimuxRunCommandInDir('cat ' . filename . ' | guile', the_path)

    elseif &ft == "tex" || &ft == "latex"
        if !exists(g:latex_compiler)
            let g:latex_compiler = "pdflatex"
        endif
        exec run . g:latex_compiler . ' -- ' . filename . '"'
        call VimuxRunCommandInDir(g:latex_compiler . ' -- ' . filename . '"', the_path)

    elseif &ft == "agda"
        AgdaLoad

    else
        echo "no runner for filetype " . &ft
    endif
endfun
command! RunCurrentFile call RunCurrentFile()

fun! RunnerSettings()
    let method = input("what running method to use ? [t]mux or [v]im terminal >")
    if method == "t"
        let g:file_running_command = "VimuxRunCommand "
    elseif method == "v"
        let g:file_running_command = "SendToTerm "
    endif
endfun
command! RunnerSettings call RunnerSettings()

" running file
" with make (the dispatch plugin's `:Make`
nnoremap <silent> <leader>m :up<cr>:Make<cr>
" this is to run make only for the current file (if it's in the makefile)
nnoremap <silent> <leader>n :up<cr>:Make %<cr>
" with asycrun.vim
nnoremap <leader>a :AsyncRunCurrentFile<cr>
" with tmux
nnoremap <leader>j :RunCurrentFile<cr>
nnoremap <C-C> :Tmux <C-v><C-c><cr>
" run with ripple
" set in the ripple section
" nnoremap <leader>ri :%Ripple<cr>
"
