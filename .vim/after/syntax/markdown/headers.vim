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
