" this is the netrw configuration file

" nmap <buffer> l <cr>
" nmap <buffer> L gn

" overrides <c-l> (thanks to <unique>) so that vim-tmux-navigator still works
" in netrw panes
" nmap <unique> <c-r> <Plug>(NetrwRefresh)

" <enter> makes the current file the top of the tree
" exact equivalent of gn
" silent! nnoremap <silent><buffer> <cr> :<C-U>Ntree<cr><cr>



