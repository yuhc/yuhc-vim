#!/usr/bin/env sh

echo "Script executed from: ${PWD}"
SCPATH=${PWD}
YUPATH="$HOME/.yuhc-vim"

echo "# Backing up current vim config"
today=`date +%Y%m%d`
for file in $YUPATH $HOME/.vim $HOME/.vimrc $HOME/.gvimrc ; do
    [ -e $file ] && mv -v $file $file.$today
done

echo "# Installing yuhc-vim in $HOME directory"
mkdir -p $YUPATH
cp -vi .vimrc $YUPATH
cp -vi .gvimrc $YUPATH
cp -vi *.vim $YUPATH
cp -avi colors $YUPATH

ln -vsf $YUPATH $HOME/.vim
ln -vsf $YUPATH/.vimrc $HOME/.vimrc
ln -vsf $YUPATH/.gvimrc $HOME/.gvimrc

echo "# Installing Vundle"
git clone https://github.com/gmarik/Vundle.vim.git $HOME/.vim/bundle/Vundle.vim

echo "# - customized mappings"
MAPATH="$YUPATH/bundle/mappings"
test -d "$MAPATH" || mkdir -p "$MAPATH" && cp -vir $SCPATH/bundle/mappings/* "$MAPATH"

echo "# Installing Vim plugins using Vundle"
vim +PluginInstall +qall

echo "# Installing Vim plugins customizations"
echo "# - MatchTag custom filetypes"
FTPATH="$YUPATH/bundle/MatchTag/ftplugin"
test -d "$FTPATH" || mkdir -p "$FTPATH" && cp -vi $SCPATH/bundle/MatchTag/ftplugin/* "$FTPATH"

echo "# - the_silver_searcher"
$YUPATH/bundle/the_silver_searcher/build.sh
cd $YUPATH/bundle/the_silver_searcher
sudo make install

echo "# - c-support (c.vim)"
CSPATH="$YUPATH/bundle/c-support"
test -d "$CSPATH" || mkdir -p "$CSPATH" && cp -vi $SCPATH/bundle/c-support/* "$CSPATH"

