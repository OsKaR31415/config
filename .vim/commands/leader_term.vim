

" leader-t for terminals
function! LeaderTMenuExecuter(foo, index)
    if a:index == -1 || a:index == 1
        echo "canceled"
    elseif a:index == 2
        exec "term"
    elseif a:index == 3
        exec "term"
    elseif a:index == 4
        exec "vert term"
    elseif a:index == 5
        exec "tab term"
    elseif a:index == 6
        exec "term ptpython"
    elseif a:index == 7
        exec "vert term ptpython"
    elseif a:index == 8
        exec "sh"
    elseif a:index == 9
        exec "term ++curwin"
    elseif a:index == 10
        exec "term ++hidden ++open " . input("term ++hidden ++open ")
    elseif a:index
        exec "vert term ++hidden ++open " . input("vert term ++hidden ++open ")
    else
        echo a:index
    endif
endfunction



let g:leader_t_options = [
            \ "[cancel]",
            \ "n: new term",
            \ "s: split term",
            \ "v: vertical split term",
            \ "t: tab term",
            \ "p: python shell",
            \ "P: vertical python shell",
            \ "s: start shell only (pause vim)",
            \ "h: term here (current window)",
            \ "a: start a job and open only when finished",
            \ "A: start a job and open only when finished (vertical)"
            \ ]

nnoremap <leader>n :LeaderTPopup<cr>
command! LeaderTPopup call popup_create(g:leader_t_options, #{ callback: 'LeaderTMenuExecuter', border: [], padding:  [0, 1, 0, 1], filter: 'popup_filter_menu', cursorline: 1})


nnoremap <leader>tn :term<cr>
nnoremap <leader>ts :term<cr>
nnoremap <leader>tv :vert term<cr>
nnoremap <leader>tt :tab term<cr>
nnoremap <leader>tp :term ptpython<cr>
nnoremap <leader>tP :vert term ptpython<cr>
nnoremap <leader>ts :sh<cr>
nnoremap <leader>th :term ++curwin<cr>
" run a command and open the windows only when it's done
nnoremap <leader>ta :term ++hidden ++open
nnoremap <leader>tA :term ++hidden ++open

