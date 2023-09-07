
" ┏━┓┏┓ ┏┓ ┏━┓┏━╸╻ ╻╻┏━┓╺┳╸╻┏━┓┏┓╻┏━┓
" ┣━┫┣┻┓┣┻┓┣┳┛┣╸ ┃┏┛┃┣━┫ ┃ ┃┃ ┃┃┗┫┗━┓
" ╹ ╹┗━┛┗━┛╹┗╸┗━╸┗┛ ╹╹ ╹ ╹ ╹┗━┛╹ ╹┗━┛

call AddAbbreviation("^ *class$", " :\<cr>def __init__(self):\<esc>\<up>A\<left>")
call AddAbbreviation("^ *class .*$", ":\<cr>def __init__(self):\<left>\<left>")
call AddAbbreviation("^ *def __init__(self):", "\<esc>o")

call AddAbbreviation("^ifmain", "if __name__ == '__main__':\<cr>", 1)





" ┏━┓┏━┓┏━┓┏━╸┏━╸┏━╸╻┏━┓   ┏┳┓┏━┓┏━┓┏━┓╻┏┓╻┏━╸┏━┓
" ┣━┫┣┳┛┣━┛┣╸ ┃╺┓┃╺┓┃┃ ┃   ┃┃┃┣━┫┣━┛┣━┛┃┃┗┫┃╺┓┗━┓
" ╹ ╹╹┗╸╹  ┗━╸┗━┛┗━┛╹┗━┛   ╹ ╹╹ ╹╹  ╹  ╹╹ ╹┗━┛┗━┛
" mappings of multiple keys pressed at the same time


" Arpeggio inoremap sl  self.
" Arpeggio inoremap cl  class<space>
" Arpeggio inoremap ret return<space>

