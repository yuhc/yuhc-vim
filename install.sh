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

echo "# Installing Vim plugins using Vundle"
vim +PluginInstall +qall

echo "# Installing Vim plugins customizations"
echo "# - YouCompleteMe"
$YUPATH/bundle/YouCompleteMe/install.sh --clang-completer --system-libclang
YCMPATH="$YUPATH/bundle/YouCompleteMe"
test -d "$YCMPATH" || mkdir -p "$YCMPATH" && cp -vi $SCPATH/bundle/YouCompleteMe/* "$YCMPATH"

echo "# - MatchTag custom filetypes"
FTPATH="$YUPATH/bundle/MatchTag/ftplugin"
test -d "$FTPATH" || mkdir -p "$FTPATH" && cp -vi $SCPATH/bundle/MatchTag/ftplugin/* "$FTPATH"

echo "# - the_silver_searcher"
$YUPATH/bundle/the_silver_searcher/build.sh
cd $YUPATH/bundle/the_silver_searcher
make install

echo "# - c-support (c.vim)"
CSPATH="$YUPATH/bundle/c-support"
test -d "$CSPATH" || mkdir -p "$CSPATH" && cp -vi $SCPATH/bundle/c-support/* "$CSPATH"
