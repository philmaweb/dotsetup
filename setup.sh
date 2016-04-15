#!/bin/sh                                                                       

echo "Starting Setup" && \
if [ ! -f ~/.vimrc ]; then
  touch ~/.vimrc
fi
if [ ! -f ~/.vimrc.old ]; then
  mv -f ~/.vimrc ~/.vimrc.old &&
fi
cp -f ./.vimrc ~ && \
cp -f ./.gitconfig ~ && \
cp -f ~/.gitconfig ~/.gitconfig.old && \
rm -rf ~/.vim/bundle && \
rm -rf ~/.vim/colors && \
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim && \
git clone git@github.com:altercation/vim-colors-solarized.git ./solarized && \
mkdir ~/.vim/colors && \
mv ./solarized/colors/solarized.vim ~/.vim/colors/ && \
rm -rf ./solarized
vim +PluginInstall +qall
