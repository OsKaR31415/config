"   ▄▄▄▄              ▄▄   ▄▄▄            ▄▄▄▄▄▄     ▄▄▄▄▄      ▄▄▄         ▄▄▄     ▄▄▄     ▄▄▄▄▄▄▄
"  ██▀▀██             ██  ██▀             ██▀▀▀▀██  █▀▀▀▀██▄   █▀██        ▄███    █▀██     ██▀▀▀▀▀
" ██    ██  ▄▄█████▄  ██▄██      ▄█████▄  ██    ██       ▄██     ██       █▀ ██      ██     ██▄▄▄▄
" ██    ██  ██▄▄▄▄ ▀  █████      ▀ ▄▄▄██  ███████     █████      ██     ▄█▀  ██      ██     █▀▀▀▀██▄
" ██    ██   ▀▀▀▀██▄  ██  ██▄   ▄██▀▀▀██  ██  ▀██▄       ▀██     ██     ████████     ██           ██
"  ██▄▄██   █▄▄▄▄▄██  ██   ██▄  ██▄▄▄███  ██    ██  █▄▄▄▄██▀  ▄▄▄██▄▄▄       ██   ▄▄▄██▄▄▄  █▄▄▄▄██▀
"   ▀▀▀▀     ▀▀▀▀▀▀   ▀▀    ▀▀   ▀▀▀▀ ▀▀  ▀▀    ▀▀▀  ▀▀▀▀▀    ▀▀▀▀▀▀▀▀       ▀▀   ▀▀▀▀▀▀▀▀   ▀▀▀▀▀
" my .vimrc
" a complete mess, full of plugins
" but i like it
" since it does the job I want it to :
" makes me be quick and feel comfortable in vim



" ╻┏┓╻╻╺┳╸╻┏━┓╻  ╻┏━┓┏━┓╺┳╸╻┏━┓┏┓╻
" ┃┃┗┫┃ ┃ ┃┣━┫┃  ┃┗━┓┣━┫ ┃ ┃┃ ┃┃┗┫
" ╹╹ ╹╹ ╹ ╹╹ ╹┗━╸╹┗━┛╹ ╹ ╹ ╹┗━┛╹ ╹

set nocompatible

let g:mapleader="\<space>"

" cool vim logo at starting
" silent !cat $HOME/.vim/logo_vim.txt

" graphical menu for command-line autocompletion (else nothing is shown)
set wildmenu

" normal behaviour for backspace (changed by filetype indent)
set backspace=indent,start

" spelling
set dictionary="/usr/share/dict/words"
set nospell spelllang=fr
" spelling shortcuts
" za to select the first replacement for a wrong word
nnoremap za 1z=
" <c-z> in insert mode to replace last mistake with first replacement
" <c-g>u makes a milestone in the undo tree (so you can undo the replacement)
inoremap <c-q> <c-g>u<esc>[s1z=`]a<c-g>u
nmap <c-q> i<c-q><esc>


" IMPORTANT: i prefer not to set them on since i have a shortcut to toggle
" both. The shortcut relies on "OsKaR31415/vim-ui-toggle.vim"
set norelativenumber
set nonumber

"           ▄▄▄▄                             ██
"           ▀▀██                             ▀▀
" ██▄███▄     ██      ██    ██   ▄███▄██   ████     ██▄████▄  ▄▄█████▄
" ██▀  ▀██    ██      ██    ██  ██▀  ▀██     ██     ██▀   ██  ██▄▄▄▄ ▀
" ██    ██    ██      ██    ██  ██    ██     ██     ██    ██   ▀▀▀▀██▄
" ███▄▄██▀    ██▄▄▄   ██▄▄▄███  ▀██▄▄███  ▄▄▄██▄▄▄  ██    ██  █▄▄▄▄▄██
" ██ ▀▀▀       ▀▀▀▀    ▀▀▀▀ ▀▀   ▄▀▀▀ ██  ▀▀▀▀▀▀▀▀  ▀▀    ▀▀   ▀▀▀▀▀▀
" ██                             ▀████▀▀
" they are a lot, i don't use all of them, but they are definitely cool
let g:plugins_loaded = 0
source $HOME/.vim/plugins_conf.vim
let g:plugins_loaded = 1


" enable filetype detection
filetype plugin indent on


" ┏┓╻┏━╸╻ ╻   ┏┳┓┏━┓┏━┓┏━┓╻┏┓╻┏━╸┏━┓
" ┃┗┫┣╸ ┃╻┃   ┃┃┃┣━┫┣━┛┣━┛┃┃┗┫┃╺┓┗━┓
" ╹ ╹┗━╸┗┻┛   ╹ ╹╹ ╹╹  ╹  ╹╹ ╹┗━┛┗━┛
" motions or mappings shortcuts i defined myself

set timeout timeoutlen=200


" reload config file
command! SO :wa | so ~/.vimrc | e
if g:plugins_loaded
    Arpeggio nnoremap <silent> so :SO<cr>
endif

" Y copies the whole line by default.
" strange because C or D are up to the EOL !
nnoremap Y y$

" MOTIONS
" swap , and ; since the ; is less accessible in my keyboard layout
nnoremap ; ,
nnoremap , ;


" SAVE
nnoremap <silent> <leader>k :up<cr>
nnoremap <silent> + :up<cr>
nnoremap <silent> <leader>K :wa<cr>

" VISUAL MODE
" $ does not include newline when doing visual selection
vnoremap $ $<left>
" move the lines of visual mode up or down
" <up><down> to move and keep autoindentation (with =)
" JK to move keeping the foreign indentation
vnoremap <silent> J :m '>+1<cr>gv
vnoremap <silent> <down> :m '>+1<cr>gv=gv
vnoremap <silent> K :m '<-2<cr>gv
vnoremap <silent> <up> :m '<-2<cr>gv=gv
" Move text left or right in visual mode
vnoremap H dhhpgvohoh
vnoremap L dpgvolol

" K and J
" left and right equivalents in insert mode
inoremap jk <right>
inoremap kj <left>
" kl for normal mode in a terminal buffer
" tmap kl <C-w>N
" tmap lk <C-w>N
if g:plugins_loaded
    Arpeggio inoremap kl <esc>:echo "c'est mal !!"<cr>
else
    inoremap kl <esc>:echo "c'est mal !!"<cr>
endif

" WINDOWS
if g:plugins_loaded
    Arpeggio nnoremap sj :below new<cr>
    Arpeggio nnoremap sk :above new<cr>
    Arpeggio nnoremap sh :above vnew<cr>
    Arpeggio nnoremap sl :below vnew<cr>
    Arpeggio nnoremap st :tabnew<cr>
    Arpeggio nnoremap sq :quit<cr>
endif
" replacement for <C-W>
nnoremap <leader>w <C-W>
" <c-w>m: maximize
nnoremap <C-W>m <C-W>_<C-W>\|
" open a terminal on current window
nnoremap <leader>! :term ++curwin<cr>


" TABS
nnoremap <leader>t :tabnew<cr>
nnoremap <right> gt
nnoremap <left>  gT
nnoremap <silent> <up> :tabmove +1<cr>
nnoremap <silent> <down> :tabmove -1<cr>


" MISC
" show a clock
nnoremap <silent> <leader>h :!tty-clock -sc<cr><cr>



" ┏━┓╻ ╻┏┓╻╺┳╸┏━┓╻ ╻   ╻ ╻╻┏━╸╻ ╻╻  ╻┏━╸╻ ╻╺┳╸╻┏┓╻┏━╸
" ┗━┓┗┳┛┃┗┫ ┃ ┣━┫┏╋┛   ┣━┫┃┃╺┓┣━┫┃  ┃┃╺┓┣━┫ ┃ ┃┃┗┫┃╺┓
" ┗━┛ ╹ ╹ ╹ ╹ ╹ ╹╹ ╹   ╹ ╹╹┗━┛╹ ╹┗━╸╹┗━┛╹ ╹ ╹ ╹╹ ╹┗━┛
" syntax highlighting


fun! Is_default_colorsheme(name)
    return system('ls $(find /usr/share/vim -name "colors") | grep ".vim$" |sed "s/\(.*\)\.vim$/\1/" | grep "' . a:name .'"') == a:name . "\n"
endfun

" colorscheme
" set termguicolors
syntax on
set bg=dark
if g:plugins_loaded
    colorscheme solarized8
else
    if Is_default_colorsheme('habamax')
        colorscheme habamax
    else
        colorscheme desert
    endif
endif
au BufRead,BufNewFile,BufEnter, * hi Normal ctermbg=none ctermfg=none guibg=black
au BufRead,BufNewFile,BufEnter, * hi Conceal ctermbg=none ctermfg=172 guibg=black
au BufRead,BufNewFile,BufEnter, * hi WildMenu term=standout ctermfg=black ctermbg=148
" au BufRead,BufNewFile,BufEnter, * hi LineNr ctermbg=233 ctermfg=246

" add rulers at 80 and 100 lines
au filetype python,java set cc=80,100

" show the cursor cross :
" set cursorcolumn
" set cursorline
" cursor cross colors :
hi ColorColumn  ctermbg=235
hi CursorColumn ctermbg=235
hi CursorLine   ctermbg=235
hi EndOfBuffer  ctermbg=235
hi CursorLineNr ctermfg=256

" folds colors
hi Folded ctermbg=none ctermfg=236

" Tabline colors
hi Tabline ctermfg=239 ctermbg=none
hi TabLineSel ctermbg=148 ctermfg=233
hi TabLineFill cterm=none ctermbg=239 ctermfg=none
hi Title ctermbg=none ctermfg=none

" incsearch current match color
" also used by Vista to show the current method
hi IncSearch cterm=reverse ctermfg=106



" ╻ ╻╻┏━╸╻ ╻
" ┃┏┛┃┣╸ ┃╻┃
" ┗┛ ╹┗━╸┗┻┛

" do redraw only after a command execution (eg. not during a macro)
set lazyredraw

" indentation
" replace <tab> with spaces
set expandtab smarttab smartindent autoindent
" autoindentation width
set shiftwidth=4
" <tab> indentation width
set softtabstop=4
" <tab> char width
set tabstop=4

" textwidth : auto carry return when the line is too long
" 0 to disable it
set tw=0

" Special caracters
set list
set listchars=nbsp:~,trail:¤,extends:>,precedes:<,tab:>-

" change cursor shape following the mode
" let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SI = "\<Esc>[6 q" " Vertical bar in insert mode
" let &t_EI = "\<Esc>]50;CursorShape=0\x7"
let &t_EI = "\<Esc>[2 q" " Block in normal mode
let &t_SR = "\<Esc>[4 q" " underline in replace mode

" searching
" search wraps around the file
set wrapscan
" highlighting search matches
set hlsearch
" live preview of search results (incremental search)
set incsearch
" remove search highlight temporarly
if g:plugins_loaded
    Arpeggionnoremap <silent> noh :noh<cr>
endif

" better version of n and N : center the search map
silent nnoremap <silent> n nzz
silent nnoremap <silent> N Nzz



" ┏━┓╺┳╸╻ ╻┏━╸┏━┓   ┏━┓┏━╸╺┳╸╺┳╸╻┏┓╻┏━╸┏━┓
" ┃ ┃ ┃ ┣━┫┣╸ ┣┳┛   ┗━┓┣╸  ┃  ┃ ┃┃┗┫┃╺┓┗━┓
" ┗━┛ ╹ ╹ ╹┗━╸╹┗╸   ┗━┛┗━╸ ╹  ╹ ╹╹ ╹┗━┛┗━┛

set hidden

set shortmess+=c

set path+=*,**

" Enable mouse mode for command mode
set mouse=a
if !has("nvim")
    set ttymouse=sgr
endif
" set vertical scroll step (here : 3)
nnoremap <ScrollWheelUp> <C-Y><C-Y><C-Y>
nnoremap <ScrollWheelDown> <C-e><C-e><C-e>

" set vim as the manpager
" let $PAGER=''



" ┏━┓┏━┓╻  ╻╺┳╸┏━┓
" ┗━┓┣━┛┃  ┃ ┃ ┗━┓
" ┗━┛╹  ┗━╸╹ ╹ ┗━┛

set splitright
set splitbelow



" ┏━╸╻╻  ╺┳╸┏━╸┏━┓   ┏━┓┏━╸┏━┓╻┏━┓╺┳╸┏━┓
" ┣╸ ┃┃   ┃ ┣╸ ┣┳┛   ┗━┓┃  ┣┳┛┃┣━┛ ┃ ┗━┓
" ╹  ╹┗━╸ ╹ ┗━╸╹┗╸   ┗━┛┗━╸╹┗╸╹╹   ╹ ┗━┛

" usefull formatting commands
command! RemoveTrailingWhiteSpaces :silent! %s/ \+$//g
command! TabsToSpace :silent! %s/^	\+/    /g

" for toilet !!
nnoremap ytb !!toilet -f term -F border<cr>
vnoremap Tb  !toilet  -f term -F border<cr>

vnoremap T1   !toilet  -w 130 -f mono12<cr>
vnoremap Tb1  !toilet  -w 130 -f mono12    -F border<cr>
vnoremap T2   !toilet  -w 130 -f mono9<cr>
vnoremap Tb2  !toilet  -w 130 -f mono9     -F border<cr>
vnoremap T3   !toilet  -w 130 -f smblock<cr>
vnoremap Tb3  !toilet  -w 130 -f smblock   -F border<cr>
vnoremap T4   !toilet  -w 130 -f future<cr>
vnoremap Tb4  !toilet  -w 130 -f future    -F border<cr>
vnoremap T5   !toilet  -w 130 -f smbraille<cr>
vnoremap Tb5  !toilet  -w 130 -f smbraille -F border<cr>

" calculating values
" (the script basically just evaluates the input with python)
nnoremap calc !!python3 ~/.vim/python/calc.py<cr>
vnoremap calc !python3 ~/.vim/python/calc.py<cr>



" ┏━╸╻ ╻╺┳╸┏━╸┏━┓┏┓╻┏━┓╻     ┏━╸╻╻  ┏━╸┏━┓
" ┣╸ ┏╋┛ ┃ ┣╸ ┣┳┛┃┗┫┣━┫┃     ┣╸ ┃┃  ┣╸ ┗━┓
" ┗━╸╹ ╹ ╹ ┗━╸╹┗╸╹ ╹╹ ╹┗━╸   ╹  ╹┗━╸┗━╸┗━┛

" tnoremaps for apl (like :i for iota)
" source ~/.vim/apl_keys.vim

" support for simple alarms (should be a plugin)
source ~/.vim/commands/alarms.vim

" <leader>j, <leader>r, <leader>r to run a file
" handles automatically different filetypes
source ~/.vim/commands/run_file.vim



