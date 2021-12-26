
command! MarkdownTableAlignCenter s/|\zs\(-\|:\)\ze\|\zs\(-\|:\)\ze|/:/g
command! MarkdownTableNoAlign     s/|\zs\(-\|:\)\ze\|\zs\(-\|:\)\ze|/-/g
command! MarkdownTableAlignRight  s/|\zs\(-\|:\)\ze/-/g
command! MarkdownTableAlignLeft   s/\zs\(-\|:\)\ze|/-/g

command! MarpPreview    :AsyncRun marp % -p
command! MarpPdfPreview :AsyncRun marp % --pdf -p
command! MarpCompile    :AsyncRun marp %
command! MarpPdfCompile :AsyncRun marp % --pdf

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



" call AddAbbreviation("^ *-o$", "○ ", 1)
" call AddAbbreviation("^ *-[]$", "☐ ", 1)
" call AddAbbreviation("^ *-\\[x\\]$", "☑ ", 3)
" call AddAbbreviation("^ *-[v]$", "☑ ", 1)
" call AddAbbreviation("^ *-[f]$", "■ ", 1)
" call AddAbbreviation("^ *\*$", "• ", 1)
" " call AddAbbreviation("^ *-|>$", "▷ ", 1)
" " iabbrev -.   •
" " iabbrev -\|> ▷
" " iabbrev -v   ✔
" " iabbrev -x   ✘
" " iabbrev -f   ✘
" " iabbrev -*   ✩


iabbrev :atom:  ⚛
iabbrev :vim:   
iabbrev :magic: ✨
iabbrev :link:  🔗





" Slides
" copy current slide
Arpeggio nnoremap cs ?^----\+$<cr>jVNyNpNk:noh<cr>
" slide separator
call AddAbbreviation(" *-----*$", "\<esc>bD50a-\<esc>")


" go to next slide
Arpeggio nnoremap gsj /^----\+$<cr>j:noh<cr>
Arpeggio nnoremap gsk ?^----\+$<cr>j:noh<cr>


au BufWritePost,CursorHold,CursorHoldI,CursorMoved,CursorMovedI *.md call s:MarkdownAutoCompile()
let g:markdown_compiler = "xelatex"
let g:markdown_output_format = "latex"
let g:markdown_autocompile_enabled = 0
let &makeprg = "pandoc % --pdf-engine=xelatex -o %:r.pdf -f markdown -t latex"


function! MarkdownCompile()
    exec ":silent! AsyncRun -silent -save=0 pandoc % --pdf-engine=" . g:markdown_compiler . " -o %:r.pdf -f markdown -t " . g:markdown_output_format
endfunction
command! MarkdownCompile call MarkdownCompile()


function! s:MarkdownAutoCompile()
    if g:markdown_autocompile_enabled
        call MarkdownCompile()
    endif
endfunction


function! MarkdownAutocompileToggle()
    if g:markdown_autocompile_enabled == 1
        let g:markdown_autocompile_enabled = 0
    else
        let g:markdown_autocompile_enabled = 1
    endif
endfunction
command! MarkdownAutocompileToggle call MarkdownAutocompileToggle()


function! MarkdownAutoCompileOn()
    let g:markdown_autocompile_enabled = 1
endfunction
command! MarkdownAutoCompileOn call MarkdownAutoCompileOn()


function! MarkdownAutoCompileOff()
    let g:markdown_autocompile_enabled = 0
endfunction
command! MarkdownAutoCompileOff call MarkdownAutoCompileOff()


function! MarkdownCompilerSettings()
    let g:markdown_compiler = input("markdown compiler (default xelatex): ")
    if g:markdown_compiler == ""
        let g:markdown_compiler = "xelatex"
    endif
    let g:markdown_output_format = input("markdown output format (default latex): ")
    if g:markdown_output_format == ""
        let g:markdown_output_format = "latex"
    endif
    let &makeprg = "pandoc % --pdf-engine=" . g:markdown_compiler . " -o %:r.pdf -f markdown -t " . g:markdown_output_format
endfunction
command! MarkdownCompilerSettings call MarkdownCompilerSettings()


command! PdfOpen silent! evince %:r.pdf &


inoremap ^^ ^{}<left>
inoremap __ _{}<left>
inoremap // \dfrac{}<left>

inoremap \=>  \implies
inoremap \==> \Longrightarrow
inoremap \<== \LongLeftarrow
inoremap \->  \mapsto
inoremap \--> \longrightarrow

iabbrev \>= \geq
iabbrev \<= \leq

iabbrev \u \usepackage[]{

" math
for letter in ['B', 'C', 'D', 'I', 'N', 'Q', 'R', 'T']
    exec "au filetype tex,markdown iabbrev \\" . letter . " \\mathbb{" . letter . "}"
endfor

" mathscr : \s* (* is any uppercase letter)
" math
for letter in ['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z']
    exec "au filetype tex,markdown iabbrev \s" . letter . " \mathscr{" . letter . "}"
endfor


function! BuildHeader()
    let title = input("title:")
    let subtitle = input("subtitle:")
    let author = input("author:")
    let imports = "\ndocumentclass: scrartcl\nheader-includes: |\n    \\usepackage[top=2cm, bottom=2.5cm, left=2cm, right=2cm]\{geometry\}\n\\usepackage{amsmath, amssymb, amsfonts, mathrsfs}"
    return "---\ntitle: ".title."\nsubtitle: ".subtitle."\nauthor: ".author.imports."\n\b\b\b\b---\n"
endfunction
iabbrev header <C-R>=BuildHeader()<cr>


