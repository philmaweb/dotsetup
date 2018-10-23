#!/bin/sh                                                                       

echo "Starting Setup" && \
if [ ! -f ~/.vimrc ]; then
  touch ~/.vimrc
fi
#if [ ! -f ~/.gitconfig ]; then
#  touch ~/.gitconfig
#fi
mv -f ~/.vimrc ~/.vimrc.old_beforedotsetup
#mv  ~/.bashrc ~/.bashrc.old_beforedotsetup
#cp -f ~/.gitconfig ~/.gitconfig.old_beforedotsetup && \
cp -f dotsetup/.vimrc ~ && \
#cp dotsetup/.bashrc ~ && \
#cp -f dotsetup/.gitconfig ~ && \
#rm -rf ~/.vim/bundle && \
#rm -rf ~/.vim/colors && \
git clone --recursive git://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim && \
git clone --recursive git://github.com/altercation/vim-colors-solarized.git ./solarized && \
mkdir -p ~/.vim/colors && \
mv ./solarized/colors/solarized.vim ~/.vim/colors/ && \
rm -rf ./solarized
vim +PluginInstall +qall
