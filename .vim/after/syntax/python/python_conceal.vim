
" have some additional work to make it proper
finish

if !has("conceal") || &enc != 'utf-8'
    finish
endif

" math
" ⤫
syn match pyOperator "\v \zs/\ze "              conceal cchar=÷
syn match pyOperator "\*"                 conceal cchar=×
syn match pyOperator "\*\*"               conceal cchar=^
syn match pyOperator "\v<(math\.)?sqrt>"  conceal cchar=√
syn match pyOperator "\v<(math\.)?pi>"    conceal cchar=π
syn match pyOperator "\v ?\*\* ?1>"       conceal cchar=¹
syn match pyOperator "\v ?\*\* ?2>"       conceal cchar=²
syn match pyOperator "\v ?\*\* ?3>"       conceal cchar=³
syn match pyOperator "\v ?\*\* ?4>"       conceal cchar=⁴
syn match pyOperator "\v ?\*\* ?5>"       conceal cchar=⁵
syn match pyOperator "\v ?\*\* ?6>"       conceal cchar=⁶
syn match pyOperator "\v ?\*\* ?7>"       conceal cchar=⁷
syn match pyOperator "\v ?\*\* ?8>"       conceal cchar=⁸
syn match pyOperator "\v ?\*\* ?9>"       conceal cchar=⁹



syn match pyOperator "=" conceal cchar=⟵
syn match pyOperator "==" conceal cchar==


" keywords
" syn match pyKeyword "^"   conceal cchar=⊻
syn keyword pyKeyword and conceal cchar=∧
syn keyword pyKeyword or  conceal cchar=∨
syn keyword pyKeyword not conceal cchar=¬



" Types and magics
syn keyword pyType None    conceal cchar=⍬
syn keyword pyType True    conceal cchar=T
syn keyword pyType False   conceal cchar=F
syn keyword pyType int     conceal cchar=ℤ
syn keyword pyType float   conceal cchar=ℝ
syn keyword pyType str     conceal cchar=𝕊
syn keyword pyType list    conceal cchar=𝕃
syn keyword pyType tuple   conceal cchar=𝕋
syn keyword pyType complex conceal cchar=ℂ

syn keyword pyStatement map       conceal cchar=¨
syn keyword pyOperator  sum       conceal cchar=∑
syn keyword pyOperator  len       conceal cchar=≢
syn keyword pyOperator  min       conceal cchar=⎣
syn keyword pyOperator  max       conceal cchar=⎡
syn keyword pyType      range     conceal cchar=ι
syn keyword pyType      reversed  conceal cchar=ϕ
syn keyword pyType      enumerate conceal cchar=☷

" syn keyword pyStatement del conceal cchar=
" ⟸
syn keyword pyStatement lambda      conceal cchar=λ
syn keyword pyStatement def         conceal cchar=□
syn keyword pyStatement return      conceal cchar=⬅
syn keyword pyStatement yield       conceal cchar=⥢
syn keyword pyStatement class       conceal cchar=⬡
syn match   pyOperator  "\<self\>"  conceal cchar=ᐁ
syn match   pyOperator  "\<other\>" conceal cchar=🜃

syn keyword pyStatement assert conceal cchar=‼
syn keyword pyStatement import conceal cchar=⤊

syn keyword pyStatement while          conceal cchar=⥀
syn keyword pyStatement for            conceal cchar=∀
syn keyword pyStatement continue       conceal cchar=⤴
syn keyword pyStatement break          conceal cchar=⤧
syn keyword pyStatement in             conceal cchar=∈
syn match   pyStatement "\<not \+in\>" conceal cchar=∉
syn match   pyStatement "\<is\>"       conceal cchar=⟷


syn keyword pyStatement if   conceal cchar=?
syn keyword pyStatement elif conceal cchar=〉
syn keyword pyStatement else conceal cchar=▷

hi link pyOperator  Operator
hi link pyStatement Statement
hi link pyKeyword   Keyword
hi link pyType      StorageClass
hi link pyBool      Boolean

" setlocal conceallevel=1
