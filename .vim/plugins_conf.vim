"           ▄▄▄▄                             ██
"           ▀▀██                             ▀▀
" ██▄███▄     ██      ██    ██   ▄███▄██   ████     ██▄████▄  ▄▄█████▄
" ██▀  ▀██    ██      ██    ██  ██▀  ▀██     ██     ██▀   ██  ██▄▄▄▄ ▀
" ██    ██    ██      ██    ██  ██    ██     ██     ██    ██   ▀▀▀▀██▄
" ███▄▄██▀    ██▄▄▄   ██▄▄▄███  ▀██▄▄███  ▄▄▄██▄▄▄  ██    ██  █▄▄▄▄▄██
" ██ ▀▀▀       ▀▀▀▀    ▀▀▀▀ ▀▀   ▄▀▀▀ ██  ▀▀▀▀▀▀▀▀  ▀▀    ▀▀   ▀▀▀▀▀▀
" ██                             ▀████▀▀
" they are a lot, i don't use all of them, but they are definitely cool


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
let g:arpeggio_timeoutlen=100

 " ⣏⡱ ⣏⡉ ⡎⠑ ⣏⡉ ⢇⡸   ⣎⣱ ⣏⡱ ⣏⡱ ⣏⡱ ⣏⡉ ⡇⢸ ⡇ ⣎⣱ ⢹⠁ ⡇ ⡎⢱ ⡷⣸ ⢎⡑
 " ⠇⠱ ⠧⠤ ⠣⠝ ⠧⠤ ⠇⠸   ⠇⠸ ⠧⠜ ⠧⠜ ⠇⠱ ⠧⠤ ⠸⠃ ⠇ ⠇⠸ ⠸  ⠇ ⠣⠜ ⠇⠹ ⠢⠜
" regex abbreviations
" can be used to do code snippets, but can do much more !
" source ~/.vim/my_plugins/regex-abbreviations/plugin/abbreviations.vim
Plug 'OsKaR31415/regex-abbreviations'
let g:regex_abbreviations#expand_symbol = ":"

 " ⢎⡑ ⡷⣸ ⡇ ⣏⡱ ⣏⡱ ⣏⡉ ⢹⠁ ⢎⡑
 " ⠢⠜ ⠇⠹ ⠇ ⠇  ⠇  ⠧⠤ ⠸  ⠢⠜
" classic but powerfull snippets : UltiSnips
if !has('nvim')
    Plug 'sirver/ultisnips'
    let g:UltiSnipsExpandTrigger = '<tab>'
    let g:UltiSnipsJumpForwardTrigger = '<tab>'
    let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'
    let g:UltiSnipsEditSplit = 'vertical'
    " Load latex shortcuts in markdown
    " au FileType markdown UltiSnipsAddFiletypes tex.markdown
endif



 " " ⢎⡑ ⡇⢸ ⣏⡱ ⡷⢾ ⡎⢱ ⡏⢱ ⣏⡉ ⢎⡑
 " " ⠢⠜ ⠣⠜ ⠧⠜ ⠇⠸ ⠣⠜ ⠧⠜ ⠧⠤ ⠢⠜
" " simple submodes !
" Plug 'tomtom/tinykeymap_vim'
" let g:tinykeymaps_defaults = 0 " don't use default mappings
" " else the plugin overrides the default mappings
" nmap gt gt
" nmap gT gT
" " " window submode
" " call tinykeymap#EnterMap("windows", "<leader>q", {"name": "Windows mode"})
" " call tinykeymap#Map("windows", "s", "split")
" " call tinykeymap#Map("windows", "v", "vsplit")
" " call tinykeymap#Map("windows", "h", "TmuxNavigateLeft")
" " call tinykeymap#Map("windows", "j", "TmuxNavigateDown")
" " call tinykeymap#Map("windows", "k", "TmuxNavigateUp")
" " call tinykeymap#Map("windows", "l", "TmuxNavigateRight")
" " call tinykeymap#Map("windows", "z", "ZoomToggle")
" " call tinykeymap#Map("windows", "x", "close")
" " " tabs submode
" " call tinykeymap#EnterMap("tabs", "\<c-t>", {"name": "Tabs mode"})
" " call tinykeymap#Map("tabs", "l", "norm! gt")
" " call tinykeymap#Map("tabs", "h", "norm! gT")
" " call tinykeymap#Map("tabs", "\_", "tabfirst")
" " call tinykeymap#Map("tabs", "$", "tablast")
" " call tinykeymap#Map("tabs", "c", "tabclose")
" " call tinykeymap#Map("tabs", "x", "tabclose")
" " call tinykeymap#Map("tabs", "k", "tabmove +1")
" " call tinykeymap#Map("tabs", "j", "tabmove -1")

" tiling submodes !
Plug 'OsKaR31415/vim-tiling-submode'
nmap <leader>q :TilingSubmode<cr>


 " ⡇⢸ ⡷⣸ ⡏⢱ ⡎⢱   ⢹⠁ ⣏⡱ ⣏⡉ ⣏⡉
 " ⠣⠜ ⠇⠹ ⠧⠜ ⠣⠜   ⠸  ⠇⠱ ⠧⠤ ⠧⠤
" simple undo tree
" usefull sometimes to recover something you changed
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
" Plug 'jpalardy/vim-slime'


 " ⢎⡑ ⣏⡉ ⡷⣸ ⡏⢱   ⢹⠁ ⣏⡉ ⢇⡸ ⢹⠁   ⢹⠁ ⡎⢱   ⢹⠁ ⡷⢾ ⡇⢸ ⢇⡸
 " ⠢⠜ ⠧⠤ ⠇⠹ ⠧⠜   ⠸  ⠧⠤ ⠇⠸ ⠸    ⠸  ⠣⠜   ⠸  ⠇⠸ ⠣⠜ ⠇⠸
" send text to a tmux pane
" is great used as asyncrun or as ripple
" but dispatch exists, and :Start is almost the same
" Plug 'christoomey/vim-tmux-runner'
" Plug 'tpope/vim-tbone'
Plug 'preservim/vimux'
nnoremap <leader>vo <cmd>VimuxOpenRunner<cr>
nnoremap <leader>vq <cmd>VimuxCloseRunner<cr>
nnoremap <leader>v! <cmd>VimuxTogglePane<cr>
nnoremap <leader>vl <cmd>VimuxClearTerminalScreen<cr>
nnoremap <leader>vv <cmd>VimuxPromptCommand<cr>
nnoremap <leader>vz <cmd>VimuxZoomRunner<cr>
nnoremap <leader>vi <cmd>VimuxInspectRunner<cr>
nnoremap <leader>vu <cmd>VimuxScrollUpInspect<cr>
nnoremap <leader>vd <cmd>VimuxScrollDownInspect<cr>
nnoremap <leader>v. <cmd>VimuxRunLastCommand<cr>


 " ⡷⢾ ⡎⢱ ⡇⢸ ⡇ ⡷⣸ ⡎⠑   ⡇ ⡷⣸   ⡇⢸ ⡇ ⡷⢾   ⣎⣱ ⡷⣸ ⡏⢱   ⢹⠁ ⡷⢾ ⡇⢸ ⢇⡸   ⣏⡱ ⣎⣱ ⡷⣸ ⣏⡉ ⢎⡑
 " ⠇⠸ ⠣⠜ ⠸⠃ ⠇ ⠇⠹ ⠣⠝   ⠇ ⠇⠹   ⠸⠃ ⠇ ⠇⠸   ⠇⠸ ⠇⠹ ⠧⠜   ⠸  ⠇⠸ ⠣⠜ ⠇⠸   ⠇  ⠇⠸ ⠇⠹ ⠧⠤ ⠢⠜
" Using the same shortcut to move both in vim buffers and in tmux panes :
" <C-h>, <C-j>, <C-k> and <C-l>
" goes with a config in ~/.tmux.conf
Plug 'christoomey/vim-tmux-navigator'
" do not extend it to terminal windows
" tmap <c-h> <c-w>:TmuxNavigateLeft<cr>
" tmap <c-j> <c-w>:TmuxNavigateDown<cr>
" tmap <c-k> <c-w>:TmuxNavigateUp<cr>
" tmap <c-l> <c-w>:TmuxNavigateRight<cr>



 " ⡎⠑ ⡎⢱ ⡎⠑
 " ⠣⠔ ⠣⠜ ⠣⠔
" coc : auto completion and LSP support
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
inoremap <silent><expr> <c-cr> coc#_select_confirm()
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [e <Plug>(coc-diagnostic-prev)
nmap <silent> ]e <Plug>(coc-diagnostic-next)
" GoTo code navigation.
nmap <silent> <leader>gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
" rename symbol
nmap <leader>rn <Plug>(coc-rename)
" fuzzy search outline with classes / functions / methods...
nnoremap <silent><nowait> <space>a :<C-u>CocList outline<cr>
" fuzzy search symbols
nnoremap <silent><nowait> <space>s :<C-u>CocList -I symbols<cr>


 " ⡷⢾ ⢇⢸ ⣏⡱ ⢇⢸   ⡇ ⡷⣸ ⢹⠁ ⣏⡉ ⡎⠑ ⣏⡱ ⣎⣱ ⢹⠁ ⡇ ⡎⢱ ⡷⣸
 " ⠇⠸  ⠇ ⠇   ⠇   ⠇ ⠇⠹ ⠸  ⠧⠤ ⠣⠝ ⠇⠱ ⠇⠸ ⠸  ⠇ ⠣⠜ ⠇⠹
" mypy integration (static type checker / generator)
Plug 'integralist/vim-mypy'
nnoremap <leader>p <cmd>mypy %<cr>


 " " ⡎⠑ ⡇⢸ ⢹⠁ ⢹⠁ ⣏⡉ ⡷⣸    ⢹⠁ ⣎⣱ ⡎⠑ ⢎⡑
 " " ⠣⠝ ⠣⠜ ⠸  ⠸  ⠧⠤ ⠇⠹ ⠉⠉ ⠸  ⠇⠸ ⠣⠝ ⠢⠜
" " auto-update ctags
" Plug 'ludovicchabant/vim-gutentags'


 " ⢹⠁ ⣎⣱ ⡎⠑ ⢎⡑   ⡇⢸ ⡇ ⢎⡑ ⡇⢸ ⣎⣱ ⡇  ⡇ ⢎⡑ ⣎⣱ ⢹⠁ ⡇ ⡎⢱ ⡷⣸
 " ⠸  ⠇⠸ ⠣⠝ ⠢⠜   ⠸⠃ ⠇ ⠢⠜ ⠣⠜ ⠇⠸ ⠧⠤ ⠇ ⠢⠜ ⠇⠸ ⠸  ⠇ ⠣⠜ ⠇⠹
" TODO: fix the problem with ctags source not showing anything with python
" Plug 'liuchengxu/vista.vim'
" toggle vista
" nnoremap <leader>v <cmd>Vista!!<cr>
" let g:vista#render#enable_icon = 1
" let g:vista_default_executive = 'coc'
" let g:vista_ctags_cmd = {
"       \ 'haskell': 'hasktags -x -o - -c',
"       \ }
" let g:vista#renderer#icons = {
"         \ "function": "",
"         \ "variable": ""
"       \ }


 " ⡎⠑ ⣎⣱ ⡇  ⡎⠑ ⡇⢸ ⡇  ⣎⣱ ⢹⠁ ⡎⢱ ⣏⡱
 " ⠣⠔ ⠇⠸ ⠧⠤ ⠣⠔ ⠣⠜ ⠧⠤ ⠇⠸ ⠸  ⠣⠜ ⠇⠱
" calculator buffer
Plug 'fedorenchik/VimCalc3'
let g:VCalc_Win_Size = 5
let g:VCalc_WindowPosition = 'top'
nnoremap <leader>, <cmd>Calc<cr>


 " ⡇  ⡇ ⡇⢸ ⣏⡉   ⡎⠑ ⡎⢱ ⡏⢱ ⣏⡉   ⣏⡉ ⡇⢸ ⣎⣱ ⡇  ⡇⢸ ⣎⣱ ⢹⠁ ⡇ ⡎⢱ ⡷⣸
 " ⠧⠤ ⠇ ⠸⠃ ⠧⠤   ⠣⠔ ⠣⠜ ⠧⠜ ⠧⠤   ⠧⠤ ⠸⠃ ⠇⠸ ⠧⠤ ⠣⠜ ⠇⠸ ⠸  ⠇ ⠣⠜ ⠇⠹
" live preview code execution scratchpad (live preview result)
Plug 'metakirby5/codi.vim'
function! s:strip_escape_codes(line)
    let res = a:line
    let res = substitute(res, "\<esc>".'\[\d\(\a\|\dm\)', '', 'g')
    let res = substitute(res, "\n", ' ', 'g')
    return res
endfunction
let g:codi#interpreters = {
        \ 'python': {
            \ 'bin': 'python3',
            \ 'prompt': '^\(>>>\|\.\.\.\) ',
            \ 'preprocess': function('s:strip_escape_codes'),
        \ },
    \ }
" width : int->number of columns   float->percentage of the screen
" only when not using virtual text
let g:codi#width = 40.0
" print the text next to the current line instead of a different pane
let g:codi#virtual_text = 1
let g:codi#raw = 0



 " ⣇⣸ ⢹⠁ ⡷⢾ ⡇    ⡇  ⡇ ⡇⢸ ⣏⡉   ⣏⡱ ⣏⡱ ⣏⡉ ⡇⢸ ⡇ ⣏⡉ ⡇⢸
 " ⠇⠸ ⠸  ⠇⠸ ⠧⠤   ⠧⠤ ⠇ ⠸⠃ ⠧⠤   ⠇  ⠇⠱ ⠧⠤ ⠸⠃ ⠇ ⠧⠤ ⠟⠻
" html live preview (with firefox plugin)
" Plug 'flomotlik/vim-livereload' " , {'for': ['html', 'css', 'js']}
" Plug 'greyblake/vim-preview'

 " ⣏⡉ ⡷⢾ ⡷⢾ ⣏⡉ ⢹⠁
 " ⠧⠤ ⠇⠸ ⠇⠸ ⠧⠤ ⠸
" emmet abbreviations for html
" default shortcut to expand is <c-y>,
Plug 'mattn/emmet-vim', {'for': ['html', 'php']}
" default expand shortcut is <c-y>,
" i use <c-l>,
let g:user_emmet_mode='n'    "only enable normal mode functions.
let g:user_emmet_mode='a'    "enable all function in all mode.
let g:user_emmet_leader_key='='



 " ⡇⢸ ⡇ ⡷⢾   ⣏⡱ ⣏⡉ ⡷⣸ ⡎⠑ ⡇ ⡇
 " ⠸⠃ ⠇ ⠇⠸   ⠇  ⠧⠤ ⠇⠹ ⠣⠔ ⠇ ⠧⠤
" vim for writing natural languages
" wrap by words (not splitting in the middle of a word)
Plug 'reedes/vim-pencil'


 " ⣏⡱ ⣎⣱ ⡷⣸ ⡏⢱ ⡎⢱ ⡎⠑   ⡷⢾ ⣎⣱ ⣏⡱ ⣇⠜ ⡏⢱ ⡎⢱ ⡇⢸ ⡷⣸   ⣇⣸ ⡇ ⡎⠑ ⣇⣸ ⡇  ⡇ ⡎⠑ ⣇⣸
 " ⠇  ⠇⠸ ⠇⠹ ⠧⠜ ⠣⠜ ⠣⠔   ⠇⠸ ⠇⠸ ⠇⠱ ⠇⠱ ⠧⠜ ⠣⠜ ⠟⠻ ⠇⠹   ⠇⠸ ⠇ ⠣⠝ ⠇⠸ ⠧⠤ ⠇ ⠣⠝ ⠇⠸
" pandoc flavored markdown documents syntax highlight
Plug 'vim-pandoc/vim-pandoc-syntax'
let g:pandoc#syntax#conceal#use = 1
let g:pandoc#syntax#conceal#urls = 1


 " ⣏⡱ ⣎⣱ ⡷⣸ ⡏⢱ ⡎⢱ ⡎⠑   ⡷⢾ ⣎⣱ ⣏⡱ ⣇⠜ ⡏⢱ ⡎⢱ ⡇⢸ ⡷⣸   ⣇⣸ ⡇ ⡎⠑ ⣇⣸ ⡇  ⡇ ⡎⠑ ⣇⣸
 " ⠇  ⠇⠸ ⠇⠹ ⠧⠜ ⠣⠜ ⠣⠔   ⠇⠸ ⠇⠸ ⠇⠱ ⠇⠱ ⠧⠜ ⠣⠜ ⠟⠻ ⠇⠹   ⠇⠸ ⠇ ⠣⠝ ⠇⠸ ⠧⠤ ⠇ ⠣⠝ ⠇⠸
" pandoc flavored markdown documents syntax highlight
Plug 'vim-pandoc/vim-pandoc-syntax'
let g:pandoc#syntax#conceal#use = 1
let g:pandoc#syntax#conceal#urls = 1


 " ⡷⢾ ⣎⣱ ⣏⡱ ⣇⠜ ⡏⢱ ⡎⢱ ⡇⢸ ⡷⣸  ⡜ ⡇  ⣎⣱ ⢹⠁ ⣏⡉ ⢇⡸   ⡇ ⡷⣸ ⡇  ⡇ ⡷⣸ ⣏⡉   ⣏⡱ ⣏⡱ ⣏⡉ ⡇⢸ ⡇ ⣏⡉ ⡇⢸
 " ⠇⠸ ⠇⠸ ⠇⠱ ⠇⠱ ⠧⠜ ⠣⠜ ⠟⠻ ⠇⠹ ⠎  ⠧⠤ ⠇⠸ ⠸  ⠧⠤ ⠇⠸   ⠇ ⠇⠹ ⠧⠤ ⠇ ⠇⠹ ⠧⠤   ⠇  ⠇⠱ ⠧⠤ ⠸⠃ ⠇ ⠧⠤ ⠟⠻
" markdown features (conceal, shortcuts...)
Plug 'preservim/vim-markdown', {'for': ['markdown', 'tex', 'latex', 'quarto']}
" set conceallevel=2
" set concealcursor=c  " don't conceal the cursor's line
" au FileType markdown set concealcursor=ci  " also conceal in insert mode
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_emphasis_multiline = 0
let g:vim_markdown_frontmatter = 1
let g:vim_markdown_conceal_code_blocks = 0
let g:vim_markdown_fenced_languages = ['csharp=cs', 'python3=python', 'py=python']
" syntax extensions
let g:vim_markdown_yaml_frontmatter = 1
let g:vim_markdown_math = 1
let g:vim_markdown_strikethrough = 1 " ~~strikethrough~~
" link jumping features
let g:vim_markdown_no_extensions_in_markdown = 1 " dont require the .md
let g:vim_markdown_autowrite = 1 " auto-write when folowing link
" let g:vim_markdown_edit_url_in = 'tab' " where to open a followed link : tab, vsplit, hsplit, current
" Table of contents
let g:vim_markdown_toc_autofit = 0 " make it as small as possible
" Automatically update the Toc
let g:auto_update_toc = 0 " set to 1 to enable by default
command TocAutoUpdateToggle let g:auto_update_toc=!g:auto_update_toc
command TocAutoUpdate let g:auto_update_toc=1
command TocAutoUpdateDisable let g:auto_update_toc=0
fun! TocUpdateTrigger()
    if g:auto_update_toc
        silent! Toc
    endif
endfun
au filetype markdown au BufWritePost * call TocUpdateTrigger()
" Editing
let g:vim_markdown_auto_insert_bullets = 0
let g:vim_markdown_new_list_item_indent = 0




 " ⡷⢾ ⣎⣱ ⣏⡱ ⣇⠜ ⡏⢱ ⡎⢱ ⡇⢸ ⡷⣸   ⣏⡉ ⡏⢱ ⡇ ⢹⠁ ⡇ ⡷⣸ ⡎⠑   ⣏⡉ ⣏⡉ ⣎⣱ ⢹⠁ ⡇⢸ ⣏⡱ ⣏⡉ ⢎⡑
 " ⠇⠸ ⠇⠸ ⠇⠱ ⠇⠱ ⠧⠜ ⠣⠜ ⠟⠻ ⠇⠹   ⠧⠤ ⠧⠜ ⠇ ⠸  ⠇ ⠇⠹ ⠣⠝   ⠇  ⠧⠤ ⠇⠸ ⠸  ⠣⠜ ⠇⠱ ⠧⠤ ⠢⠜
" cool features for markdown editing
Plug 'SidOfc/mkdx'
" markdown editing leader (prefix). see :h mkdx-setting-map-prefix
let g:mkdx#settings = {
            \ 'image_extension_pattern': 'a\?png\|jpe\?g\|gif',
            \ 'insert_indent_mappings':  1,
            \ 'gf_on_steroids':          1,
            \ 'restore_visual':          1,
            \ 'enter':                   { 'enable': 1, 'shift': 0, 'o': 1,
            \                              'shifto': 0, 'malformed': 1 },
            \ 'map':                     { 'prefix': 'ù', 'enable': 1 },
            \ 'tokens':                  { 'enter':  ['-', '*', '>'],
            \                              'bold':   '**', 'italic': '*',
            \                              'strike': '',
            \                              'list':   '-',  'fence':  '',
            \                              'header': '#' },
            \ 'checkbox':                { 'toggles': [' ', '/', 'x'],
            \                              'update_tree': 2,
            \                              'initial_state': ' ',
            \                              'match_attrs': {
            \                                 'mkdxCheckboxEmpty': '',
            \                                 'mkdxCheckboxPending': '/',
            \                                 'mkdxCheckboxComplete': 'x',
            \                               }, },
            \ 'toc':                     { 'text':       "TOC",
            \                              'list_token': '-',
            \                              'position':   0,
            \                              'update_on_write':   0,
            \                              'details':    {
            \                                 'enable':  0,
            \                                 'summary': '{{toc.text}}',
            \                                 'nesting_level': -1,
            \                                 'child_count': 5,
            \                                 'child_summary': 'show {{count}} items'
            \                              },
            \                            },
            \ 'table':                   { 'divider': '|',
            \                              'header_divider': '-',
            \                              'align': {
            \                                 'left':    [],
            \                                 'right':   [],
            \                                 'center':  [],
            \                                 'default': 'center'
            \                              },
            \                            },
            \ 'links':                   { 'external': {
            \                                 'enable':     0,
            \                                 'timeout':    3,
            \                                 'host':       '',
            \                                 'relative':   1,
            \                                 'user_agent': 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/9001.0.0000.000 vim-mkdx/1.10.0',
            \                              },
            \                              'fragment': {
            \                                 'jumplist': 1,
            \                                 'complete': 1
            \                              },
            \                              'conceal': 1,
            \                            },
            \ 'highlight':               {
            \                              'enable': 0,
            \                              'frontmatter': {
            \                                'yaml': 1,
            \                                'toml': 0,
            \                                'json': 0,
            \                              }
            \                            },
            \ 'auto_update':             { 'enable': 1 },
            \ 'fold':                    { 'enable': 0, 'components': ['toc', 'fence'] }
            \ }


 " ⡇⢸ ⡇ ⣇⠜ ⡇ ⡇  ⡇ ⡷⣸ ⣇⠜ ⢎⡑
 " ⠟⠻ ⠇ ⠇⠱ ⠇ ⠧⠤ ⠇ ⠇⠹ ⠇⠱ ⠢⠜
" manipulate wikilinks
" Plug 'vim-scripts/vim-markdown-wiki'
Plug 'mmai/wikilink', {'for': ['markdown', 'quarto']}
let wikilinkAutosplit="off"


 " ⡇  ⣎⣱ ⢹⠁ ⣏⡉ ⢇⡸   ⡎⠑ ⡎⢱ ⡷⣸ ⡎⠑ ⣏⡉ ⣎⣱ ⡇
 " ⠧⠤ ⠇⠸ ⠸  ⠧⠤ ⠇⠸   ⠣⠔ ⠣⠜ ⠇⠹ ⠣⠔ ⠧⠤ ⠇⠸ ⠧⠤
" better Latex conceal for live preview !!
Plug 'KeitaNakamura/tex-conceal.vim', {'for': ['markdown', 'tex', 'latex']}
let g:tex_conceal = "abdmgs"
let g:tex_conceal_frac = 1
set conceallevel=2


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
" " custom markdown style sheet. must be absolute path (you can use expand)
" let g:mkdp_markdown_css = expand('~/.vim/markdown_preview_stylesheet.css')
" recognized filetypes (will have MarkdownPreview.* commands)
let g:mkdp_filetypes = ['markdown', 'quarto', 'text']


 " ⡎⢱ ⡇⢸ ⣎⣱ ⣏⡱ ⢹⠁ ⡎⢱
 " ⠣⠪ ⠣⠜ ⠇⠸ ⠇⠱ ⠸  ⠣⠜
" quarto markdowg blog (live preview)
Plug 'quarto-dev/quarto-vim'


 " ⡷⢾ ⣎⣱ ⣏⡱ ⣇⠜ ⡏⢱ ⡎⢱ ⡇⢸ ⡷⣸   ⡇  ⡇ ⢹⠁ ⣏⡉ ⣏⡱ ⣎⣱ ⢹⠁ ⣏⡉   ⣏⡱ ⣏⡱ ⡎⢱ ⡎⠑ ⣏⡱ ⣎⣱ ⡷⢾ ⡷⢾ ⡇ ⡷⣸ ⡎⠑
 " ⠇⠸ ⠇⠸ ⠇⠱ ⠇⠱ ⠧⠜ ⠣⠜ ⠟⠻ ⠇⠹   ⠧⠤ ⠇ ⠸  ⠧⠤ ⠇⠱ ⠇⠸ ⠸  ⠧⠤   ⠇  ⠇⠱ ⠣⠜ ⠣⠝ ⠇⠱ ⠇⠸ ⠇⠸ ⠇⠸ ⠇ ⠇⠹ ⠣⠝
" markdown literate programming
" Plug 'https://github.com/grwlf/litrepl.vim' , { 'rtp': 'vim' }
Plug 'dbridges/vim-markdown-runner'
augroup VimMarkdownRunner
    au!
    au SourcePost let g:markdown_runners['python'] = 'python3'
augroup end
nnoremap <c-cr> :MarkdownRunnerInsert<cr>


" ┏┓╻╻ ╻╻┏┳┓   ┏━┓╻  ╻ ╻┏━╸╻┏┓╻┏━┓
" ┃┗┫┃┏┛┃┃┃┃   ┣━┛┃  ┃ ┃┃╺┓┃┃┗┫┗━┓
" ╹ ╹┗┛ ╹╹ ╹   ╹  ┗━╸┗━┛┗━┛╹╹ ╹┗━┛
if has('nvim') " neovim plugins
    " ⡇  ⣏⡉ ⣎⣱ ⣏⡱ ⡷⣸   ⣏⡱ ⣏⡉ ⡇  ⣎⣱ ⢹⠁ ⡇ ⡇⢸ ⣏⡉   ⡷⣸ ⡇⢸ ⡷⢾ ⣏⡱ ⣏⡉ ⣏⡱ ⡇ ⡷⣸ ⡎⠑
    " ⠧⠤ ⠧⠤ ⠇⠸ ⠇⠱ ⠇⠹   ⠇⠱ ⠧⠤ ⠧⠤ ⠇⠸ ⠸  ⠇ ⠸⠃ ⠧⠤   ⠇⠹ ⠣⠜ ⠇⠸ ⠧⠜ ⠧⠤ ⠇⠱ ⠇ ⠇⠹ ⠣⠝
    Plug 'ThePrimeagen/vim-be-good'
    let g:vim_be_good_delete_me_offset = 100

    " " misc utility functions for plugin writing
    " " required for epwalsh/obsidian.nvim
    " Plug 'nvim-lua/plenary.nvim'

     " " ⡷⣸ ⡇⢸ ⡇ ⡷⢾   ⣎⣱ ⡇⢸ ⢹⠁ ⡎⢱ ⡎⠑ ⡎⢱ ⡷⢾ ⣏⡱ ⡇  ⣏⡉ ⢹⠁ ⡇ ⡎⢱ ⡷⣸
     " " ⠇⠹ ⠸⠃ ⠇ ⠇⠸   ⠇⠸ ⠣⠜ ⠸  ⠣⠜ ⠣⠔ ⠣⠜ ⠇⠸ ⠇  ⠧⠤ ⠧⠤ ⠸  ⠇ ⠣⠜ ⠇⠹
    " " nvim autocompletion engine
    " " used by epwalsh/obsidian.nvim
    " Plug 'hrsh7th/nvim-cmp'

     " " ⡎⢱ ⣏⡱ ⢎⡑ ⡇ ⡏⢱ ⡇ ⣎⣱ ⡷⣸   ⡷⣸ ⡇⢸ ⡇ ⡷⢾
     " " ⠣⠜ ⠧⠜ ⠢⠜ ⠇ ⠧⠜ ⠇ ⠇⠸ ⠇⠹   ⠇⠹ ⠸⠃ ⠇ ⠇⠸
    " " obsidian.nvim : read an obsidian vault inside vim
    " " requires nvim-lua/plenary.nvim
    " Plug 'epwalsh/obsidian.nvim'
    " luafile ~/.vim/plugged/obsidian.nvim/lua/obsidian/init.lua

     " ⣏⡉ ⡇⢸ ⢉⠝ ⢉⠝ ⢇⢸   ⣏⡉ ⡇ ⡷⣸ ⡏⢱ ⣏⡉ ⣏⡱
     " ⠇  ⠣⠜ ⠮⠤ ⠮⠤  ⠇   ⠇  ⠇ ⠇⠹ ⠧⠜ ⠧⠤ ⠇⠱
    " Plug 'nvim-telescope/telescope.nvim'


endif






" Plug 'prabirshrestha/async.vim'
" Plug 'christianrondeau/vim-base64'
" " pandoc markdown live preview
" Plug 'tex/vimpreviewpandoc'

 " ⡷⢾ ⣎⣱ ⣏⡱ ⣇⠜ ⡏⢱ ⡎⢱ ⡇⢸ ⡷⣸   ⢹⠁ ⡎⢱ ⡎⠑
 " ⠇⠸ ⠇⠸ ⠇⠱ ⠇⠱ ⠧⠜ ⠣⠜ ⠟⠻ ⠇⠹   ⠸  ⠣⠜ ⠣⠔
" markdown auto-generated table of contents
" :GenTocGfm : generate the toc on current cursor position
Plug 'mzlogin/vim-markdown-toc', {'for': [ 'markdown', 'quarto' ]}
let g:vmt_auto_update_on_save = 1


 " ⣏⡱ ⣏⡱ ⣏⡉ ⢎⡑ ⣏⡉ ⡷⣸ ⢹⠁ ⡇ ⡷⣸ ⡎⠑   ⡔⠁ ⡷⢾ ⣇⠜ ⡏⢱   ⣏⡱ ⣏⡱ ⣏⡉ ⢎⡑ ⣏⡉ ⡷⣸ ⢹⠁ ⣎⣱ ⢹⠁ ⡇ ⡎⢱ ⡷⣸ ⢎⡑ ⠈⢢
 " ⠇  ⠇⠱ ⠧⠤ ⠢⠜ ⠧⠤ ⠇⠹ ⠸  ⠇ ⠇⠹ ⠣⠝   ⠣⡀ ⠇⠸ ⠇⠱ ⠧⠜   ⠇  ⠇⠱ ⠧⠤ ⠢⠜ ⠧⠤ ⠇⠹ ⠸  ⠇⠸ ⠸  ⠇ ⠣⠜ ⠇⠹ ⠢⠜ ⢀⠜
" presentations inside vim itself
Plug 'sotte/presenting.vim', {'for': [ 'markdown' ]}
nnoremap <leader>ps :PresentingStart<cr>

 " " ⡇⢸ ⡇ ⡷⢾   ⡇⢸ ⡇ ⣇⠜ ⡇
 " " ⠸⠃ ⠇ ⠇⠸   ⠟⠻ ⠇ ⠇⠱ ⠇
" " support for wikilinks
" Plug 'vimwiki/vimwiki'
" " set path to my wiki and prefer markdown
" let wiki_1 = {}
" let wiki_1.path = "~/vimwiki/wiki"
" let wiki_1.path_html = "~/vimwiki/html"
" let wiki_1.syntax = "markdown"
" let g:vimwiki_list = [wiki_1]

 " ⡎⠑ ⣏⡉ ⡷⢾ ⡇ ⡷⣸ ⡇
 " ⠣⠝ ⠧⠤ ⠇⠸ ⠇ ⠇⠹ ⠇
" read gemini webpages from vim
" gemini syntax higlighting
Plug 'https://git.sr.ht/~torresjrjr/gemini.vim/'


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


 " ⢉⠝ ⣏⡉ ⡷⣸   ⡷⢾ ⡎⢱ ⡏⢱ ⣏⡉
 " ⠮⠤ ⠧⠤ ⠇⠹   ⠇⠸ ⠣⠜ ⠧⠜ ⠧⠤
" kind of zen mode
" unused for the moment, but could be wit presenting.vim
Plug 'junegunn/goyo.vim'
" command! Zen Goyo|Limelight!!
" Arpeggio nnoremap zen <cmd>Zen<cr>
nnoremap <leader>y <cmd>Goyo<cr>
let g:goyo_width = "100%"
let g:goyo_height = "100%"
" Plug 'junegunn/limelight.vim'
" let g:limelight_priority = -1 " -1 to not orverrule hlsearch
" " Number of preceding/following paragraphs to include (default: 0)
" " let g:limelight_paragraph_span = 2
" " autocmd! User GoyoEnter Limelight
" " autocmd! User GoyoLeave Limelight!
" autocmd! User GoyoLeave BackgroundColorReset
" Plug 'junegunn/vim-emoji'
" let g:limelight_conceal_ctermfg=1

 " ⡇⢸ ⡇   ⢹⠁ ⡎⢱ ⡎⠑ ⡎⠑ ⡇  ⣏⡉
 " ⠣⠜ ⠇   ⠸  ⠣⠜ ⠣⠝ ⠣⠝ ⠧⠤ ⠧⠤
" my first plugin !
" toggles parts of the ui like tabline, statusline, line numbers or background
Plug 'OsKaR31415/vim-ui-toggle'
let g:background_colors_list = ["none", "234", "235", "233", "232"]
let g:background_color_index = 0
" UI hide and show
nnoremap <silent> <leader>us <cmd>StatuslineToggle<cr>
nnoremap <silent> <leader>ut <cmd>TablineToggle<cr>
nnoremap <silent> <leader>ul <cmd>LineNumbersToggle<cr>
nnoremap <silent> <leader>un <cmd>RelativeNumberingToggle<cr>
nnoremap <silent> <leader>uc <cmd>CursorCrossToggle<cr>
nnoremap <silent> <leader>ug <cmd>SignColumnToggle<cr>
" cycle between different colors
nnoremap <silent> <leader>ub <cmd>BackgroundColorCycle<cr>
nnoremap <silent> <leader>uB <cmd>BackgroundColorReset<cr>
" toggle all of them
nnoremap <silent> <leader>uu <cmd>UItoggle<cr>
nnoremap <silent> <leader>uq <cmd>UItoggle<cr>
nnoremap <silent> <leader>ur <cmd>UIreset<cr>


" ⢎⡑ ⡷⢾ ⡎⢱ ⡎⢱ ⢹⠁ ⣇⣸   ⢎⡑ ⡎⠑ ⣏⡱ ⡎⢱ ⡇  ⡇  ⡇ ⡷⣸ ⡎⠑
" ⠢⠜ ⠇⠸ ⠣⠜ ⠣⠜ ⠸  ⠇⠸   ⠢⠜ ⠣⠔ ⠇⠱ ⠣⠜ ⠧⠤ ⠧⠤ ⠇ ⠇⠹ ⠣⠝
" smooth scrolling
if !exists("g:neovide")
    Plug 'psliwka/vim-smoothie'
    nmap zz <cmd>call smoothie#do('zz') <cr>
endif

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
Plug 'vim-scripts/maroloccio'
Plug 'altercation/vim-colors-solarized'


" " ⣎⣱ ⢎⡑ ⢇⢸ ⡷⣸ ⡎⠑   ⣏⡱ ⡇⢸ ⡷⣸
" " ⠇⠸ ⠢⠜  ⠇ ⠇⠹ ⠣⠔   ⠇⠱ ⠣⠜ ⠇⠹
" " run asycronously any terminal command, and get the stdout in the quickfix
" " list. but Dispatch is better, even if it needs Makefile / makeprg set
" Plug 'skywind3000/asyncrun.vim'
" let g:asyncrun_open=7
" let $PYTHONUNBUFFERED=1


" ⣎⣱ ⢎⡑ ⢇⢸ ⡷⣸ ⡎⠑   ⡷⢾ ⣎⣱ ⣇⠜ ⣏⡉
" ⠇⠸ ⠢⠜  ⠇ ⠇⠹ ⠣⠔   ⠇⠸ ⠇⠸ ⠇⠱ ⠧⠤
" asyncronous version of make
" integrates with tmux (and that is awsome)
" :Make and :Copen (also `:Dispatch [compiler] [file]`)
Plug 'tpope/vim-dispatch'
Arpeggio nnoremap cop <cmd>Cope<cr>


" ⡇⢸ ⡇ ⡷⢾   ⣏⡱ ⣏⡉ ⣏⡱ ⣏⡉ ⣎⣱ ⢹⠁
" ⠸⠃ ⠇ ⠇⠸   ⠇⠱ ⠧⠤ ⠇  ⠧⠤ ⠇⠸ ⠸
" make plugin commads repeatable
Plug 'tpope/vim-repeat'


" ⢎⡑ ⣏⡱ ⣎⣱ ⡎⠑ ⣏⡉
" ⠢⠜ ⠇  ⠇⠸ ⠣⠔ ⠧⠤
" Repeat last motion / command / action
Plug 'spiiph/vim-space'


" unimpaired : complementary pair of mappings
Plug 'tpope/vim-unimpaired'
nmap ç [
    nmap à ]
    omap ç [
        omap à ]
        xmap ç [
            xmap à ]
            vmap ç [
                vmap à ]


                " ⡷⢾ ⣎⣱ ⢹⠁ ⡎⠑ ⣇⣸ ⡇ ⢹⠁
                " ⠇⠸ ⠇⠸ ⠸  ⠣⠔ ⠇⠸ ⠇ ⠸
                " matchit extanded % matching
                Plug 'tmhedberg/matchit'


                " ⢎⡑ ⡇⢸ ⣏⡱ ⣏⡱ ⡎⢱ ⡇⢸ ⡷⣸ ⡏⢱
                " ⠢⠜ ⠣⠜ ⠇⠱ ⠇⠱ ⠣⠜ ⠣⠜ ⠇⠹ ⠧⠜
                " surround with brackets, with tags...
                Plug 'tpope/vim-surround'
                let g:surround_{char2nr("\\")} = "\\\1\\\1 \r \\\2\\\2"
                let g:surround_{char2nr("m")} = "\\left\1left: \1 \r \\right\2right: \2"
                let g:surround_{char2nr("P")} = "\\left( \r \\right)"
                let g:surround_{char2nr("v")} = "\\lvert \r \\lvert"
                " let g:surround_{char2nr("s")} = "\\left\{ \\begin{array}{c} \r \\end{array} \\right."
                nmap gs ys
                nmap g) ysa))
                nmap g( ysa))a


                " ⣎⣱ ⡇⢸ ⢹⠁ ⡎⢱   ⣏⡱ ⣏⡱ ⣎⣱ ⡎⠑ ⣇⠜ ⣏⡉ ⢹⠁ ⢎⡑   ⡎⠑ ⡇  ⡎⢱ ⢎⡑ ⡇ ⡷⣸ ⡎⠑
                " ⠇⠸ ⠣⠜ ⠸  ⠣⠜   ⠧⠜ ⠇⠱ ⠇⠸ ⠣⠔ ⠇⠱ ⠧⠤ ⠸  ⠢⠜   ⠣⠔ ⠧⠤ ⠣⠜ ⠢⠜ ⠇ ⠇⠹ ⠣⠝
                " automatic brackets / parenthesis closing
                " the best one i found : has very intelligent rules
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



                        " ⣏⡱ ⣎⣱ ⣏⡱ ⡇ ⡷⣸ ⣏⡉ ⣏⡉ ⣏⡱   ⡔⠁ ⡇  ⡇ ⢎⡑ ⣏⡱ ⠈⢢
                        " ⠇  ⠇⠸ ⠇⠱ ⠇ ⠇⠹ ⠇  ⠧⠤ ⠇⠱   ⠣⡀ ⠧⠤ ⠇ ⠢⠜ ⠇  ⢀⠜
                        " vim parinfer (automatic lisp parenthesis)
                        Plug 'eraserhd/parinfer-rust', {'do': 'cargo build --release'}

                        " ⣎⣱ ⡇ ⣏⡱ ⡇  ⡇ ⡷⣸ ⣏⡉
                        " ⠇⠸ ⠇ ⠇⠱ ⠧⠤ ⠇ ⠇⠹ ⠧⠤
                        " better statusline style
                        " TODO: try to do the same without a plugin
                        Plug 'vim-airline/vim-airline'
                        Plug 'vim-airline/vim-airline-themes'
                        let g:airline#extensions#tabline#enabled = 0
                        let g:airline_statusline_ontop = 0
                        let g:airline_powerline_fonts = 0
                        let g:airline_theme="solarized_flood"
                        set laststatus=2
                        " ꗯ 𝑽  
                        " 🌊🔥🌈🌱
                        " 📂 
                        "        
                        " let g:airline_section_a = ""
                        let g:airline_section_b = " %F"
                        " let g:airline_section_c = ""
                        " let g:airline_section_x = ""
                        " let g:airline_section_y = "" " section for search match
                        let g:airline_section_z = "≡%l/%L"
                        " let g:airline_section_warning = ""
                        " let g:airline_section_error = ""
                        " let g:airline_section_gutter = ""


                        " ⡎⠑ ⡎⢱ ⡷⢾ ⡷⢾ ⣏⡉ ⡷⣸ ⢹⠁
                        " ⠣⠔ ⠣⠜ ⠇⠸ ⠇⠸ ⠧⠤ ⠇⠹ ⠸
                        " comment by lines
                        " custom comment strings are in .vim/after/syntax/...
                        Plug 'tpope/vim-commentary'
                        map <leader>c gc
                        nmap <leader>c gc


                        " ⡇⢸ ⡷⣸ ⡇ ⢇⡸   ⣇⣸ ⣏⡉ ⡇  ⣏⡱ ⣏⡉ ⣏⡱
                        " ⠣⠜ ⠇⠹ ⠇ ⠇⠸   ⠇⠸ ⠧⠤ ⠧⠤ ⠇  ⠧⠤ ⠇⠱
                        " unix helper : add usefull unix commands (mkdir, delete, find, locate...)
                        Plug 'tpope/vim-eunuch'

                        " " ⡷⣸ ⣏⡉ ⢹⠁ ⣏⡱ ⡇⢸
                        " " ⠇⠹ ⠧⠤ ⠸  ⠇⠱ ⠟⠻
                        " " my config to make netrw usable (hard, i admit) (vinegar)
                        " " not a plugin but it could almost be one
                        " Plug 'tpope/vim-vinegar'
                        " let g:netrw_banner         = 0  " get rid of the annoying banner
                        " let g:netrw_browse_split   = 4  " make netrw to open selected file in previous window
                        " let g:netrw_keepdir        = 0  " make vim root follow netrw's one
                        " let g:netrw_winsize        = 25 " defauld win size
                        " let g:netrw_liststyle      = 3  " tree style
                        " let g:netrw_special_syntax = 1 " show per-extension coloration
                        " " use - to toggle explorer in current pane
" " nnoremap - :Explore<cr>
" " au filetype netrw silent! nnoremap - :Rexplore<cr>
" " shortcut to explore
" nnoremap <leader>e :Lexplore<cr>

 " ⣏⡱ ⣏⡉ ⢹⠁ ⢹⠁ ⣏⡉ ⣏⡱   ⣏⡉ ⡇ ⡇  ⣏⡉   ⣏⡉ ⢇⡸ ⣏⡱ ⡇  ⡎⢱ ⣏⡱ ⣏⡉ ⣏⡱
 " ⠧⠜ ⠧⠤ ⠸  ⠸  ⠧⠤ ⠇⠱   ⠇  ⠇ ⠧⠤ ⠧⠤   ⠧⠤ ⠇⠸ ⠇  ⠧⠤ ⠣⠜ ⠇⠱ ⠧⠤ ⠇⠱
" better file explorer than netrw
Plug 'justinmk/vim-dirvish'
" a:create-file  A:create-directory dd:delete-under-cursor
" r:rename-under-cursor yy:yank-under-cursor pp:copy-file-to-current-directory
" PP:move-file-to-current-directory
" intuitive vim shortcuts for dirvish :
" Plug 'roginfarrer/vim-dirvish-dovish', {'branch': 'main'}
au filetype dirvish nmap <buffer> sq gq
au filetype dirvish set nonumber relativenumber numberwidth=1

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
nnoremap <silent> <leader>d  <cmd>Files .<cr>
nnoremap <silent> <leader>D  <cmd>Files<cr>
nnoremap <silent> <leader>l  <cmd>BLines<cr>
nnoremap <silent> <leader>L  <cmd>Lines<cr>
nnoremap <silent> <leader>b  <cmd>Buffers<cr>
nnoremap <silent> <leader>W  <cmd>Windows<cr>
nnoremap <silent> <leader>:  <cmd>Commands<cr>
nnoremap <silent> <leader>rg <cmd>Rg<cr>
nnoremap <silent> <leader>ag <cmd>Ag<cr>


" ⣏⡉ ⡇⢸ ⢉⠝ ⢉⠝ ⢇⢸   ⡇⢸ ⡇ ⡇  ⡏⢱ ⡷⢾ ⣏⡉ ⡷⣸ ⡇⢸
" ⠇  ⠣⠜ ⠮⠤ ⠮⠤  ⠇   ⠟⠻ ⠇ ⠧⠤ ⠧⠜ ⠇⠸ ⠧⠤ ⠇⠹ ⠣⠜
" wildmenu fuzzy auto completion
if has('nvim')
    function! UpdateRemotePlugins(...)
        " Needed to refresh runtime files
        let &rtp=&rtp
        UpdateRemotePlugins
    endfunction
    Plug 'gelguy/wilder.nvim', { 'do': function('UpdateRemotePlugins') }
else
    Plug 'gelguy/wilder.nvim'
    " To use Python remote plugin features in Vim, can be skipped
    Plug 'roxma/nvim-yarp'
    Plug 'roxma/vim-hug-neovim-rpc'
endif


 " ⣏⡉ ⣎⣱ ⢎⡑ ⢇⢸ ⡷⢾ ⡎⢱ ⢹⠁ ⡇ ⡎⢱ ⡷⣸
 " ⠧⠤ ⠇⠸ ⠢⠜  ⠇ ⠇⠸ ⠣⠜ ⠸  ⠇ ⠣⠜ ⠇⠹
" easymotion : go anywhere quiclky
" still, i don't use it a lot...
Plug 'easymotion/vim-easymotion'
let g:EasyMotion_keys='jklqsdfghnmwcxvbazertyuiop,:'
" let g:EasyMotion_do_mapping = 0 " don't load default mappings
map <tab> <Plug>(easymotion-prefix)
" <Leader>f{char} to move to {char}
" map  =f <Plug>(easymotion-bd-f)
" nmap =f <Plug>(easymotion-overwin-f)
" " s{char}{char} to move to {char}{char}
" nmap =s <Plug>(easymotion-overwin-f2)
" " Move to line
" map <silent>=l <Plug>(easymotion-bd-jk)
nmap <tab>l <Plug>(easymotion-overwin-line)
" " repeat last easymotion
" map =. <Plug>(easymotion-repeat)
" nmap =. <Plug>(easymotion-repeat)
" " next and previous
" map =n <Plug>(easymotion-next)
" nmap =n <Plug>(easymotion-next)
" map =N <Plug>(easymotion-prev)
" nmap =N <Plug>(easymotion-prev)
" " searching
" nmap <leader>/ <Plug>(easymotion-bd-fn)


 " ⣇⣸ ⡇ ⡷⣸ ⢹⠁ ⢎⡑   ⡇⢸ ⣇⣸ ⣏⡉ ⡷⣸   ⡇⢸ ⢎⡑ ⡇ ⡷⣸ ⡎⠑   ⣏⡉   ⡎⢱ ⣏⡱   ⢹⠁
 " ⠇⠸ ⠇ ⠇⠹ ⠸  ⠢⠜   ⠟⠻ ⠇⠸ ⠧⠤ ⠇⠹   ⠣⠜ ⠢⠜ ⠇ ⠇⠹ ⠣⠝   ⠇    ⠣⠜ ⠇⠱   ⠸
" hint to see where f,F,t or T can bring you
Plug 'unblevable/quick-scope'
" let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']  " doesn't work with 
" let g:qs_buftype_blacklist = ['terminal', 'nofile']
let g:qs_delay = 50


" ⢉⠝ ⡎⢱ ⡎⢱ ⡷⢾   ⡎⢱ ⡷⣸   ⣎⣱   ⡇⢸ ⡇ ⡷⣸ ⡏⢱ ⡎⢱ ⡇⢸
" ⠮⠤ ⠣⠜ ⠣⠜ ⠇⠸   ⠣⠜ ⠇⠹   ⠇⠸   ⠟⠻ ⠇ ⠇⠹ ⠧⠜ ⠣⠜ ⠟⠻
" toggles a vim window to be maximized or not
" keeps the windows sizes in memory
Plug 'markstory/vim-zoomwin'
map <silent> <leader>z <cmd>ZoomToggle<cr>


 " ⢹⠁ ⡇ ⡇  ⡇ ⡷⣸ ⡎⠑   ⢎⡑ ⡇⢸ ⣏⡱ ⡷⢾ ⡎⢱ ⡏⢱ ⣏⡉
 " ⠸  ⠇ ⠧⠤ ⠇ ⠇⠹ ⠣⠝   ⠢⠜ ⠣⠜ ⠧⠜ ⠇⠸ ⠣⠜ ⠧⠜ ⠧⠤
" replaced by the plugin : tomtom/tinykeymap_vim
" tiling submode
" submode to deal with windows
" Plug 'OsKaR31415/vim-tiling-submode'
" nnoremap <leader>q :TilingSubmode<cr>


 " ⡎⠑ ⡇⢸ ⢎⡑ ⢹⠁ ⡎⢱ ⡷⢾   ⢹⠁ ⣏⡉ ⢇⡸ ⢹⠁   ⡎⢱ ⣏⡱ ⠈⢹ ⣏⡉ ⡎⠑ ⢹⠁ ⢎⡑
 " ⠣⠔ ⠣⠜ ⠢⠜ ⠸  ⠣⠜ ⠇⠸   ⠸  ⠧⠤ ⠇⠸ ⠸    ⠣⠜ ⠧⠜ ⠣⠜ ⠧⠤ ⠣⠔ ⠸  ⠢⠜
" user defined text objects
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
" ┏━ i\ a\ inline math surrounded by \( and \)
" ┣━ i$ a$ inline math surrounded by dollar signs
" ┣━ iq aq single-quoted text `like this'
" ┣━ iQ aQ double-quoted text ``like this''
" ┣━ ae ie Environment \begin{...} to \end{...}
Plug 'rbonvall/vim-textobj-latex'
" ┏━ function parameters
Plug 'sgur/vim-textobj-parameter'
" ┏━ a column delimited by words (ic ac) or WORDS (iC aC)
Plug 'idbrii/textobj-word-column.vim'



 " " ⢎⡑ ⣏⡉ ⡇  ⣏⡉ ⡎⠑ ⢹⠁   ⡎⠑ ⡇  ⡎⢱ ⢎⡑ ⣏⡉ ⢎⡑ ⢹⠁   ⢹⠁ ⣏⡉ ⢇⡸ ⢹⠁   ⡎⢱ ⣏⡱ ⠈⢹ ⣏⡉ ⡎⠑ ⢹⠁
 " " ⠢⠜ ⠧⠤ ⠧⠤ ⠧⠤ ⠣⠔ ⠸    ⠣⠔ ⠧⠤ ⠣⠜ ⠢⠜ ⠧⠤ ⠢⠜ ⠸    ⠸  ⠧⠤ ⠇⠸ ⠸    ⠣⠜ ⠧⠜ ⠣⠜ ⠧⠤ ⠣⠔ ⠸
" " select nearest (closest among candidates) text object
" Plug 'gcmt/wildfire.vim'
" " This selects the next closest text object.
" map <BACKSPACE> <Plug>(wildfire-fuel)
" " This selects the previous closest text object.
" vmap <C-BACKSPACE> <Plug>(wildfire-water)
" " which text objects are candidates
" let g:wildfire_objects = ["i'", 'i"', "i)", "i]", "i}", "ip", "it", "iw"]



 " " ⣏⡱ ⣏⡉ ⢹⠁ ⢹⠁ ⣏⡉ ⣏⡱   ⣏⡱ ⢇⢸ ⢹⠁ ⣇⣸ ⡎⢱ ⡷⣸    ⡜   ⡇ ⡷⣸ ⡏⢱ ⣏⡉ ⡷⣸ ⢹⠁ ⣎⣱ ⢹⠁ ⡇ ⡎⢱ ⡷⣸   ⢎⡑ ⡇⢸ ⣏⡱ ⣏⡱ ⡎⢱ ⣏⡱ ⢹⠁
 " " ⠧⠜ ⠧⠤ ⠸  ⠸  ⠧⠤ ⠇⠱   ⠇   ⠇ ⠸  ⠇⠸ ⠣⠜ ⠇⠹   ⠎    ⠇ ⠇⠹ ⠧⠜ ⠧⠤ ⠇⠹ ⠸  ⠇⠸ ⠸  ⠇ ⠣⠜ ⠇⠹   ⠢⠜ ⠣⠜ ⠇  ⠇  ⠣⠜ ⠇⠱ ⠸
" " intelligent support for languages with semantic indentation
" Plug 'tweekmonster/braceless.vim'
" autocmd FileType python BracelessEnable +indent +fold
" autocmd FileType haml,yaml,coffee BracelessEnable +indent +fold


 " ⣏⡉ ⢇⡸ ⡎⠑ ⣇⣸ ⣎⣱ ⡷⣸ ⡎⠑ ⣏⡉   ⠊⡱   ⣏⡱ ⣏⡉ ⡎⠑ ⡇ ⡎⢱ ⡷⣸ ⢎⡑
 " ⠧⠤ ⠇⠸ ⠣⠔ ⠇⠸ ⠇⠸ ⠇⠹ ⠣⠝ ⠧⠤   ⠮⠤   ⠇⠱ ⠧⠤ ⠣⠝ ⠇ ⠣⠜ ⠇⠹ ⠢⠜
" cx operator to exchange 2 regions
" cx{motion 1}, then cx{motion 2} swaps the texts
" in visual mode, X does the same thing
Plug 'tommcdo/vim-exchange'


 " " ⣏⡱ ⡎⢱ ⡷⣸   ⢎⡑ ⡇⢸ ⣏⡱ ⣏⡱ ⡎⢱ ⣏⡱ ⢹⠁
 " " ⠧⠜ ⠣⠪ ⠇⠹   ⠢⠜ ⠣⠜ ⠇  ⠇  ⠣⠜ ⠇⠱ ⠸
" " support for the BQN (big questions notation) language
" Plug 'mlochbaum/BQN', {'rtp': 'editors/vim', 'for': ['bqn']}
" let g:bqn_prefix_key = "="

" ⣎⣱ ⣏⡱ ⡇    ⢎⡑ ⡇⢸ ⣏⡱ ⣏⡱ ⡎⢱ ⣏⡱ ⢹⠁
" ⠇⠸ ⠇  ⠧⠤   ⠢⠜ ⠣⠜ ⠇  ⠇  ⠣⠜ ⠇⠱ ⠸
" support for the APL language
Plug 'bollu/vim-apl', {'for': ['apl']}
let g:apl_prefix_key = "="

 " ⣎⣱ ⡎⠑ ⡏⢱ ⣎⣱   ⢎⡑ ⡇⢸ ⣏⡱ ⣏⡱ ⡎⢱ ⣏⡱ ⢹⠁
 " ⠇⠸ ⠣⠝ ⠧⠜ ⠇⠸   ⠢⠜ ⠣⠜ ⠇  ⠇  ⠣⠜ ⠇⠱ ⠸
" support for the Agda language
" Plug 'derekelkins/agda-vim'

 " " ⢎⡑ ⢹⠁ ⣎⣱ ⣏⡱ ⢹⠁ ⡇ ⣏⡉ ⢇⢸
 " " ⠢⠜ ⠸  ⠇⠸ ⠇⠱ ⠸  ⠇ ⠇   ⠇
" Plug 'mhinz/vim-startify'
" let g:startify_fortune_use_unicode = 1

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
            \ "bc": "bc",
            \ "bqn": "bqn",
            \ "coconut" : "coconut",
            \ "haskell" : "ghci",
            \ "k": "k",
            \ "julia": "julia",
            \ "java": "jshell",
            \ "lisp": "clisp",
            \ "lua": "lua",
            \ "ocaml": "utop",
            \ "prolog": "gprolog",
            \ "r": "R",
            \ "ruby": "irb",
            \ "scheme": "guile",
            \ "sql": "psql postgres",
            \ "shell": "zsh"}
nmap gr yr
nmap <cr> yr
nmap <cr><cr> yrip
vnoremap <cr> <cmd>Ripple<cr>
nnoremap <leader><cr> <cmd>%Ripple<cr>


 " ⣏⡱ ⣏⡉ ⡷⢾ ⡎⢱ ⢹⠁ ⣏⡉   ⣏⡱ ⣎⣱ ⡇ ⣏⡱   ⣏⡱ ⣏⡱ ⡎⢱ ⡎⠑ ⣏⡱ ⣎⣱ ⡷⢾ ⡷⢾ ⡇ ⡷⣸ ⡎⠑
 " ⠇⠱ ⠧⠤ ⠇⠸ ⠣⠜ ⠸  ⠧⠤   ⠇  ⠇⠸ ⠇ ⠇⠱   ⠇  ⠇⠱ ⠣⠜ ⠣⠝ ⠇⠱ ⠇⠸ ⠇⠸ ⠇⠸ ⠇ ⠇⠹ ⠣⠝
" live remote pair programming with vim !
" Plug 'emgram769/vim-multiuser'



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
" let g:CheatSheetFt=&ft


 " ⡇⢸ ⡇ ⣇⠜ ⡇ ⣏⡱ ⣏⡉ ⡏⢱ ⡇ ⣎⣱
 " ⠟⠻ ⠇ ⠇⠱ ⠇ ⠇  ⠧⠤ ⠧⠜ ⠇ ⠇⠸
" search and navigate wikipedia from within vim
" The second plugin is just to enhance syntax highlighting (not required)
" only works on nix systems currently
" Plug 'el-iot/vim-wikipedia-browser'
" Plug 'chikamichi/mediawiki.vim'


 " ⡏⢱ ⣏⡉ ⡇⢸ ⡇ ⡎⠑ ⡎⢱ ⡷⣸ ⢎⡑
 " ⠧⠜ ⠧⠤ ⠸⠃ ⠇ ⠣⠔ ⠣⠜ ⠇⠹ ⠢⠜
" devicons (airline, nerdtree, startify...)
" requires to be at the end
" i don't use any plugin integrated with it but i keep the settings
" Plug 'ryanoasis/vim-devicons'
" let g:webdevicons_enable=1
" let g:webdevicons_enable_airline_statusline = 0
" let g:webdevicons_enable_airline_tabline = 1


 " ⡇  ⡇ ⡇⢸ ⣏⡉   ⡎⠑ ⡎⢱ ⡇  ⡇  ⣎⣱ ⣏⡱ ⡎⢱ ⣏⡱ ⣎⣱ ⢹⠁ ⡇ ⡎⢱ ⡷⣸
 " ⠧⠤ ⠇ ⠸⠃ ⠧⠤   ⠣⠔ ⠣⠜ ⠧⠤ ⠧⠤ ⠇⠸ ⠧⠜ ⠣⠜ ⠇⠱ ⠇⠸ ⠸  ⠇ ⠣⠜ ⠇⠹
" live remote collaboration
Plug 'jbyuki/instant.nvim'
let g:instant_username = "OSKAR"


 " ⣇⠜ ⡇ ⡇  ⡇    ⢎⡑ ⣏⡉ ⣏⡉ ⣏⡱ ⢎⡑   ⡇
 " ⠇⠱ ⠇ ⠧⠤ ⠧⠤   ⠢⠜ ⠧⠤ ⠧⠤ ⠇  ⠢⠜   ⠅
" little kill-the-sheep game (space invaders-like)
Plug 'vim/killersheep'

 " ⢎⡑ ⣇⣸ ⡎⢱ ⡇⢸   ⡇⢸ ⣇⣸ ⣎⣱ ⢹⠁   ⢎⡑ ⣇⣸ ⡎⢱ ⣏⡱ ⢹⠁ ⡇⢸ ⡎⠑ ⢹⠁ ⢎⡑   ⣎⣱ ⣏⡱ ⣏⡉   ⣎⣱ ⡇⢸ ⣎⣱ ⡇ ⡇  ⣎⣱ ⣏⡱ ⡇  ⣏⡉
 " ⠢⠜ ⠇⠸ ⠣⠜ ⠟⠻   ⠟⠻ ⠇⠸ ⠇⠸ ⠸    ⠢⠜ ⠇⠸ ⠣⠜ ⠇⠱ ⠸  ⠣⠜ ⠣⠔ ⠸  ⠢⠜   ⠇⠸ ⠇⠱ ⠧⠤   ⠇⠸ ⠸⠃ ⠇⠸ ⠇ ⠧⠤ ⠇⠸ ⠧⠜ ⠧⠤ ⠧⠤
" like emacs-which-key. Shows what keys you can press next
Plug 'liuchengxu/vim-which-key'
" show it for the mkdx prefix
nnoremap <silent> ù :WhichKey 'ù'<cr>
vnoremap <silent> ù :<c-u>WhichKey 'ù'<cr>
" show it for the vimux prefix
nnoremap <silent> <leader>v :WhichKey '<leader>v'<cr>
" show it for the leader
" nnoremap <silent> <leader> :WhichKey '<Space>'<cr>

 " ⡷⣸ ⣏⡉ ⡎⢱ ⡇⢸ ⡇ ⡷⢾   ⡇ ⡷⣸ ⢎⡑ ⡇ ⡏⢱ ⣏⡉   ⣏⡉ ⡇ ⣏⡱ ⣏⡉ ⣏⡉ ⡎⢱ ⢇⡸
 " ⠇⠹ ⠧⠤ ⠣⠜ ⠸⠃ ⠇ ⠇⠸   ⠇ ⠇⠹ ⠢⠜ ⠇ ⠧⠜ ⠧⠤   ⠇  ⠇ ⠇⠱ ⠧⠤ ⠇  ⠣⠜ ⠇⠸
" neovim integration inside firefox (edit any text field)
" Plug 'glacambre/firenvim', { 'do': { _ -> firenvim#install(0) } }

" All of your Plugs must be added before the following line
call plug#end()


" ▛▀▖▞▀▖▞▀▖▀▛▘ ▛▀▖▌  ▌ ▌▞▀▖▜▘▙ ▌ ▞▀▖▞▀▖▙ ▌▛▀▘▜▘▞▀▖
" ▙▄▘▌ ▌▚▄  ▌  ▙▄▘▌  ▌ ▌▌▄▖▐ ▌▌▌ ▌  ▌ ▌▌▌▌▙▄ ▐ ▌▄▖
" ▌  ▌ ▌▖ ▌ ▌  ▌  ▌  ▌ ▌▌ ▌▐ ▌▝▌ ▌ ▖▌ ▌▌▝▌▌  ▐ ▌ ▌
" ▘  ▝▀ ▝▀  ▘  ▘  ▀▀▘▝▀ ▝▀ ▀▘▘ ▘ ▝▀ ▝▀ ▘ ▘▘  ▀▘▝▀


" kana/textobject plugin
call textobj#user#plugin('braces', {
\   'equal': {
\     'pattern': ['=', '='],
\     'select-a': 'a=',
\     'select-i': 'i=',
\   },
\ })



" gelguy/wilder.nvim
call wilder#setup({'modes': [':', '/', '?']})
" set the pipleline (the way the fuzzy match is processed
call wilder#set_option('pipeline', [
            \   wilder#branch(
            \     wilder#cmdline_pipeline({
            \       'language': 'python',
            \       'fuzzy': 1,
            \     }),
            \     wilder#python_search_pipeline({
            \       'pattern': wilder#python_fuzzy_pattern(),
            \       'sorter': wilder#python_difflib_sorter(),
            \       'engine': 're',
            \     }),
            \   ),
            \ ])
" set the renderer (the way the wildmenu is printed)
" highlight for matching characters
let hl = wilder#make_hl('WilderAccent', 'Pmenu', [{}, {}, {'foreground': '#f4468f'}])

call wilder#set_option('renderer', wilder#popupmenu_renderer({
      \ 'highlighter': wilder#basic_highlighter(),
      \ 'highlights': {
      \   'accent': hl,
      \ },
      \ }))

" vim-scripts/vim-markdown-wiki
nunmap <cr>
nmap <c-cr> :WikilinkGotoLink<cr>
