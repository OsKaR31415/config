


command! MarkdownTableAlignCenter s/|\zs\(-\|:\)\ze\|\zs\(-\|:\)\ze|/:/g
command! MarkdownTableNoAlign     s/|\zs\(-\|:\)\ze\|\zs\(-\|:\)\ze|/-/g
command! MarkdownTableAlignRight  s/|\zs\(-\|:\)\ze/-/g
command! MarkdownTableAlignLeft   s/\zs\(-\|:\)\ze|/-/g

" command! MarpPreview    :AsyncRun marp % -p
" command! MarpPdfPreview :AsyncRun marp % --pdf -p
" command! MarpCompile    :AsyncRun marp %
" command! MarpPdfCompile :AsyncRun marp % --pdf

syn match htmlH1 "^# .\+$"
syn match htmlH2 "^## .\+$"
syn match htmlH3 "^### .\+$"
syn match htmlH4 "^#### .\+$"
syn match htmlH5 "^##### .\+$"
syn match htmlH6 "^###### .\+$"


" conceal Block quotes (and callouts) (even nested !)
syn match mkdBlockquote  "\(^\|> \)\@<=> " conceal cchar=┃

" syn match mkdBlockquote "\(> \)\@<=\[!\ze.*\]" conceal cchar= 
" syn match mkdBlockquote "\(\(> \)\@<=\[!.*\)\@<=\]"  conceal cchar= 


syn match mkdBlockquote "\(> \)\@<=\[!note\]" conceal cchar=✏
syn match mkdBlockquote "\(> \)\@<=\[!info\]" conceal cchar=ℹ
syn match mkdBlockquote "\(> \)\@<=\[!\(done\|success\|check\)\]" conceal cchar=✓
syn match mkdBlockquote "\(> \)\@<=\[!\(question\|help\|faq\)\]" conceal cchar=❓
syn match mkdBlockquote "\(> \)\@<=\[!\(fail\|failure\|missing\)\]" conceal cchar=✕
syn match mkdBlockquote "\(> \)\@<=\[!\(danger\|error\)\]" conceal cchar=⚡
syn match mkdBlockquote "\(> \)\@<=\[!\(quote\|cite\)\]" conceal cchar=”
syn match mkdBlockquote "\(> \)\@<=\[!\(warning\|caution\|attention\)\]" conceal cchar=⚠
syn match mkdBlockquote "\(> \)\@<=\[!\(bug\)\]" conceal cchar=🐞
syn match mkdBlockquote "\(> \)\@<=\[!\(example\)\]" conceal cchar=🗒
syn match mkdBlockquote "\(> \)\@<=\[!\(todo\)\]" conceal cchar=☑
syn match mkdBlockquote "\(> \)\@<=\[!\(tip\|hint\|important\)\]" conceal cchar=🔥
syn match mkdBlockquote "\(> \)\@<=\[!\(abstract\|summary\|tldr\)\]" conceal cchar=☰
syn match mkdBlockquote "\(> \)\@<=\[!\(query\|smallquery\)\]" conceal cchar=🛢
syn match mkdBlockquote "\(> \)\@<=\[!\(definition\|définition\)\]" conceal cchar=🪶
syn match mkdBlockquote "\(> \)\@<=\[!\(idea\)\]" conceal cchar=💡



fun! MarkdownHighlight()
    hi htmlH1 cterm=bold,underline gui=bold,underline ctermfg=208 guifg=#1B9419
    hi htmlH2 cterm=bold,underline gui=bold,underline ctermfg=33  guifg=#2967B3
    hi htmlH3 cterm=bold           gui=bold           ctermfg=28  guifg=#C9893A
    hi htmlH4 cterm=bold           gui=bold           ctermfg=38  guifg=#6C9ABB
    hi htmlH5 cterm=bold           gui=bold           ctermfg=25  guifg=#9D85C8
    hi htmlH6 cterm=bold           gui=bold           ctermfg=240 guifg=#789278
endfun

call MarkdownHighlight()



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
Arpeggio nnoremap cs ?^---\+$<cr>jVNyNpNk:noh<cr>
" slide separator
call AddAbbreviation(" *-----*$", "\<esc>bD50a-\<esc>")


" go to next slide
Arpeggio nnoremap gsj /^---\+$<cr>j:noh<cr>
Arpeggio nnoremap gsk ?^---\+$<cr>j:noh<cr>


au BufWritePost,CursorHold,CursorHoldI,CursorMoved,CursorMovedI *.md call s:MarkdownAutoCompile()
let g:markdown_compiler = "xelatex"
let g:markdown_output_format = "latex"
let g:markdown_autocompile_enabled = 0

" Good commend to compile markdown through pandoc
" file name insertion :
"     %:S to shell escape characters (like space)
"     :r.pdf to replace the (last) extension with .pdf
setlocal makeprg=pandoc\ %\ --pdf-engine=xelatex\ -o\ %:S:r.pdf\ -f\ markdown\ -t\ latex


fun! MarkdownCompile()
    exec ":silent! AsyncRun -silent -save=0 pandoc % --pdf-engine=" . g:markdown_compiler . " -o %:r.pdf -f markdown -t " . g:markdown_output_format
endfun
command! MarkdownCompile call MarkdownCompile()


fun! s:MarkdownAutoCompile()
    if g:markdown_autocompile_enabled
        call MarkdownCompile()
    endif
endfun


fun! MarkdownAutocompileToggle()
    if g:markdown_autocompile_enabled == 1
        let g:markdown_autocompile_enabled = 0
    else
        let g:markdown_autocompile_enabled = 1
    endif
endfun
command! MarkdownAutocompileToggle call MarkdownAutocompileToggle()


fun! MarkdownAutoCompileOn()
    let g:markdown_autocompile_enabled = 1
endfun
command! MarkdownAutoCompileOn call MarkdownAutoCompileOn()


fun! MarkdownAutoCompileOff()
    let g:markdown_autocompile_enabled = 0
endfun
command! MarkdownAutoCompileOff call MarkdownAutoCompileOff()


fun! MarkdownCompilerSettings()
    let g:markdown_compiler = input("markdown compiler (default xelatex): ")
    if g:markdown_compiler == ""
        let g:markdown_compiler = "xelatex"
    endif
    let g:markdown_output_format = input("markdown output format (default latex): ")
    if g:markdown_output_format == ""
        let g:markdown_output_format = "latex"
    endif
    let &makeprg = "pandoc % --pdf-engine=" . g:markdown_compiler . " -o %:r.pdf -f markdown -t " . g:markdown_output_format
endfun
command! MarkdownCompilerSettings call MarkdownCompilerSettings()


command! PdfOpen silent! open -a skim %:r.pdf &


" inoremap ^^ ^{}<left>
" inoremap __ _{}<left>
" inoremap // \dfrac{}<left>

" inoremap \=>  \implies
" inoremap \==> \Longrightarrow
" inoremap \<== \LongLeftarrow
" inoremap \->  \mapsto
" inoremap \--> \longrightarrow

" iabbrev \>= \geq
" iabbrev \<= \leq

" iabbrev \u \usepackage[]{

" " math
" for letter in ['B', 'C', 'D', 'I', 'N', 'Q', 'R', 'T']
"     exec "au filetype tex,markdown iabbrev \\" . letter . " \\mathbb{" . letter . "}"
" endfor

" " mathscr : \s* (* is any uppercase letter)
" " math
" for letter in ['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z']
"     exec "au filetype tex,markdown iabbrev \s" . letter . " \mathscr{" . letter . "}"
" endfor


" pandoc header
fun! BuildHeader()
    let title = input("title:")
    let subtitle = input("subtitle:")
    let author = input("author:")
    let imports = "\ndocumentclass: scrartcl\nheader-includes: |\n    \\usepackage[top=2cm, bottom=2.5cm, left=2cm, right=2cm]\{geometry\}\n\\usepackage{amsmath, amssymb, amsfonts, mathrsfs}"
    return "---\ntitle: ".title."\nsubtitle: ".subtitle."\nauthor: ".author.imports."\n\b\b\b\b---\n"
endfun
iabbrev header <C-R>=BuildHeader()<cr>


