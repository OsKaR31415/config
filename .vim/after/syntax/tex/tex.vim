set makeprg=pdflatex\ %

" markdown headers coloration
syn match htmlH1 "^# .\+$"
syn match htmlH2 "^## .\+$"
syn match htmlH3 "^### .\+$"
syn match htmlH4 "^#### .\+$"
syn match htmlH5 "^##### .\+$"
syn match htmlH6 "^###### .\+$"

hi htmlH1 cterm=bold,underline ctermfg=208
hi htmlH2 cterm=bold,underline ctermfg=33
hi htmlH3 cterm=bold ctermfg=28
hi htmlH4 cterm=bold ctermfg=38
hi htmlH5 cterm=bold ctermfg=25
hi htmlH6 cterm=bold ctermfg=240


" nnoremap <leader>j :AsyncRun -save=2 pdflatex %<CR>:AsyncRun rm %:r.aux<CR>:AsyncRun rm %:r.out<cr>

" g:latex_compiler is used for the settings of the
" file compilation. see .vim/commands/leader.vim
fun! g:SetLatexCompiler()
    let g:latex_compiler = input("latex compiler >")
endfun
command! SetLatexCompiler call g:SetLatexCompiler()

" open matching pdf (with the default engine : skim)
command! PdfOpen !open %:r.pdf &

function! BuildHeader()
    " protect the keyword : must be written on the first line.
    if line('.') != 1
        return "header"
    endif

    let title = input("title:")
    let subtitle = input("subtitle:")
    let author = input("author:")
    let front = "\\documentclass[10pt]{scrartcl}\n\n\\usepackage[utf8]{inputenc}\n\\usepackage[T1]{fontenc}\n\\usepackage[french]{babel}\n\n\\usepackage[top=2cm, bottom=2.5cm, left=1cm, right=1cm]{geometry}\n\\usepackage{amsmath, amssymb, amsfonts, mathrsfs}\n\n\n"

    return front . "\\title{" . title . "}\n\\subtitle{" . subtitle . "}\n\\author{". author . "}\n\n\\begin{document}\n\n\\end{document}"
endfunction
iabbrev header <C-R>=BuildHeader()<cr>



" " math
" for letter in ['B', 'C', 'D', 'I', 'N', 'Q', 'R', 'T']
"     exec "iabbrev \\" . letter . " \\mathbb{" . letter . "}"
" endfor

" " mathscr : \s* (* is an uppercase letter)
" " math
" for letter in ['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z']
"     exec "au filetype tex,markdown iabbrev \s" . letter . " \mathscr{" . letter . "}"
" endfor


iabbrev \u \usepackage[]{



