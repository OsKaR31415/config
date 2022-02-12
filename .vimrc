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

let mapleader=" "

" " cool vim logo at starting
" " if not in tmux, use sixel
" if len($TMUX) < 1
"     silent!chafa --format sixel ~/.vim/vim_logo.svg
" " if chafa in installed, and show the logo with it
" elseif system('which chafa') !~ "\w\+" && &term =~ "256color"
"     silent !chafa ~/.vim/vim_logo.svg
" else
"     " silent !echo "\n                    ░\n    ██████████████░░░░░ ██████████████\n    ██████████████░░░░░░██████████████\n      ██████████░░░░░░░░░░██████████\n      ██████████░░░░░░░░██████████\n      ██████████░░░░░░░██████████\n      ██████████░░░░░██████████░░\n      ██████████░░░░██████████░░░░░\n    ░░██████████░░██████████░░░░░░░░░\n  ░░░░██████████░█████████░░░░░░░░░░░░░\n    ░░███████████████░▓▓▓░░░░░░░░░░░░\n      ████████████████░░░░░░░░░░░░░\n      ██████████████░▓▓▓░▓▓▓▓▓▓▓▓▓▓\n      ████████████░░░▓▓░░░▓▓░░▓▓  ▓▓\n      ██████████░░░░▓▓░░░▓▓░░▓▓  ▓▓\n      ████████░░░░░▓▓▓░░▓▓▓ ▓▓▓ ▓▓▓\n      ██████    ░░░░░░░░░\n                  ░░░░░\n                    ░\n"
" endif

" graphical menu for command-line autocompletion (else nothing is shown)
set wildmenu

" normal behaviour for backspace (changed by filetype indent)
set backspace=indent,start

" spelling
set dictionary="/usr/share/dict/words"
set nospell spelllang=fr

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
" they are al lot, i don't use all of them, but they are definitely cool

" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')


 " ⣎⣱ ⣏⡱ ⣏⡱ ⣏⡉ ⡎⠑ ⡎⠑ ⡇ ⡎⢱
 " ⠇⠸ ⠇⠱ ⠇  ⠧⠤ ⠣⠝ ⠣⠝ ⠇ ⠣⠜
" plugin do map multiple keys at the same time
Plug 'kana/vim-arpeggio'
" The plugin manager isn't sourcing these files...
" have to do it manually
source ~/.vim/plugged/vim-arpeggio/plugin/arpeggio.vim
source ~/.vim/plugged/vim-arpeggio/autoload/arpeggio.vim
let g:arpeggio_timeoutlen=50


 " ⣏⡱ ⣏⡉ ⡎⠑ ⣏⡉ ⢇⡸   ⣎⣱ ⣏⡱ ⣏⡱ ⣏⡱ ⣏⡉ ⡇⢸ ⡇ ⣎⣱ ⢹⠁ ⡇ ⡎⢱ ⡷⣸ ⢎⡑
 " ⠇⠱ ⠧⠤ ⠣⠝ ⠧⠤ ⠇⠸   ⠇⠸ ⠧⠜ ⠧⠜ ⠇⠱ ⠧⠤ ⠸⠃ ⠇ ⠇⠸ ⠸  ⠇ ⠣⠜ ⠇⠹ ⠢⠜
" regex abbreviations
" can be used to do code snippets, but can do much more !
" source ~/.vim/my_plugins/regex-abbreviations/plugin/abbreviations.vim
Plug 'OsKaR31415/regex-abbreviations'
let g:regex_abbreviations#expand_symbol = ":"


 " ⡇⢸ ⡇   ⢹⠁ ⡎⢱ ⡎⠑ ⡎⠑ ⡇  ⣏⡉
 " ⠣⠜ ⠇   ⠸  ⠣⠜ ⠣⠝ ⠣⠝ ⠧⠤ ⠧⠤
" my first plugin !
" toggles parts of the ui like tabline, statusline, line numbers or background
Plug 'OsKaR31415/vim-ui-toggle'
let g:background_colors_list = ["none", "234", "235", "233", "232"]
let g:background_color_index = 0
" UI hide and show
Arpeggio nnoremap <silent> <leader>us :StatuslineToggle<cr>
Arpeggio nnoremap <silent> <leader>ut :TablineToggle<cr>
Arpeggio nnoremap <silent> <leader>ul :LineNumbersToggle<cr>
Arpeggio nnoremap <silent> <leader>un :RelativeNumberingToggle<cr>
Arpeggio nnoremap <silent> <leader>uc :CursorCrossToggle<cr>
Arpeggio nnoremap <silent> <leader>ug :SignColumnToggle<cr>
" cycle between different colors
Arpeggio nnoremap <silent> <leader>ub :BackgroundColorCycle<cr>
Arpeggio nnoremap <silent> <leader>uB :BackgroundColorReset<cr>
" toggle all of them
nnoremap <silent> <leader>uu :UItoggle<cr>
Arpeggio nnoremap <silent> <leader>uq :UItoggle<cr>
Arpeggio nnoremap <silent> <leader>ur :UIreset<cr>


 " ⢎⡑ ⡇⢸ ⣏⡱ ⡷⢾ ⡎⢱ ⡏⢱ ⣏⡉ ⢎⡑
 " ⠢⠜ ⠣⠜ ⠧⠜ ⠇⠸ ⠣⠜ ⠧⠜ ⠧⠤ ⠢⠜
" simple submodes !
Plug 'tomtom/tinykeymap_vim'
let g:tinykeymaps_defaults = 0 " don't use default mappings


 " ⡇⢸ ⡷⣸ ⡏⢱ ⡎⢱   ⢹⠁ ⣏⡱ ⣏⡉ ⣏⡉
 " ⠣⠜ ⠇⠹ ⠧⠜ ⠣⠜   ⠸  ⠇⠱ ⠧⠤ ⠧⠤
" simple undo tree
Plug 'mbbill/undotree'

 " ⢎⡑ ⣏⡉ ⡷⣸ ⡏⢱   ⢹⠁ ⡎⢱   ⢹⠁ ⣏⡉ ⣏⡱ ⡷⢾ ⡇ ⡷⣸ ⣎⣱ ⡇    ⡇⢸ ⡇ ⡷⣸ ⡏⢱ ⡎⢱ ⡇⢸
 " ⠢⠜ ⠧⠤ ⠇⠹ ⠧⠜   ⠸  ⠣⠜   ⠸  ⠧⠤ ⠇⠱ ⠇⠸ ⠇ ⠇⠹ ⠇⠸ ⠧⠤   ⠟⠻ ⠇ ⠇⠹ ⠧⠜ ⠣⠜ ⠟⠻
" command and operator to send text to a vim terminal
Plug 'habamax/vim-sendtoterm'
" <leader>x : operator to send to terminal
xmap <leader>x <Plug>(SendToTerm)
nmap <leader>x <Plug>(SendToTerm)
omap <leader>x <Plug>(SendToTerm)
nmap <leader>xx <Plug>(SendToTermLine)


 " ⢎⡑ ⣏⡉ ⡷⣸ ⡏⢱   ⢹⠁ ⣏⡉ ⢇⡸ ⢹⠁   ⢹⠁ ⡎⢱         ⡔⠁ ⢎⡑ ⡇  ⡇ ⡷⢾ ⣏⡉ ⠈⢢
 " ⠢⠜ ⠧⠤ ⠇⠹ ⠧⠜   ⠸  ⠧⠤ ⠇⠸ ⠸    ⠸  ⠣⠜ ⠶ ⠶ ⠶   ⠣⡀ ⠢⠜ ⠧⠤ ⠇ ⠇⠸ ⠧⠤ ⢀⠜
" send text to various things (repls, tmux, etc...)
Plug 'jpalardy/vim-slime'


 " ⡎⠑ ⡎⢱ ⡎⠑
 " ⠣⠔ ⠣⠜ ⠣⠔
" auto completion and LSP support
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif
" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("nvim-0.5.0") || has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=no
else
  set signcolumn=no
endif
" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
" inoremap <silent><expr> <TAB>
"       \ pumvisible() ? "\<C-n>" :
"       \ <SID>check_back_space() ? "\<TAB>" :
"       \ coc#refresh()
" inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [e <Plug>(coc-diagnostic-prev)
nmap <silent> ]e <Plug>(coc-diagnostic-next)
" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
" rename symbol
nmap <leader>rn <Plug>(coc-rename)
" fuzzy search outline with classes / functions / methods...
nnoremap <silent><nowait> <space>a :<C-u>CocList outline<cr>
" fuzzy search symbols
nnoremap <silent><nowait> <space>s :<C-u>CocList -I symbols<cr>


 " " ⡎⠑ ⡇⢸ ⢹⠁ ⢹⠁ ⣏⡉ ⡷⣸    ⢹⠁ ⣎⣱ ⡎⠑ ⢎⡑
 " " ⠣⠝ ⠣⠜ ⠸  ⠸  ⠧⠤ ⠇⠹ ⠉⠉ ⠸  ⠇⠸ ⠣⠝ ⠢⠜
" " auto-update ctags
" Plug 'ludovicchabant/vim-gutentags'


 " ⢹⠁ ⣎⣱ ⡎⠑ ⢎⡑   ⡇⢸ ⡇ ⢎⡑ ⡇⢸ ⣎⣱ ⡇  ⡇ ⢎⡑ ⣎⣱ ⢹⠁ ⡇ ⡎⢱ ⡷⣸
 " ⠸  ⠇⠸ ⠣⠝ ⠢⠜   ⠸⠃ ⠇ ⠢⠜ ⠣⠜ ⠇⠸ ⠧⠤ ⠇ ⠢⠜ ⠇⠸ ⠸  ⠇ ⠣⠜ ⠇⠹
" TODO: fix the problem with ctags source not showing anything with python
Plug 'liuchengxu/vista.vim'
" toggle vista
nnoremap <leader>v :Vista!!<cr>
let g:vista#render#enable_icon = 1
let g:vista_default_executive = 'coc'
let g:vista_ctags_cmd = {
      \ 'haskell': 'hasktags -x -o - -c',
      \ }
let g:vista#renderer#icons = {
        \ "function": "",
        \ "variable": ""
      \ }


 " ⡎⠑ ⣎⣱ ⡇  ⡎⠑ ⡇⢸ ⡇  ⣎⣱ ⢹⠁ ⡎⢱ ⣏⡱
 " ⠣⠔ ⠇⠸ ⠧⠤ ⠣⠔ ⠣⠜ ⠧⠤ ⠇⠸ ⠸  ⠣⠜ ⠇⠱
" calculator buffer
Plug 'fedorenchik/VimCalc3'
let g:VCalc_Win_Size = 5
let g:VCalc_WindowPosition = 'top'
nnoremap <silent> <leader>, :Calc<cr>


 " ⣇⣸ ⢹⠁ ⡷⢾ ⡇    ⡇  ⡇ ⡇⢸ ⣏⡉   ⣏⡱ ⣏⡱ ⣏⡉ ⡇⢸ ⡇ ⣏⡉ ⡇⢸
 " ⠇⠸ ⠸  ⠇⠸ ⠧⠤   ⠧⠤ ⠇ ⠸⠃ ⠧⠤   ⠇  ⠇⠱ ⠧⠤ ⠸⠃ ⠇ ⠧⠤ ⠟⠻
" html live preview (with firefox plugin)
" Plug 'flomotlik/vim-livereload' " , {'for': ['html', 'css', 'js']}
" Plug 'greyblake/vim-preview'


 " ⣏⡉ ⡷⢾ ⡷⢾ ⣏⡉ ⢹⠁
 " ⠧⠤ ⠇⠸ ⠇⠸ ⠧⠤ ⠸
" emmet abbreviations for html
" default shortcut to expand is <c-y>,
Plug 'mattn/emmet-vim', {'for': 'html'}
imap <c-l> <c-y>
vmap <c-l> <c-y>


 " ⡷⢾ ⣎⣱ ⣏⡱ ⣇⠜ ⡏⢱ ⡎⢱ ⡇⢸ ⡷⣸  ⡜ ⡇  ⣎⣱ ⢹⠁ ⣏⡉ ⢇⡸   ⡇ ⡷⣸ ⡇  ⡇ ⡷⣸ ⣏⡉   ⣏⡱ ⣏⡱ ⣏⡉ ⡇⢸ ⡇ ⣏⡉ ⡇⢸
 " ⠇⠸ ⠇⠸ ⠇⠱ ⠇⠱ ⠧⠜ ⠣⠜ ⠟⠻ ⠇⠹ ⠎  ⠧⠤ ⠇⠸ ⠸  ⠧⠤ ⠇⠸   ⠇ ⠇⠹ ⠧⠤ ⠇ ⠇⠹ ⠧⠤   ⠇  ⠇⠱ ⠧⠤ ⠸⠃ ⠇ ⠧⠤ ⠟⠻
Plug 'plasticboy/vim-markdown', {'for': ['markdown', 'tex', 'latex']}
set conceallevel=2
set concealcursor=c
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_frontmatter = 1
let g:vim_markdown_math = 1
let g:vim_markdown_yaml_frontmatter = 1
"
" better Latex conceal for live preview !!
Plug 'KeitaNakamura/tex-conceal.vim', {'for': ['markdown', 'tex', 'latex']}
let g:tex_conceal = "abdmgs" " vim builtin latex preview
let g:tex_conceal_frac = 1


 " ⡷⢾ ⣎⣱ ⣏⡱ ⣇⠜ ⡏⢱ ⡎⢱ ⡇⢸ ⡷⣸   ⡇  ⡇ ⡇⢸ ⣏⡉   ⣏⡱ ⣏⡱ ⣏⡉ ⡇⢸ ⡇ ⣏⡉ ⡇⢸
 " ⠇⠸ ⠇⠸ ⠇⠱ ⠇⠱ ⠧⠜ ⠣⠜ ⠟⠻ ⠇⠹   ⠧⠤ ⠇ ⠸⠃ ⠧⠤   ⠇  ⠇⠱ ⠧⠤ ⠸⠃ ⠇ ⠧⠤ ⠟⠻
" markdown live preview on localhost:9090
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
" Set to 1, Vim will automatically open the preview window when you edit a Markdown file.
let g:mkdp_auto_open = 1
" automatically close the current preview when switching from one Markdown buffer to another
let g:mkdp_auto_close = 1
" make the :MarkdownPreview available for any filetype
let g:mkdp_command_for_global = 0
let g:mkdp_open_to_the_world = 1  " preview server available to others in your network
let g:mkdp_port = '9090'
let g:mkdp_preview_options = { 'mkit': {}, 'katex': {}, 'uml': {}, 'maid': {},
    \ 'disable_sync_scroll': 0,
    \ 'flowchart_diagrams': {},
    \ 'sync_scroll_type': 'middle',
    \ 'hide_yaml_meta': 1,
    \ 'sequence_diagrams': {},
    \ 'content_editable': v:true,
    \ 'disable_filename': 0
    \ }


" Plug 'prabirshrestha/async.vim'
" Plug 'christianrondeau/vim-base64'
" " pandoc markdown live preview
" Plug 'tex/vimpreviewpandoc'

 " ⡷⢾ ⣎⣱ ⣏⡱ ⣇⠜ ⡏⢱ ⡎⢱ ⡇⢸ ⡷⣸   ⢹⠁ ⡎⢱ ⡎⠑
 " ⠇⠸ ⠇⠸ ⠇⠱ ⠇⠱ ⠧⠜ ⠣⠜ ⠟⠻ ⠇⠹   ⠸  ⠣⠜ ⠣⠔
" markdown auto-generated table of contents
" :GenTocGfm : generate the toc on current cursor position
Plug 'mzlogin/vim-markdown-toc', {'for': 'markdown'}
let g:vmt_auto_update_on_save = 1


 " ⣏⡱ ⣏⡱ ⣏⡉ ⢎⡑ ⣏⡉ ⡷⣸ ⢹⠁ ⡇ ⡷⣸ ⡎⠑   ⡔⠁ ⡷⢾ ⣇⠜ ⡏⢱   ⣏⡱ ⣏⡱ ⣏⡉ ⢎⡑ ⣏⡉ ⡷⣸ ⢹⠁ ⣎⣱ ⢹⠁ ⡇ ⡎⢱ ⡷⣸ ⢎⡑ ⠈⢢
 " ⠇  ⠇⠱ ⠧⠤ ⠢⠜ ⠧⠤ ⠇⠹ ⠸  ⠇ ⠇⠹ ⠣⠝   ⠣⡀ ⠇⠸ ⠇⠱ ⠧⠜   ⠇  ⠇⠱ ⠧⠤ ⠢⠜ ⠧⠤ ⠇⠹ ⠸  ⠇⠸ ⠸  ⠇ ⠣⠜ ⠇⠹ ⠢⠜ ⢀⠜
" presentations inside vim itself
Plug 'sotte/presenting.vim', {'for': 'markdown'}
nnoremap <leader>ps :PresentingStart<cr>


 " ⣏⡉ ⣎⣱ ⢎⡑ ⢇⢸    ⣎⣱ ⡇  ⡇ ⡎⠑ ⡷⣸
 " ⠧⠤ ⠇⠸ ⠢⠜  ⠇ ⠉⠉ ⠇⠸ ⠧⠤ ⠇ ⠣⠝ ⠇⠹
" align things (markdown tables...)
Plug 'junegunn/vim-easy-align'
nmap ga <Plug>(LiveEasyAlign)


 " ⡏⢱ ⣏⡱ ⣎⣱ ⡇⢸   ⡷⢾ ⡎⢱ ⡏⢱ ⣏⡉
 " ⠧⠜ ⠇⠱ ⠇⠸ ⠟⠻   ⠇⠸ ⠣⠜ ⠧⠜ ⠧⠤
" Vim kind of submode for drawing
" <leader>di : start
" <leader>ds : stop
" <leader>b : draw a box following visual bloc selection
" <leader>l : line | <leader>a : arrow
" <leader>e : ellipse
Plug 'vim-scripts/DrawIt'
" call SetDrawIt('┃', '━', '╋', '╲', '╱', '╳', '*')


 " " ⢉⠝ ⣏⡉ ⡷⣸   ⡷⢾ ⡎⢱ ⡏⢱ ⣏⡉
 " " ⠮⠤ ⠧⠤ ⠇⠹   ⠇⠸ ⠣⠜ ⠧⠜ ⠧⠤
" " kind of zen mode
" " unused for the moment, but could be wit presenting.vim
" Plug 'junegunn/goyo.vim'
" command! Zen Goyo|Limelight!!
" Arpeggio nnoremap zen :Zen<cr>
" nnoremap <leader>y :Goyo<cr>
" let g:goyo_width = "100%"
" let g:goyo_height = "100%"
" Plug 'junegunn/limelight.vim'
" let g:limelight_priority = -1 " -1 to not orverrule hlsearch
" " Number of preceding/following paragraphs to include (default: 0)
" let g:limelight_paragraph_span = 2
" " autocmd! User GoyoEnter Limelight
" " autocmd! User GoyoLeave Limelight!
" autocmd! User GoyoLeave BackgroundColorReset
" " Plug 'junegunn/vim-emoji'
" " let g:limelight_conceal_ctermfg=1


 " ⣇⣸ ⡇ ⡎⠑ ⣇⣸ ⡇  ⡇ ⡎⠑ ⣇⣸ ⢹⠁   ⡎⠑ ⡇⢸ ⣏⡱ ⣏⡱ ⣏⡉ ⡷⣸ ⢹⠁   ⡇⢸ ⡇ ⡷⣸ ⡏⢱ ⡎⢱ ⡇⢸
 " ⠇⠸ ⠇ ⠣⠝ ⠇⠸ ⠧⠤ ⠇ ⠣⠝ ⠇⠸ ⠸    ⠣⠔ ⠣⠜ ⠇⠱ ⠇⠱ ⠧⠤ ⠇⠹ ⠸    ⠟⠻ ⠇ ⠇⠹ ⠧⠜ ⠣⠜ ⠟⠻
" dim inactive panes (highlight current)
" used in conjunction with tmux settings for the panes bg color
Plug 'blueyed/vim-diminactive'
let g:diminactive_buftype_blacklist = ['nofile', 'nowrite', 'acwrite', 'quickfix', 'help', 'terminal']
let g:diminactive_filetype_blacklist = ['startify']
let g:diminactive_use_colorcolumn = 1
let g:diminactive_use_syntax = 0
let g:diminactive_enable_focus = 1


 " ⡎⠑ ⡎⢱ ⡇  ⡎⢱ ⣏⡱   ⢎⡑ ⡎⠑ ⣇⣸ ⣏⡉ ⡷⢾ ⣏⡉ ⢎⡑
 " ⠣⠔ ⠣⠜ ⠧⠤ ⠣⠜ ⠇⠱   ⠢⠜ ⠣⠔ ⠇⠸ ⠧⠤ ⠇⠸ ⠧⠤ ⠢⠜
" a good collection of colorschemes, all you need is here
Plug 'rafi/awesome-vim-colorschemes'


 " ⣎⣱ ⢎⡑ ⢇⢸ ⡷⣸ ⡎⠑   ⣏⡱ ⡇⢸ ⡷⣸
 " ⠇⠸ ⠢⠜  ⠇ ⠇⠹ ⠣⠔   ⠇⠱ ⠣⠜ ⠇⠹
" run asycronously any terminal command, and get the stdout in the quickfix
" list. but Dispatch is better, even if it needs Makefile / makeprg set
Plug 'skywind3000/asyncrun.vim'
let g:asyncrun_open=7
let $PYTHONUNBUFFERED=1


 " ⣎⣱ ⢎⡑ ⢇⢸ ⡷⣸ ⡎⠑   ⡷⢾ ⣎⣱ ⣇⠜ ⣏⡉
 " ⠇⠸ ⠢⠜  ⠇ ⠇⠹ ⠣⠔   ⠇⠸ ⠇⠸ ⠇⠱ ⠧⠤
" asyncronous version of make
" integrates with tmux (and that is awsome)
" :Make and :Copen (also `:Dispatch [compiler] [file]`)
Plug 'tpope/vim-dispatch'
Arpeggio nnoremap cop :Cope<cr>


 " ⡇⢸ ⡇ ⡷⢾   ⣏⡱ ⣏⡉ ⣏⡱ ⣏⡉ ⣎⣱ ⢹⠁
 " ⠸⠃ ⠇ ⠇⠸   ⠇⠱ ⠧⠤ ⠇  ⠧⠤ ⠇⠸ ⠸
" make plugin commads repeatable
Plug 'tpope/vim-repeat'


 " ⢎⡑ ⡇⢸ ⣏⡱ ⣏⡱ ⡎⢱ ⡇⢸ ⡷⣸ ⡏⢱
 " ⠢⠜ ⠣⠜ ⠇⠱ ⠇⠱ ⠣⠜ ⠣⠜ ⠇⠹ ⠧⠜
" surround with brackets, with tags...
Plug 'tpope/vim-surround'
let g:surround_{char2nr("\\")} = "\\\1\\\1 \r \\\2\\\2"
let g:surround_{char2nr("m")} = "\\left\1left: \1 \r \\right\2right: \2"
let g:surround_{char2nr("P")} = "\\left( \r \\right)"
let g:surround_{char2nr("v")} = "\\lvert \r \\lvert"
let g:surround_{char2nr("s")} = "\\left\{ \\begin{array}{c} \r \\end{array} \\right."
nmap gs ys
nmap g) ysa))
nmap g( ysa))a
vmap s S


 " ⣎⣱ ⡇⢸ ⢹⠁ ⡎⢱   ⣏⡱ ⣏⡱ ⣎⣱ ⡎⠑ ⣇⠜ ⣏⡉ ⢹⠁ ⢎⡑   ⡎⠑ ⡇  ⡎⢱ ⢎⡑ ⡇ ⡷⣸ ⡎⠑
 " ⠇⠸ ⠣⠜ ⠸  ⠣⠜   ⠧⠜ ⠇⠱ ⠇⠸ ⠣⠔ ⠇⠱ ⠧⠤ ⠸  ⠢⠜   ⠣⠔ ⠧⠤ ⠣⠜ ⠢⠜ ⠇ ⠇⠹ ⠣⠝
" seems like no config is required !
" Plug 'kana/vim-smartinput'
Plug 'raimondi/delimitmate'
" single brackets: prefix name with _
inoremap _" "
inoremap _' '
inoremap _[ [
inoremap _( (
inoremap _{ {
inoremap _$ $
inoremap _` `


 " ⣎⣱ ⡇ ⣏⡱ ⡇  ⡇ ⡷⣸ ⣏⡉
 " ⠇⠸ ⠇ ⠇⠱ ⠧⠤ ⠇ ⠇⠹ ⠧⠤
" better statusline style
" TODO: try to do the same without a plugin
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
let g:airline#extensions#tabline#enabled = 0
let g:airline_statusline_ontop = 0
let g:airline_powerline_fonts = 0
let g:airline_theme="powerlineish"
set laststatus=2
" ꗯ 𝑽  
" 🌊🔥🌈🌱
" 📂 
"        
let g:airline_section_a = ""
let g:airline_section_b = " %F"
let g:airline_section_c = ""
let g:airline_section_x = ""
let g:airline_section_y = "" " section for search match
let g:airline_section_z = "≡%l/%L ꔖ%c"
let g:airline_section_warning = ""
let g:airline_section_error = ""
" let g:airline_section_gutter = ""


 " ⡎⠑ ⡎⢱ ⡷⢾ ⡷⢾ ⣏⡉ ⡷⣸ ⢹⠁
 " ⠣⠔ ⠣⠜ ⠇⠸ ⠇⠸ ⠧⠤ ⠇⠹ ⠸
" comment by lines
Plug 'tpope/vim-commentary'
map <leader>c gc
nmap <leader>c gc


 " ⡷⣸ ⣏⡉ ⢹⠁ ⣏⡱ ⡇⢸
 " ⠇⠹ ⠧⠤ ⠸  ⠇⠱ ⠟⠻
" my config to make netrw usable (hard, i admit) (vinegar)
" not a plugin but it could almost be one
Plug 'tpope/vim-vinegar'
let g:netrw_keepdir        = 0  " make vim root follow netrw's one
let g:netrw_fastbrowse     = 2 " make netrw to update only when told (<c-l>, or <c-r> with my mappings)
let g:netrw_winsize        = 25 " defauld win size
let g:netrw_banner         = 0  " no header
let g:netrw_liststyle      = 3  " tree style
let g:netrw_special_syntax = 1 " show per-extension coloration
" use - to toggle explorer in current pane
" nnoremap - :Explore<cr>
" au filetype netrw silent! nnoremap - :Rexplore<cr>
" shortcut to explore
nnoremap <leader>e :Lexplore<cr>


 " ⣏⡱ ⣎⣱ ⡷⣸ ⡎⠑ ⣏⡉ ⣏⡱
 " ⠇⠱ ⠇⠸ ⠇⠹ ⠣⠝ ⠧⠤ ⠇⠱
" ranger integration
" Plug 'kevinhwang91/rnvimr'
" nnoremap <leader>f :RangerEdit<cr>
" Plug 'rafazq/ranger.vim'
Plug 'francoiscabrol/ranger.vim'
" <leader>f --> :Ranger


 " ⣏⡉ ⢉⠝ ⣏⡉   ⡔⠁ ⣏⡉ ⡇⢸ ⢉⠝ ⢉⠝ ⢇⢸   ⣏⡉ ⡇ ⡷⣸ ⡏⢱ ⣏⡉ ⣏⡱ ⠈⢢
 " ⠇  ⠮⠤ ⠇    ⠣⡀ ⠇  ⠣⠜ ⠮⠤ ⠮⠤  ⠇   ⠇  ⠇ ⠇⠹ ⠧⠜ ⠧⠤ ⠇⠱ ⢀⠜
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf'
let g:fzf_layout = { 'window': { 'width': 1, 'height': 1 } }
" let g:fzf_layout = { 'window': 'tabnew' }
" let g:fzf_layout = { 'window': 'enew' }
" if exists('$TMUX')
"     let g:fzf_layout = { 'tmux': '-p95%,95%' }
" else
"     let g:fzf_layout = { 'window': { 'width': 0.95, 'height': 0.95 } }
" endif
let g:fzf_history_dir = '~/.local/share/fzf-history'
let g:fzf_colors =
            \ { 'fg':      ['fg', 'Normal'],
            \ 'bg':      ['bg', 'Normal'],
            \ 'hl':      ['fg', 'Comment'],
            \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
            \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
            \ 'hl+':     ['fg', 'Statement'],
            \ 'info':    ['fg', 'PreProc'],
            \ 'prompt':  ['fg', 'Conditional'],
            \ 'pointer': ['fg', 'Exception'],
            \ 'marker':  ['fg', 'Keyword'],
            \ 'spinner': ['fg', 'Label'],
            \ 'header':  ['fg', 'Comment'] }
nnoremap <silent> <leader>d :Files .<cr>
nnoremap <silent> <leader>D :Files<cr>
nnoremap <silent> <leader>l :BLines<cr>
nnoremap <silent> <leader>L :Lines<cr>
nnoremap <silent> <leader>b :Buffers<cr>
nnoremap <silent> <leader>W :Windows<cr>
nnoremap <silent> <leader>: :Commands<cr>


 " ⣏⡉ ⣎⣱ ⢎⡑ ⢇⢸ ⡷⢾ ⡎⢱ ⢹⠁ ⡇ ⡎⢱ ⡷⣸
 " ⠧⠤ ⠇⠸ ⠢⠜  ⠇ ⠇⠸ ⠣⠜ ⠸  ⠇ ⠣⠜ ⠇⠹
" easymotion : go anywhere quiclky
" still, i don't use it a lot...
Plug 'easymotion/vim-easymotion'
let g:EasyMotion_keys='jklqsdfghnmwcxvbazertyuiop,:'
" <Leader>f{char} to move to {char}
map  =f <Plug>(easymotion-bd-f)
nmap =f <Plug>(easymotion-overwin-f)
" s{char}{char} to move to {char}{char}
nmap =s <Plug>(easymotion-overwin-f2)
" Move to line
map =l <Plug>(easymotion-bd-jk)
nmap =l <Plug>(easymotion-overwin-line)
" Move to word
map  =w <Plug>(easymotion-w)
nmap =w <Plug>(easymotion-w)
map  =W <Plug>(easymotion-W)
nmap =W <Plug>(easymotion-W)
" repeat last easymotion
map =. <Plug>(easymotion-repeat)
nmap =. <Plug>(easymotion-repeat)
" next and previous
map =n <Plug>(easymotion-next)
nmap =n <Plug>(easymotion-next)
map =N <Plug>(easymotion-prev)
nmap =N <Plug>(easymotion-prev)
" searching
nmap <leader>/ <Plug>(easymotion-bd-fn)


" ⢉⠝ ⡎⢱ ⡎⢱ ⡷⢾   ⡎⢱ ⡷⣸   ⣎⣱   ⡇⢸ ⡇ ⡷⣸ ⡏⢱ ⡎⢱ ⡇⢸
" ⠮⠤ ⠣⠜ ⠣⠜ ⠇⠸   ⠣⠜ ⠇⠹   ⠇⠸   ⠟⠻ ⠇ ⠇⠹ ⠧⠜ ⠣⠜ ⠟⠻
" toggles a vim window to be maximized or not
" keeps the windows sizes in memory
Plug 'markstory/vim-zoomwin'
map <silent> <leader>z :ZoomToggle<cr>


 " ⢹⠁ ⡇ ⡇  ⡇ ⡷⣸ ⡎⠑   ⢎⡑ ⡇⢸ ⣏⡱ ⡷⢾ ⡎⢱ ⡏⢱ ⣏⡉
 " ⠸  ⠇ ⠧⠤ ⠇ ⠇⠹ ⠣⠝   ⠢⠜ ⠣⠜ ⠧⠜ ⠇⠸ ⠣⠜ ⠧⠜ ⠧⠤
" replaced by the plugin : tomtom/tinykeymap_vim
" tiling submode
" submode to deal with windows
" Plug 'OsKaR31415/vim-tiling-submode'
" nnoremap <leader>q :TilingSubmode<cr>


 " ⡎⠑ ⡇⢸ ⢎⡑ ⢹⠁ ⡎⢱ ⡷⢾   ⢹⠁ ⣏⡉ ⢇⡸ ⢹⠁   ⡎⢱ ⣏⡱ ⠈⢹ ⣏⡉ ⡎⠑ ⢹⠁ ⢎⡑
 " ⠣⠔ ⠣⠜ ⠢⠜ ⠸  ⠣⠜ ⠇⠸   ⠸  ⠧⠤ ⠇⠸ ⠸    ⠣⠜ ⠧⠜ ⠣⠜ ⠧⠤ ⠣⠔ ⠸  ⠢⠜
Plug 'kana/vim-textobj-user'
" indentation text object
" ┏━ ii ai iI aI : text with the same intendation level
Plug 'kana/vim-textobj-indent'
" ┏━ if af : text in a function
Plug 'kana/vim-textobj-function'
" ┏━ iy ay : chars with the same syntax highlight
Plug 'kana/vim-textobj-syntax'
" ┏━ i_ a_ : text between two `_` (underscores)
Plug 'kana/vim-textobj-underscore'


 " ⣏⡉ ⢇⡸ ⡎⠑ ⣇⣸ ⣎⣱ ⡷⣸ ⡎⠑ ⣏⡉   ⠊⡱   ⣏⡱ ⣏⡉ ⡎⠑ ⡇ ⡎⢱ ⡷⣸ ⢎⡑
 " ⠧⠤ ⠇⠸ ⠣⠔ ⠇⠸ ⠇⠸ ⠇⠹ ⠣⠝ ⠧⠤   ⠮⠤   ⠇⠱ ⠧⠤ ⠣⠝ ⠇ ⠣⠜ ⠇⠹ ⠢⠜
" cx operator to exchange 2 regions
" cx{motion 1}, then cx{motion 2} swaps the texts
" in visual mode, X does the same thing
Plug 'tommcdo/vim-exchange'


 " ⢎⡑ ⢹⠁ ⣎⣱ ⣏⡱ ⢹⠁ ⡇ ⣏⡉ ⢇⢸
 " ⠢⠜ ⠸  ⠇⠸ ⠇⠱ ⠸  ⠇ ⠇   ⠇
Plug 'mhinz/vim-startify'
let g:startify_fortune_use_unicode = 1

 " ⣏⡱ ⣏⡉ ⣏⡱ ⡇    ⡇ ⡷⣸ ⢹⠁ ⣏⡉ ⡎⠑ ⣏⡱ ⣎⣱ ⢹⠁ ⡇ ⡎⢱ ⡷⣸
 " ⠇⠱ ⠧⠤ ⠇  ⠧⠤   ⠇ ⠇⠹ ⠸  ⠧⠤ ⠣⠝ ⠇⠱ ⠇⠸ ⠸  ⠇ ⠣⠜ ⠇⠹
" similar to vim-sendtoterm, but for a repl of the language
" great for languages like scheme (or maybe for little python scripts)
" \ "python": ["ptipython", "\<c-u>\<esc>[200~", "\<esc>[201~", 1],
Plug 'urbainvaes/vim-ripple'
let g:ripple_repls = {
            \ "python": ["ptpython", "\<c-u>\<esc>[200~", "\<esc>[201~", 1],
            \ "apl": "apl",
            \ "alda": "alda repl",
            \ "k": "k",
            \ "julia": "julia",
            \ "java": "jshell",
            \ "lua": "lua",
            \ "ocaml": "utop",
            \ "r": "R",
            \ "ruby": "irb",
            \ "scheme": "guile",
            \ "shell": "zsh"}
nmap gr yr
vnoremap gr :Ripple<cr>
nnoremap <leader>gr :%Ripple<cr>


 " ⢎⡑ ⣏⡉ ⡷⣸ ⡏⢱   ⢹⠁ ⣏⡉ ⢇⡸ ⢹⠁   ⢹⠁ ⡎⢱   ⢹⠁ ⡷⢾ ⡇⢸ ⢇⡸
 " ⠢⠜ ⠧⠤ ⠇⠹ ⠧⠜   ⠸  ⠧⠤ ⠇⠸ ⠸    ⠸  ⠣⠜   ⠸  ⠇⠸ ⠣⠜ ⠇⠸
" send text to a tmux pane
" is great used as asyncrun or as ripple
" but dispatch exists, and :Start is almost the same
" Plug 'christoomey/vim-tmux-runner'
" Plug 'tpope/vim-tbone'
Plug 'preservim/vimux'


 " ⡷⢾ ⡎⢱ ⡇⢸ ⡇ ⡷⣸ ⡎⠑   ⡇ ⡷⣸   ⡇⢸ ⡇ ⡷⢾   ⣎⣱ ⡷⣸ ⡏⢱   ⢹⠁ ⡷⢾ ⡇⢸ ⢇⡸   ⣏⡱ ⣎⣱ ⡷⣸ ⣏⡉ ⢎⡑
 " ⠇⠸ ⠣⠜ ⠸⠃ ⠇ ⠇⠹ ⠣⠝   ⠇ ⠇⠹   ⠸⠃ ⠇ ⠇⠸   ⠇⠸ ⠇⠹ ⠧⠜   ⠸  ⠇⠸ ⠣⠜ ⠇⠸   ⠇  ⠇⠸ ⠇⠹ ⠧⠤ ⠢⠜
" Using the same shortcut to move both in vim buffers and in tmux panes :
" <C-h>, <C-j>, <C-k> and <C-l>
" goes with a config in ~/.tmux.conf
Plug 'christoomey/vim-tmux-navigator'
tmap <c-h> <c-w>:TmuxNavigateLeft<cr>
tmap <c-j> <c-w>:TmuxNavigateDown<cr>
tmap <c-k> <c-w>:TmuxNavigateUp<cr>
tmap <c-l> <c-w>:TmuxNavigateRight<cr>



 " ⣏⡱ ⣎⣱ ⣏⡱ ⣏⡉ ⡷⣸ ⢹⠁ ⣇⣸ ⣏⡉ ⢎⡑ ⡇ ⢎⡑   ⡎⠑ ⡎⢱ ⡇  ⡎⢱ ⣏⡱ ⡇ ⢎⡑ ⣎⣱ ⢹⠁ ⡇ ⡎⢱ ⡷⣸
 " ⠇  ⠇⠸ ⠇⠱ ⠧⠤ ⠇⠹ ⠸  ⠇⠸ ⠧⠤ ⠢⠜ ⠇ ⠢⠜   ⠣⠔ ⠣⠜ ⠧⠤ ⠣⠜ ⠇⠱ ⠇ ⠢⠜ ⠇⠸ ⠸  ⠇ ⠣⠜ ⠇⠹
" rainbow parentheses that work well
Plug 'luochen1990/rainbow'
let g:rainbow_active = 1 "set to 0 if you want to enable it later via :RainbowToggle
" \    'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick'],
let s:symbols_to_rainbow_color = ',\|\.\|;\|=\|:\|!\|+\|-\|*\|>\|<' " symbols that will follow the rainbow parents colors
let g:rainbow_conf = {
            \ 'ctermfgs': ['37', '148', '31', '130', '136'],
            \ 'guis': [''],
            \ 'cterms': [''],
            \ 'operators': '_' . s:symbols_to_rainbow_color . '_',
            \ 'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold'],
            \ 'separately': {
                \ '*': {},
                \ 'markdown': { 'parentheses_options': 'containedin=markdownCode contained' },
                \ 'ocaml': {
                    \ 'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold']
                    \ },
                \ 'haskell': {
                    \ 'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/\v\{\ze[^-]/ end=/}/ fold'],
                    \ },
                \ 'vim': { 'parentheses_options': 'containedin=vimFuncBody' },
                \ 'perl': { 'syn_name_prefix': 'perlBlockFoldRainbow' },
                \ 'stylus': { 'parentheses': ['start=/{/ end=/}/ fold contains=@colorableGroup'] },
                \ 'css': 1,
            \ }
\ }
" let g:rainbow_ctermfgs = [197, 214, 81, 148, 141] " monokai
" let g:rainbow_ctermfgs = [208, 142, 167, 109, 175] " gruvbox
" let g:rainbow_ctermfgs = [117, 142, 167, 109, 175] " dracula
" (((((((((((((((())))))))))))))))


 " ⡎⠑ ⣇⣸ ⢹⠁   ⢎⡑ ⣇⣸
 " ⠣⠔ ⠇⠸ ⠸  ⠶ ⠢⠜ ⠇⠸
" have cht.sh directly inside vim
" queries the current line
" use :Cheat
Plug 'dbeniamine/cheat.sh-vim'
let g:CheatSheetFt=&ft

 " ⡏⢱ ⣏⡉ ⡇⢸ ⡇ ⡎⠑ ⡎⢱ ⡷⣸ ⢎⡑
 " ⠧⠜ ⠧⠤ ⠸⠃ ⠇ ⠣⠔ ⠣⠜ ⠇⠹ ⠢⠜
" devicons (airline, nerdtree, startify...)
" requires to be at the end
Plug 'ryanoasis/vim-devicons'
let g:webdevicons_enable=1
let g:webdevicons_enable_airline_statusline = 0
let g:webdevicons_enable_airline_tabline = 1


 " ⣇⠜ ⡇ ⡇  ⡇    ⢎⡑ ⣏⡉ ⣏⡉ ⣏⡱ ⢎⡑   ⡇
 " ⠇⠱ ⠇ ⠧⠤ ⠧⠤   ⠢⠜ ⠧⠤ ⠧⠤ ⠇  ⠢⠜   ⠅
" little kill-the-sheep game (space invaders-like)
Plug 'vim/killersheep'


 " ⡇  ⣏⡉ ⣎⣱ ⣏⡱ ⡷⣸   ⣏⡱ ⣏⡉ ⡇  ⣎⣱ ⢹⠁ ⡇ ⡇⢸ ⣏⡉   ⡷⣸ ⡇⢸ ⡷⢾ ⣏⡱ ⣏⡉ ⣏⡱ ⡇ ⡷⣸ ⡎⠑
 " ⠧⠤ ⠧⠤ ⠇⠸ ⠇⠱ ⠇⠹   ⠇⠱ ⠧⠤ ⠧⠤ ⠇⠸ ⠸  ⠇ ⠸⠃ ⠧⠤   ⠇⠹ ⠣⠜ ⠇⠸ ⠧⠜ ⠧⠤ ⠇⠱ ⠇ ⠇⠹ ⠣⠝
if has('nvim')  " sadly only works on neovim...
    Plug 'ThePrimeagen/vim-be-good'
    let g:vim_be_good_delete_me_offset = 100
endif


" All of your Plugs must be added before the following line
call plug#end()            " reluire

" enable filetype detection
filetype plugin indent on


" ┏┓╻┏━╸╻ ╻   ┏┳┓┏━┓┏━┓┏━┓╻┏┓╻┏━╸┏━┓
" ┃┗┫┣╸ ┃╻┃   ┃┃┃┣━┫┣━┛┣━┛┃┃┗┫┃╺┓┗━┓
" ╹ ╹┗━╸┗┻┛   ╹ ╹╹ ╹╹  ╹  ╹╹ ╹┗━┛┗━┛
" motions or mappings shortcuts i defined myself

set timeout timeoutlen=300

" reload config file
command! SO :wa | so ~/.vimrc | e
Arpeggio nnoremap <silent> so :SO<cr>

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

" K and J
" left and right equivalents in insert mode
inoremap jk <right>
inoremap kj <left>
" kl for normal mode in a terminal buffer
" tmap kl <C-w>N
" tmap lk <C-w>N
Arpeggio inoremap kl <esc>:echo "c'est mal !!"<cr>

" WINDOWS
Arpeggio nnoremap sj :below new<cr>
Arpeggio nnoremap sk :above new<cr>
Arpeggio nnoremap sh :above vnew<cr>
Arpeggio nnoremap sl :below vnew<cr>
Arpeggio nnoremap st :tabnew<cr>
Arpeggio nnoremap sq :quit<cr>
" replacement for <C-W>
nnoremap <leader>w <C-W>
nnoremap <cr> <C-w>
" <c-w>m: maximize
nnoremap <C-W>m <C-W>_<C-W>\|
" open a terminal on current window
nnoremap <leader>! :term ++curwin<cr>

" window submode
call tinykeymap#EnterMap("windows", "<leader>q", {"name": "Windows mode"})
call tinykeymap#Map("windows", "s", "split")
call tinykeymap#Map("windows", "v", "vsplit")
call tinykeymap#Map("windows", "h", "TmuxNavigateLeft")
call tinykeymap#Map("windows", "j", "TmuxNavigateDown")
call tinykeymap#Map("windows", "k", "TmuxNavigateUp")
call tinykeymap#Map("windows", "l", "TmuxNavigateRight")
call tinykeymap#Map("windows", "z", "ZoomToggle")
call tinykeymap#Map("windows", "x", "close")


" TABS
nnoremap <leader>t :tabnew<cr>
nnoremap <right> gt
nnoremap <left>  gT
nnoremap <silent> <up> :tabmove +1<cr>
nnoremap <silent> <down> :tabmove -1<cr>

" tabs submode
call tinykeymap#EnterMap("tabs", "\<c-t>", {"name": "Tabs mode"})
call tinykeymap#Map("tabs", "l", "norm! gt")
call tinykeymap#Map("tabs", "h", "norm! gT")
call tinykeymap#Map("tabs", "\_", "tabfirst")
call tinykeymap#Map("tabs", "$", "tablast")
call tinykeymap#Map("tabs", "c", "tabclose")
call tinykeymap#Map("tabs", "x", "tabclose")
call tinykeymap#Map("tabs", "k", "tabmove +1")
call tinykeymap#Map("tabs", "j", "tabmove -1")


" MISC
" show a clock
nnoremap <silent> <leader>h :!tty-clock -sc<cr><cr>

" ┏━┓╻ ╻┏┓╻╺┳╸┏━┓╻ ╻   ╻ ╻╻┏━╸╻ ╻╻  ╻┏━╸╻ ╻╺┳╸╻┏┓╻┏━╸
" ┗━┓┗┳┛┃┗┫ ┃ ┣━┫┏╋┛   ┣━┫┃┃╺┓┣━┫┃  ┃┃╺┓┣━┫ ┃ ┃┃┗┫┃╺┓
" ┗━┛ ╹ ╹ ╹ ╹ ╹ ╹╹ ╹   ╹ ╹╹┗━┛╹ ╹┗━╸╹┗━┛╹ ╹ ╹ ╹╹ ╹┗━┛
" syntax highlighting

" colorscheme
syntax on
set bg=dark
colo solarized8
au BufRead,BufNewFile,BufEnter, * hi Normal ctermbg=none ctermfg=none
au BufRead,BufNewFile,BufEnter, * hi Conceal ctermbg=none ctermfg=172
au BufRead,BufNewFile,BufEnter, * hi WildMenu term=standout ctermfg=black ctermbg=148
au BufRead,BufNewFile,BufEnter, * hi LineNr ctermbg=233 ctermfg=246

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
Arpeggionnoremap <silent> noh :noh<cr>

" better version of n and N : center the search map
silent nnoremap <silent> n nzz
silent nnoremap <silent> N Nzz

" ╺┳╸┏━┓┏━┓╻┏    ╻ ╻┏━┓┏━┓┏━┓╻┏━┓┏━┓
"  ┃ ┣━┫┗━┓┣┻┓   ┃╻┃┣━┫┣┳┛┣┳┛┃┃ ┃┣┳┛
"  ╹ ╹ ╹┗━┛╹ ╹   ┗┻┛╹ ╹╹┗╸╹┗╸╹┗━┛╹┗╸
" little simple integration with task warrior

" command to call task warrior
command! -nargs=* Task !task <args>

" <c-t> in command mode to start that command
cnoremap <c-t><c-t> Task<space>

" same for adding a given task
cnoremap <c-t>a Task add<space>
cnoremap <c-t><c-a> Task add<space>

" same for modifying a given task
cnoremap <c-t>m Task modify<space>
cnoremap <c-t><c-m> Task modify<space>


" ┏━┓╺┳╸╻ ╻┏━╸┏━┓   ┏━┓┏━╸╺┳╸╺┳╸╻┏┓╻┏━╸┏━┓
" ┃ ┃ ┃ ┣━┫┣╸ ┣┳┛   ┗━┓┣╸  ┃  ┃ ┃┃┗┫┃╺┓┗━┓
" ┗━┛ ╹ ╹ ╹┗━╸╹┗╸   ┗━┛┗━╸ ╹  ╹ ╹╹ ╹┗━┛┗━┛

set hidden

set shortmess+=c

set path+=*,**

" Enable mouse mode for command mode
set mouse=a
set ttymouse=sgr
" set vertical scroll step (here : 3)
nnoremap <ScrollWheelUp> <C-Y><C-Y><C-Y>
nnoremap <ScrollWheelDown> <C-e><C-e><C-e>


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



