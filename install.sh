#!/bin/bash
############################
# .make.sh
# This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles
############################

killall "Sublime Text"

echo "Setting key repeat rate"
defaults write NSGlobalDomain KeyRepeat -int 0

killall Finder

dir=~/dotfiles
zshconf=~/.zshrc
sublconf=User

echo "Moving zsh settings"
if [ -L $zshconf ]; then
    rm $zshconf
else
    mv ~/.zshrc ~/.zshrc_bak_`date +"%Y_%m_%d_%H_%M_%S"`
fi
echo "Creating symlink for zsh settings"
ln -sf $dir/zshrc $zshconf

echo "Moving Sublime user settings"
cd ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/
if [ -L $sublconf ]; then
    rm $sublconf
else
    mv $sublconf "$sublconf"_bak_`date +"%Y_%m_%d_%H_%M_%S"`
fi
echo "Creating symlink for Sublime user settings"
ln -sf $dir/sublime/$sublconf

cd $dir/oh-my-zsh/themes
ln -sf $dir/bullet-train-oh-my-zsh-theme/bullet-train.zsh-theme
