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



 " " ⡎⠑ ⡇⢸ ⢹⠁ ⢹⠁ ⣏⡉ ⡷⣸    ⢹⠁ ⣎⣱ ⡎⠑ ⢎⡑
 " " ⠣⠝ ⠣⠜ ⠸  ⠸  ⠧⠤ ⠇⠹ ⠉⠉ ⠸  ⠇⠸ ⠣⠝ ⠢⠜
" " auto-update ctags
" Plug 'ludovicchabant/vim-gutentags'


 " ⢹⠁ ⣎⣱ ⡎⠑ ⢎⡑   ⡇⢸ ⡇ ⢎⡑ ⡇⢸ ⣎⣱ ⡇  ⡇ ⢎⡑ ⣎⣱ ⢹⠁ ⡇ ⡎⢱ ⡷⣸
 " ⠸  ⠇⠸ ⠣⠝ ⠢⠜   ⠸⠃ ⠇ ⠢⠜ ⠣⠜ ⠇⠸ ⠧⠤ ⠇ ⠢⠜ ⠇⠸ ⠸  ⠇ ⠣⠜ ⠇⠹
" TODO: fix the problem with ctags source not showing anything with python
" Plug 'liuchengxu/vista.vim'
" toggle vista
" nnoremap <leader>v :Vista!!<cr>
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
Plug 'mattn/emmet-vim', {'for': ['html', 'php']}
" default expand shortcut is <c-y>,
" i use <c-l>,
let g:user_emmet_leader_key='='



 " ⡇⢸ ⡇ ⡷⢾   ⣏⡱ ⣏⡉ ⡷⣸ ⡎⠑ ⡇ ⡇
 " ⠸⠃ ⠇ ⠇⠸   ⠇  ⠧⠤ ⠇⠹ ⠣⠔ ⠇ ⠧⠤
" vim for writing natural languages
" wrap by words (not splitting in the middle of a word)
Plug 'reedes/vim-pencil'

 " ⡷⢾ ⣎⣱ ⣏⡱ ⣇⠜ ⡏⢱ ⡎⢱ ⡇⢸ ⡷⣸  ⡜ ⡇  ⣎⣱ ⢹⠁ ⣏⡉ ⢇⡸   ⡇ ⡷⣸ ⡇  ⡇ ⡷⣸ ⣏⡉   ⣏⡱ ⣏⡱ ⣏⡉ ⡇⢸ ⡇ ⣏⡉ ⡇⢸
 " ⠇⠸ ⠇⠸ ⠇⠱ ⠇⠱ ⠧⠜ ⠣⠜ ⠟⠻ ⠇⠹ ⠎  ⠧⠤ ⠇⠸ ⠸  ⠧⠤ ⠇⠸   ⠇ ⠇⠹ ⠧⠤ ⠇ ⠇⠹ ⠧⠤   ⠇  ⠇⠱ ⠧⠤ ⠸⠃ ⠇ ⠧⠤ ⠟⠻
" markdown features (conceal, shortcuts...)
Plug 'plasticboy/vim-markdown', {'for': ['markdown', 'tex', 'latex', 'quarto']}
set conceallevel=2
set concealcursor=c  " don't conceal the cursor's line
au FileType markdown set concealcursor=ci  " also conceal in insert mode
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_frontmatter = 1
let g:vim_markdown_math = 1
let g:vim_markdown_yaml_frontmatter = 1
"
" better Latex conceal for live preview !!
Plug 'KeitaNakamura/tex-conceal.vim', {'for': ['markdown', 'tex', 'latex']}
let g:tex_conceal = "abdmgs" " enable vim builtin latex preview
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


" manipulate wikilinks
Plug 'vim-scripts/vim-markdown-wiki'

 " ⡎⢱ ⡇⢸ ⣎⣱ ⣏⡱ ⢹⠁ ⡎⢱
 " ⠣⠪ ⠣⠜ ⠇⠸ ⠇⠱ ⠸  ⠣⠜
" quarto markdown blog (live preview)
Plug 'vim-pandoc/vim-pandoc-syntax'
Plug 'quarto-dev/quarto-vim'


 " ⡷⣸ ⣏⡉ ⡇⢸ ⣏⡱ ⡎⢱ ⡷⣸   ⢉⠝ ⣏⡉ ⢹⠁ ⢹⠁ ⣏⡉ ⡇  ⣇⠜ ⣎⣱ ⢎⡑ ⢹⠁ ⣏⡉ ⡷⣸
 " ⠇⠹ ⠧⠤ ⠣⠜ ⠇⠱ ⠣⠜ ⠇⠹   ⠮⠤ ⠧⠤ ⠸  ⠸  ⠧⠤ ⠧⠤ ⠇⠱ ⠇⠸ ⠢⠜ ⠸  ⠧⠤ ⠇⠹
" markdown zettelkasten (obsidian vault) support (neuron)
" Plug 'chiefnoah/neuron-v2.vim'






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
Arpeggio nnoremap cop :Cope<cr>


 " ⡇⢸ ⡇ ⡷⢾   ⣏⡱ ⣏⡉ ⣏⡱ ⣏⡉ ⣎⣱ ⢹⠁
 " ⠸⠃ ⠇ ⠇⠸   ⠇⠱ ⠧⠤ ⠇  ⠧⠤ ⠇⠸ ⠸
" make plugin commads repeatable
Plug 'tpope/vim-repeat'


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
let g:airline_theme="solarized_flood"
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
" custom comment strings are in .vim/after/syntax/...
Plug 'tpope/vim-commentary'
map <leader>c gc
nmap <leader>c gc


 " ⡇⢸ ⡷⣸ ⡇ ⢇⡸   ⣇⣸ ⣏⡉ ⡇  ⣏⡱ ⣏⡉ ⣏⡱
 " ⠣⠜ ⠇⠹ ⠇ ⠇⠸   ⠇⠸ ⠧⠤ ⠧⠤ ⠇  ⠧⠤ ⠇⠱
" unix helper : add usefull unix commands (mkdir, delete, find, locate...)
Plug 'tpope/vim-eunuch'

 " ⡷⣸ ⣏⡉ ⢹⠁ ⣏⡱ ⡇⢸
 " ⠇⠹ ⠧⠤ ⠸  ⠇⠱ ⠟⠻
" my config to make netrw usable (hard, i admit) (vinegar)
" not a plugin but it could almost be one
Plug 'tpope/vim-vinegar'
let g:netrw_banner         = 0  " get rid of the annoying banner
let g:netrw_browse_split   = 4  " make netrw to open selected file in previous window
let g:netrw_keepdir        = 0  " make vim root follow netrw's one
let g:netrw_winsize        = 25 " defauld win size
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



 " ⣏⡱ ⣏⡉ ⢹⠁ ⢹⠁ ⣏⡉ ⣏⡱   ⣏⡱ ⢇⢸ ⢹⠁ ⣇⣸ ⡎⢱ ⡷⣸    ⡜   ⡇ ⡷⣸ ⡏⢱ ⣏⡉ ⡷⣸ ⢹⠁ ⣎⣱ ⢹⠁ ⡇ ⡎⢱ ⡷⣸   ⢎⡑ ⡇⢸ ⣏⡱ ⣏⡱ ⡎⢱ ⣏⡱ ⢹⠁
 " ⠧⠜ ⠧⠤ ⠸  ⠸  ⠧⠤ ⠇⠱   ⠇   ⠇ ⠸  ⠇⠸ ⠣⠜ ⠇⠹   ⠎    ⠇ ⠇⠹ ⠧⠜ ⠧⠤ ⠇⠹ ⠸  ⠇⠸ ⠸  ⠇ ⠣⠜ ⠇⠹   ⠢⠜ ⠣⠜ ⠇  ⠇  ⠣⠜ ⠇⠱ ⠸
" intelligent support for languages with semantic indentation
Plug 'tweekmonster/braceless.vim'
autocmd FileType python BracelessEnable +indent +fold
autocmd FileType haml,yaml,coffee BracelessEnable +indent +fold


 " ⣏⡉ ⢇⡸ ⡎⠑ ⣇⣸ ⣎⣱ ⡷⣸ ⡎⠑ ⣏⡉   ⠊⡱   ⣏⡱ ⣏⡉ ⡎⠑ ⡇ ⡎⢱ ⡷⣸ ⢎⡑
 " ⠧⠤ ⠇⠸ ⠣⠔ ⠇⠸ ⠇⠸ ⠇⠹ ⠣⠝ ⠧⠤   ⠮⠤   ⠇⠱ ⠧⠤ ⠣⠝ ⠇ ⠣⠜ ⠇⠹ ⠢⠜
" cx operator to exchange 2 regions
" cx{motion 1}, then cx{motion 2} swaps the texts
" in visual mode, X does the same thing
Plug 'tommcdo/vim-exchange'


 " ⣏⡱ ⡎⢱ ⡷⣸   ⢎⡑ ⡇⢸ ⣏⡱ ⣏⡱ ⡎⢱ ⣏⡱ ⢹⠁
 " ⠧⠜ ⠣⠪ ⠇⠹   ⠢⠜ ⠣⠜ ⠇  ⠇  ⠣⠜ ⠇⠱ ⠸
" support for the BQN (big questions notation) language
Plug 'mlochbaum/BQN', {'rtp': 'editors/vim', 'for': ['bqn']}
let g:bqn_prefix_key = "="

" ⣎⣱ ⣏⡱ ⡇    ⢎⡑ ⡇⢸ ⣏⡱ ⣏⡱ ⡎⢱ ⣏⡱ ⢹⠁
" ⠇⠸ ⠇  ⠧⠤   ⠢⠜ ⠣⠜ ⠇  ⠇  ⠣⠜ ⠇⠱ ⠸
" support for the APL language
Plug 'bollu/vim-apl', {'for': ['apl']}
let g:apl_prefix_key = "="

 " ⣎⣱ ⡎⠑ ⡏⢱ ⣎⣱   ⢎⡑ ⡇⢸ ⣏⡱ ⣏⡱ ⡎⢱ ⣏⡱ ⢹⠁
 " ⠇⠸ ⠣⠝ ⠧⠜ ⠇⠸   ⠢⠜ ⠣⠜ ⠇  ⠇  ⠣⠜ ⠇⠱ ⠸
" support for the Agda language
" Plug 'derekelkins/agda-vim'

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
nmap <cr> yr
nmap <cr><cr> yrip
vnoremap <cr> :Ripple<cr>
nnoremap <leader><cr> :%Ripple<cr>


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
let g:CheatSheetFt=&ft


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

