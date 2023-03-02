" syntax for alda filetype

" load current file into the repl
fun! AldaReplLoadCurrentFile()
    exec "Ripple :load " . expand("%")
endfun

" play the loaded song in the repl
fun! AldaReplPlayCurrentFile()
    exec "Ripple :play"
endfun

" load the current file and play it
fun! AldaReplLoadAndPlay()
    call AldaReplLoadCurrentFile()
    call AldaPlayCurrentFile()
endfun

nnoremap <leader>rl :call AldaReplLoadCurrentFile()<cr>
nnoremap <leader>rp :call AldaReplPlayCurrentFile()<cr>


au BufWritePost *.alda call AldaReplLoadCurrentFile()




