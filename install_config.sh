

# copy the config dir
rsync -a .config/ $HOME/.config/

# copy vim directory
cp .vimrc $HOME/.vimrc
rsync -a .vim/ $HOME/.vim/




