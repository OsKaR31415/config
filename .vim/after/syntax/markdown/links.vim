" ┏━┓┏┓ ┏━┓╻╺┳┓╻┏━┓┏┓╻
" ┃ ┃┣┻┓┗━┓┃ ┃┃┃┣━┫┃┗┫
" ┗━┛┗━┛┗━┛╹╺┻┛╹╹ ╹╹ ╹
" configuration pour obsidian

" nnoremap <leader>oo :silent !open 'obsidian://open?vault=VAULTNAME&file='.expand('%:r')

" " select the current reference (text inside [[...]])
" fun! ObsidianVisualSelectReference()
"     let s:current_char = strpart(getline('.'), col('.'), 1)
"     if s:current_char == '['
"         normal! f]
"     endif
"     " go to first ] or |
"     while s:current_char != ']' && s:current_char != '|'
"         normal! <right>
"         let s:current_char = strpart(getline('.'), col('.'), 1)
"     endwhile
"     " start visual selection
"     normal! v
"     " go to previous [
"     let s:current_char = strpart(getline('.'), col('.'), 1)
"     while s:current_char != '['
"         normal! <right>
"         let s:current_char = strpart(getline('.'), col('.'), 1)
"     endwhile
" endfun

 " ⡎⠑ ⡎⢱ ⣏⡱ ⢇⢸   ⣎⣱   ⡇  ⡇ ⡷⣸ ⣇⠜
 " ⠣⠔ ⠣⠜ ⠇   ⠇   ⠇⠸   ⠧⠤ ⠇ ⠇⠹ ⠇⠱
fun! CopyMarkdownLink()
    " copy in register f what is inside [] the default copying register is @0
    " i add l (<right>) so that wikilinks also work.
    " with the l, [[file.md]] will be copied correctly. without, it would be
    " copied as [file.md] instead of file.md
    normal! f[lyi[
    " ensure that the reference name ends with ".md"
    if @0[-3:] != ".md"
        let @0 = @0 . ".md"
    endif
    return @0
endfun
command! CopyMarkdownLink :call CopyMarkdownLink()
nnoremap cil :CopyMarkdownLink<cr>

 " ⡎⢱ ⣏⡱ ⣏⡉ ⡷⣸   ⡷⣸ ⣏⡉ ⢇⡸ ⢹⠁   ⡷⢾ ⣎⣱ ⣏⡱ ⣇⠜ ⡏⢱ ⡎⢱ ⡇⢸ ⡷⣸   ⡇  ⡇ ⡷⣸ ⣇⠜
 " ⠣⠜ ⠇  ⠧⠤ ⠇⠹   ⠇⠹ ⠧⠤ ⠇⠸ ⠸    ⠇⠸ ⠇⠸ ⠇⠱ ⠇⠱ ⠧⠜ ⠣⠜ ⠟⠻ ⠇⠹   ⠧⠤ ⠇ ⠇⠹ ⠇⠱
command! OpenMdLink :exec "e " . CopyMarkdownLink()
nnoremap go :OpenMdLink<cr>

command! ObsidianSplitOpenReference :exec "split " . CopyMarkdownLink()
nnoremap <leader>os :ObsidianSplitOpenReference<cr>
nnoremap <leader>ov :vert ObsidianSplitOpenReference<cr>
