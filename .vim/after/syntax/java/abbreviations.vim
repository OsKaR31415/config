" ┏━┓┏┓ ┏┓ ┏━┓┏━╸╻ ╻╻┏━┓╺┳╸╻┏━┓┏┓╻┏━┓
" ┣━┫┣┻┓┣┻┓┣┳┛┣╸ ┃┏┛┃┣━┫ ┃ ┃┃ ┃┃┗┫┗━┓
" ╹ ╹┗━┛┗━┛╹┗╸┗━╸┗┛ ╹╹ ╹ ╹ ╹┗━┛╹ ╹┗━┛
" if, elif and else shortcuts
call AddAbbreviation("^ *if$", "if () {\<cr>}\<esc>\<up>0f(a", 1) " if
call AddAbbreviation("^ *if_\\?else$", "if () {\<cr>} else {\<cr>}\<esc>2\<up>0f(a", 1) " ifelse or if_else
call AddAbbreviation("^ *} *else$", "else {\<cr>}\<esc>O", 1) " else
call AddAbbreviation("^ *} *\\(elif\\\|else_\\?if\\)\\( *else *{\\)\\?$", " else if () {\<cr>}\<esc>\<up>0f(a", 1) " } (elif|else_?if) (else {)?
call AddAbbreviation("^ *if_\\?\\(elif\\\|else_\\?if\\)_\\?else", "if () {\<cr>} else if () {\<cr>} else {\<cr>}\<esc>3\<up>0f(a", 1) " if_?(elif|else_?if)_?else
" LOOPS
" for
call AddAbbreviation("^ *for$", "for (; ; ) {\<cr>}\<esc>\<up>0f;i", 1) " empty for loop
call AddAbbreviation("^ *for.$", "\<esc>xa (int =; ; ) {\<cr>}\<esc>\<up>0f=Pla") " for loop with a 1 letter variable
" call AddAbbreviation("^ *foridx$", "for (int idx=; ; ) {\<cr>}\<esc>\<up>0f=a", 1) " for loop with idx variable
call AddAbbreviation("^ *for *(.*;.*;.*) *{ *$", "\<right>\<esc>/;\\|)\<cr>:noh\<cr>i") " go to next ';' when in a for loop
" while
call AddAbbreviation("^ *while$", "while () {\<cr>}\<esc>\<up>0f(", 1)
" do
call AddAbbreviation("^ *do$", "do {\<cr>} while ()\<left>", 1)
" abbreviation to enter in a function from its closing brace
call AddAbbreviation("^ *} *$", "\<esc>O")



" PRINT
" print and prinln with and without a statement before in the same line
call AddAbbreviation("^\\(.*;\\)* *print$", "System.out.print();\<left>\<left>", 1)
call AddAbbreviation("^\\(.*;\\)* *println$", "System.out.println();\<left>\<left>", 1)
call AddAbbreviation("^\\(.*;\\)* *sout$", "System.out.println();\<left>\<left>", 1)
" initialisation of a scanner
call AddAbbreviation("^ *scanner$", "Scanner sc = new Scanner(System.in);\n" .
            \ "sc.close();\n\<up>\<C-O>O", 1)
" IMPORTATIONS
call AddAbbreviation("^import_scanner$", "import java.util.Scanner;\n", 1)
call AddAbbreviation("^import_math$", "import java.lang.Math;\n", 1)
" AUTOMATIC CREATION
" automatically create the main class and method
" %:t:r is the filename without any extention or path
call AddAbbreviation("^main$", "public class " . expand('%:t:r') . " {\n" .
            \ "public static void main(String[] args) {\n" .
            \ "}\n}" .
            \ "\<up>\<C-O>O", 1)
call AddAbbreviation("^class$", "public class " . expand('%:t:r') . " {\n" .
            \ "}" .
            \ "\<C-O>O", 1)
" trying to generate getter for a given method name
call AddAbbreviation("^ *get \\w$", '\<esc>"ayiwXgUlA() { return ; }\<esc>F;"aP', 0)

" ┏━┓┏━┓┏━┓┏━╸┏━╸┏━╸╻┏━┓   ┏┳┓┏━┓┏━┓┏━┓╻┏┓╻┏━╸┏━┓
" ┣━┫┣┳┛┣━┛┣╸ ┃╺┓┃╺┓┃┃ ┃   ┃┃┃┣━┫┣━┛┣━┛┃┃┗┫┃╺┓┗━┓
" ╹ ╹╹┗╸╹  ┗━╸┗━┛┗━┛╹┗━┛   ╹ ╹╹ ╹╹  ╹  ╹╹ ╹┗━┛┗━┛
" mappings of multiple keys pressed at the same time

Arpeggio inoremap pub public<space>
Arpeggio inoremap pri private<space>
" Arpeggio inoremap cl class<space> " this digraph is too common
Arpeggio inoremap sta static<space>
Arpeggio inoremap vd void<space>
Arpeggio inoremap str String
Arpeggio inoremap bol boolean

" call AddAbbreviation("pub\\? *$", "public ", 1)
" call AddAbbreviation("st\\(\\|a\\|c\\) *$", "static ", 1)
" call AddAbbreviation("vd *$", "void ", 1)
" call AddAbbreviation("str *$", "String", 1)
" call AddAbbreviation("boo?l *$", "boolean", 1)

" call AddAbbreviation("\\w+ +\\w+ *\\([^)]*\\) *\{", "is indeed a method")

