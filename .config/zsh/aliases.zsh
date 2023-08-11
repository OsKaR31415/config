
alias lsa="ls -a"
alias lla="ll -a"

# exa is "the modern replacement for ls"
alias l="exa --icons"
alias ll="l -l"
alias la="l -a"
alias lla="l -la"
alias lt="l -T"

# alias v=vim
# alias nv=nvim
alias vi=nvim
alias v=nvim
alias g=neovide # edit with Graphical interface
alias c=clear # <c-l> goes to tmux pane right
alias cl="clear && l" # clear and list files
alias h="cd ~ && clear"
alias t=task # task warrior

alias google="w3m -sixel google.com"
alias imgls="~/iterm2/imgls"
alias imgcat="~/iterm2/imgcat"
alias img="img2sixel"

alias noel="python3 ~/devoirs/informatique/python/noel/arbre_de_noel.py"
alias troll="toilet -f smblock 'Just trolling anyone looking at my screen'"

# convert mov to gif
alias video_to_gif='function video_to_gif(){ ffmpeg -i $1 output.gif && gifsicle -O3 output.gif -o output.gif && say "Vidéo convertie en gif !"};video_to_gif'

alias events="icalBuddy -f -n eventsToday+1 | bat --style=plain"

# show the current ip from ifconfig
# alias myip="ifconfig  | grep '\([0-9]\{1,3\}\.\)\{3\}[0-9]\{1,3\}' | grep broadcast"
alias myip="echo \$(ipconfig getifaddr en0) \$(ipconfig getifaddr en1)"
# graphs of some stats
alias graphping="ping -i 0.3 google.com | sed -u 's/^.*time=//g; s/ ms//g' | ttyplot -t 'ping to google.com' -u ms -s 50"



# encode stdin to qrcode in stdout
alias to_qr="qrencode -t ascii -o - | tr '#' '█' "

alias daily="vim $OBSIDIAN/\$(daily '+%Y-%m-%d.md')"

# replaced by the script .zsh_scripts/urlencode
# alias urlencode='node --eval "console.log(encodeURIComponent(process.argv[1]))"'
# source ~/.zsh_scripts/urlencode

alias fzf="fzf --color=hl:28,hl+:34"

alias tmux="tmux -u"  # force unicode mode for tmux


