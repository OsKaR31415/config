" can't use quotes here
set makeprg=python3\ %

command! AutoPep8 :w|!autopep8 --in-place %
command! PythonRun :w|!python %
command! PythonPudbDebug :w|!python -m pudb %
command! PythonPudbDebugSplit :w|term python -m pudb %

iabbrev s. self.

