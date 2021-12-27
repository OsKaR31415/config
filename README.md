# My configuration files

Here is the repo of all my configuration files for terminal applications, including vim, tmux, ranger and more.

If you want to reproduce this config, you may simply clone the repository in your home directory.
In you only want to use a part of it, you may clone it in a directory and use symlinks.

## Notes on what i use

I use vim as my text editor.
I run everything in tmux, for multiplexing and sessions restauration (even after rebooting).
My main shell is zsh, and i use oh-my-zsh (mostly as a plugin manager, to get dune-quotes and fzf-tab). My custom prompt is powerlevel10k.
I sometimes use mutt as a mail client, but graphical clients are less a pain to configure !

## My vim configuration

I have most of my vim configuration in my `.vimrc`, but :

 - i try to put language-specific configurations in `~/.vim/after/syntax/<syntax_name>.vim`
 - i used to store part of my config in `~/.vim/commands`, but now only `~/.vim/commands/alarms.vim` is used
 - i have some plugins that i made myself and that are not really documented. It is because i'm the only one to use them
 - these plugins that i made myself are in `~/.vim/my_plugins`, and i know that having a git subproject is ugly...
 - some files are in `~/.vim/python`, but the only one i use is `calc.py` (`len.py` may also be usefull)


