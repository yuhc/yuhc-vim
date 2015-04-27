#!/usr/bin/env sh

YUPATH="$HOME/.yuhc-vim"

echo "# Backing up current vim config"
today=`date +%Y%m%d`
for file in $YUPATH $HOME/.vim $HOME/.vimrc $HOME/.gvimrc ; do
    [ -e $file ] && mv -v $file $file.$today
done

echo "# Installing yuhc-vim in $HOME directory"
mkdir -p $YUPATH
cp -vi vimrc $YUPATH
cp -vi gvimrc $YUPATH
cp -vi *.vim $YUPATH
cp -avi colors $YUPATH
cp -vi version.txt $YUPATH

ln -vs $YUPATH $HOME/.vim
ln -vs $YUPATH/vimrc $HOME/.vimrc
ln -vs $YUPATH/gvimrc $HOME/.gvimrc

echo "# Installing Vundle"
git clone https://github.com/gmarik/Vundle.vim.git $HOME/.vim/bundle/Vundle.vim

echo "# Installing Vim plugins using Vundle"
vim +PluginInstall +qall

echo "# Installing Vim plugins customizations"
echo "# - MatchTag custom filetypes"
cp -vi bundle/MatchTag/ftplugin/* $YUPATH/bundle/MatchTag/ftplugin/
