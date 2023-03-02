" can't use quotes here
set makeprg=make


" fold python docstrings
setlocal foldmethod=manual
" " just add `fold` to the vim's definition of python docstrings
" syn region  pythonString matchgroup=pythonTripleQuotes 
"       \ start=+[uU]\=\z('''\|"""\)+ end="\z1" keepend fold
"       \ contains=pythonEscape,pythonSpaceError,pythonDoctest,@Spell


fun AutoPep8()
    w
    !autopep8 --in-place %
endfun

command! AutoPep8 call AutoPep8()
command! PythonRun :w|!python %
command! PythonPudbDebug :w|!python -m pudb %
command! PythonPudbDebugSplit :w|term python -m pudb %

iabbrev s. self.


command! SpaceTracer :vert term space_tracer_loop %


