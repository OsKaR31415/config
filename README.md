# My configuration files

Here is the repo of all my configuration files for terminal applications, including vim, tmux, ranger and more.

If you want to install every part of this config, you can simply run the installation script : `install_config.sh`

## Notes on what i use

 - editor : vim
 - running everything inside [tmux](https://github.com/tmux/tmux/wiki), to have sessions, tabs, splits and session restauration
I use vim as my text editor.
 - shell : [zsh](https://www.zsh.org)
     - with [oh my zsh](https://ohmyzsh.sh) as a plugin manager
         - [fzf-tab](https://github.com/Aloxaf/fzf-tab) for better autocompletion
         - [powerlevel10k](https://github.com/romkatv/powerlevel10k) (custom theme)


### Vim configuration

My `.vimrc` contains only the exportable config (that works in vanilla vim).


 - i try to put language-specific configurations in `~/.vim/after/syntax/<syntax_name>.vim`
 - i used to store part of my config in `~/.vim/commands`, but now only `~/.vim/commands/alarms.vim` is used
 - i have some plugins that i made myself and that are not really documented. It is because i'm the only one to use them
 - these plugins that i made myself are in `~/.vim/my_plugins`, and i know that having a git subproject is ugly...
 - some files are in `~/.vim/python`, but the only one i use is `calc.py` (`len.py` may also be usefull)


