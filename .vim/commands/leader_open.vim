
" leader-o for open
function! LeaderOMenuExecuter(foo, index)
    if a:index == 2
        exec "Ranger"
    elseif a:index == 3
        exec "RangerCurrentFile"
    elseif a:index == 4
        exec "RangerNewTab"
    elseif a:index == 5
        exec "RangerCurrentFileNewTab"
    elseif a:index == 6
        exec "new"
        exec "Ranger"
    elseif a:index == 7
        exec "vert new"
        exec "Ranger"
    elseif a:index == 8
        exec ":Calc"
    elseif a:index == 9
        exec "!open %:p:h"
    elseif a:index == 10
        exec "OpenRepl"
    elseif a:index == 11
        exec "OpenReplHere"
    elseif a:index == 12
        exec "new"
    elseif a:index == 13
        exec "Find"
    elseif a:index == 14
        exec "Find %:p:h"
    elseif a:index == -1 || a:index == 1
        echo "canceled"
    else
        echo a:index
    endif
endfunction

let g:leader_o_options = [
            \ "[cancel]",
            \ "F: ranger",
            \ "f: ranger current file",
            \ "T: ranger new tab",
            \ "t: ranger current file new tab",
            \ "s: ranger split",
            \ "v: ranger vertical split",
            \ " c: new vCalc buffer",
            \ " o: reveal in finder",
            \ " r: open Repl",
            \ " R: open Repl on currend window",
            \ " e: open new empty buffer",
            \ "D: fzf",
            \ "d: fzf (current file)"
            \ ]

nnoremap <leader>o :LeaderOPopup<cr>
command! LeaderOPopup call popup_create(g:leader_o_options, #{ callback: 'LeaderOMenuExecuter', border: [], padding:  [0, 1, 0, 1], filter: 'popup_filter_menu', cursorline: 1})

" reveal in finder
nnoremap <leader>oo :!open %:r<cr>
" open with ranger
nnoremap <leader>of :Ranger<cr>
nnoremap <leader>oF :RangerCurrentFile<cr>
nnoremap <leader>ot :RangerNewTab<cr>
nnoremap <leader>oT :RangerCurrentFileNewTab<cr>
nnoremap <leader>os :new<cr>:Ranger<cr>
nnoremap <leader>ov :vert new<cr>:Ranger<cr>
" fzf
nnoremap <leader>od :Files %:p:h<cr>
nnoremap <leader>oD :Files<cr>
" repl
nnoremap <leader>or :OpenRepl<cr>
nnoremap <leader>oR :OpenReplHere<cr>
" empty buffer
nnoremap <leader>oe :new<cr>
" Vcalc buffer
nnoremap <leader>oc :Calc<cr>










