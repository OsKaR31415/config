set concealcursor=cin

syn keyword schemeSyntax define conceal cchar=ↁ

syn keyword schemeFunction car      conceal cchar=⊃
syn keyword schemeFunction cdr      conceal cchar=⊏
syn keyword schemeFunction cons     conceal cchar=∷
syn keyword schemeFunction identity conceal cchar=⊢
syn keyword schemeFunction iota     conceal cchar=⍳
syn keyword schemeFunction lambda   conceal cchar=λ
syn keyword schemeFunction length   conceal cchar=≢
syn keyword schemeFunction list-ref conceal cchar=↑
syn keyword schemeFunction null     conceal cchar=∅

syn keyword schemeFunction quote     conceal cchar='
syn keyword schemeFunction list     conceal cchar='

syn match schemeIsNullHead contained "null" conceal cchar=∅
syn match schemeIsNullTail contained "?" conceal cchar=?
syn match schemeFunction "null?" contains=schemeIsNullHead,schemeIsNullTail

syn match   schemeConstant "'()" conceal cchar=∅



" ⟥ ⋉ ␥  ⏽⏼ ⏿
" ▛⬟ ⬠ ⭓ ⭔ ⌬ ⎔ ⬡ ⬢ ⬣ ⏣ ⬤ ⭘ ⬬ ⬭ ⬮⬯
" ↳ ⇧⇪⇲⇶ ⭢ ⭠ ⮑ ⮔
" ⁐
" ∅ ⍬ ⋂⋃ ⊂⊃⊄⊃ ⋐⋑⋒⋓ ⊌ ∈ ∇ ∆ ⍙⍜ ⊚ ⊏⊐⊑⊒⊓⊔ ⊞⊟⊠⊶⊷
" ⋘ ⋙ ⋕
"
