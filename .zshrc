#!/bin/zsh
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi


# ┏━╸┏┓╻╻ ╻╻┏━┓┏━┓┏┓╻┏┳┓┏━╸┏┓╻╺┳╸   ╻ ╻┏━┓┏━┓╻┏━┓┏┓ ╻  ┏━╸┏━┓
# ┣╸ ┃┗┫┃┏┛┃┣┳┛┃ ┃┃┗┫┃┃┃┣╸ ┃┗┫ ┃    ┃┏┛┣━┫┣┳┛┃┣━┫┣┻┓┃  ┣╸ ┗━┓
# ┗━╸╹ ╹┗┛ ╹╹┗╸┗━┛╹ ╹╹ ╹┗━╸╹ ╹ ╹    ┗┛ ╹ ╹╹┗╸╹╹ ╹┗━┛┗━╸┗━╸┗━┛

# add variables to the path
export PATH=$PATH":/Users/oscarplaisant/.zsh_scripts/"  # my own scripts
export PATH=$PATH":/Users/oscarplaisant/.cargo/bin"  # cargo installations
export PATH="/opt/homebrew/bin:"$PATH  # homebrew installations

# pkg-config path
# export PKG_CONFIG_PATH="/opt/homebrew/lib/pkgconfig:/opt/homebrew/Cellar/cairo/1.16.0_5/lib/pkgconfig/:/opt/homebrew/Cellar/pango/1.50.12/lib/pkgconfig/:/opt/homebrew/Cellar/py3cairo/1.23.0/lib/pkgconfig/"
export PKG_CONFIG_PATH="/opt/homebrew/lib/pkgconfig"


# terminal type (for tmux etc...)
export TERM="xterm-256color"

# path for cow files (ascii art for cowsay)
export COWPATH="$HOME/.cowsay/cowfiles"

# Set neovim as the man pager
export MANPAGER='nvim +Man!'
export MANWIDTH=999 # use nvim's wrapping instead of default hard wrapping
# export PAGER="/bin/sh -c \"unset PAGER;col -b -x | \
#     vim -R -c 'set ft=man nomod nolist' -c 'map q :q<CR>' \
#     -c 'map <SPACE> <C-D>' -c 'map b <C-U>' \
#     -c 'nmap K :Man <C-R>=expand(\\\"<cword>\\\")<CR><CR>' -\""

# path to obsidian vault
export OBSIDIAN="/Users/oscarplaisant/devoirs/cours"

# # mdp config
# export MDP_LIST_OPEN1=' ┃  '
# export MDP_LIST_OPEN2=' ┃  '
# export MDP_LIST_OPEN3=' ┃  '
# export MDP_LIST_OPEN4=' ┃  '
# export MDP_LIST_HEAD1=' ┗━> '
# export MDP_LIST_HEAD2=' ┖━> '
# export MDP_LIST_HEAD3=' ┖━> '

# ┏━┓╻ ╻   ┏┳┓╻ ╻   ╺━┓┏━┓╻ ╻
# ┃ ┃┣━┫╺━╸┃┃┃┗┳┛╺━╸┏━┛┗━┓┣━┫
# ┗━┛╹ ╹   ╹ ╹ ╹    ┗━╸┗━┛╹ ╹

# completion settings
autoload -Uz compinit
zstyle ':completion:*' menu select
fpath+=~/.zfunc

# Path to your oh-my-zsh installation.
export ZSH="/Users/oscarplaisant/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# ┏━┓╻  ╻ ╻┏━╸╻┏┓╻┏━┓
# ┣━┛┃  ┃ ┃┃╺┓┃┃┗┫┗━┓
# ╹  ┗━╸┗━┛┗━┛╹╹ ╹┗━┛

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(dune-quotes fzf-tab zsh-autosuggestions)
# zsh-autosuggestions : fish-like suggestions

# Plugins configuration

# fzf-tab
# disable sort when completing `git checkout`
zstyle ':completion:*:git-checkout:*' sort false
# set descriptions format to enable group support
zstyle ':completion:*:descriptions' format '[%d]'
# set list-colors to enable filename colorizing
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
# preview directory's content with exa when completing cd
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'exa -1 --color=always $realpath'
zstyle ':fzf-tab:complete:ls:*' fzf-preview 'exa -1 --color=always $realpath'
zstyle ':fzf-tab:complete:*' popup-pad 30 0 # set a bigger width to the popup win
# switch group using `,` and `.`
zstyle ':fzf-tab:*' switch-group ',' '.'
# use tmux popup windows for completion
zstyle ':fzf-tab:*' fzf-command ftb-tmux-popup
# continuous completion (usefull for long filenames)
zstyle ':fzf-tab:*' continuous-trigger '/'

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Compilation flags
# export ARCHFLAGS="-arch x86_64"



# change locale (especially, makes sort and sed accept non-ascii)
# export LC_CTYPE=C
# export LANG=C

# Preferred editor and pager for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='nvim'
else
  # default editor
  export EDITOR='nvim'
  # man pager
  export PAGER='bat --style=plain'
fi


# ┏━┓╻ ╻┏━┓┏━┓╺┳╸┏━╸╻ ╻╺┳╸┏━┓
# ┗━┓┣━┫┃ ┃┣┳┛ ┃ ┃  ┃ ┃ ┃ ┗━┓
# ┗━┛╹ ╹┗━┛╹┗╸ ╹ ┗━╸┗━┛ ╹ ┗━┛

# get default zsh keybindings
source /opt/homebrew/Cellar/fzf/0.42.0/shell/key-bindings.zsh

# enable vi-mode
bindkey -v
# edit current line in vim
bindkey '^q' edit-command-line
# short for escape
bindkey -s "kl" "\e"
# ^e brings to end of line
bindkey -s "^e" "\eA"
# ^a brings to beginning of line
bindkey -s "^a" "\eI"
# ^u deletes up to the beginning
bindkey -s "^u" "\ed0xi"

# ⣏⡉ ⢉⠝ ⣏⡉
# ⠇  ⠮⠤ ⠇
# FZF configuration

# --preview option of fzf to preview file OR directory.
# {} is the placeholder
# if {} is a file --> use bat
# if {} is a dir ---> use exa
# else -------------> echo ''
fzf_preview_contents="if test -f {}; then bat --color=always --number {}; elif test -d; then exa -1 --icons --color=always {}; else echo ''; fi"

export FZF_DEFAULT_OPTS="--color=hl:28,hl+:34 --bind ctrl-a:select-all,ctrl-d:deselect-all,ctrl-t:toggle-all"

bindkey -s "^z" ". fzf_cd\n" # the . is to change the env variables with the script, so it actually changes the cwd
# bindkey -s "^p" "cd ..\n"
# bindkey -s "^n" "cd \"\$(ls -ap | grep $ | fzf --preview='$fzf_preview_contents')\";clear;la\n"
# bindkey -s "^o" "ls -a | fzf --preview='$fzf_preview_contents' | xargs vim\n"
# bindkey -s "^s" "\"\$(ls -a | fzf --preview='$fzf_preview_contents')\"\n"


# shortcut that starts ranger
bindkey -s '^f' ". ranger\n"

# ┏━┓╻  ╻┏━┓┏━┓┏━╸┏━┓
# ┣━┫┃  ┃┣━┫┗━┓┣╸ ┗━┓
# ╹ ╹┗━╸╹╹ ╹┗━┛┗━╸┗━┛
# my aliases
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
source $HOME/.config/zsh/aliases.zsh


# 38;5;nnn is for 256 colors (replacing the nnn)
export EXA_COLORS=$(echo -n "di=38;5;40
fi=38;5;253
ex=4;
*.md=38;5;117:*.html=38;5;37:*.css=38;5;37:*.js=38;5;37:*.ts=38;5;37:*.php=38;5;37
*.java=38;5;172:*.class=38;5;172
*.pdf=38;5;184
" | tr '\n' ':')



# THINGS TO LOAD AT THE END ######################
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
# zsh syntax highlighting
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# iterm shell integration
# test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
# opam configuration
[[ ! -r /Users/oscarplaisant/.opam/opam-init/init.zsh ]] || source /Users/oscarplaisant/.opam/opam-init/init.zsh  > /dev/null 2> /dev/null
##################################################

# show todo-list at each session startup
todo

