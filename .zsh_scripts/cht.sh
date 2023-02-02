#!/bin/zsh

selected=`cat ~/.zsh_scripts/.tmux-cht-commands ~/.zsh_scripts/.tmux-cht-languages | fzf`
if [[ -z $selected ]]; then
    exit 0
fi

echo "Enter Query: " 
read query

if grep -qs "$selected" ~/.tmux-cht-languages; then
    query=`echo $query | tr ' ' '+'`
    echo \"curl cht.sh/$selected/$query/\" & curl cht.sh/$selected/$query & while [ : ]; do sleep 1; done
else
    curl -s cht.sh/$selected~$query #  | bat --style=plain
fi


