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
ln -sf $dir/zsh/zshrc $zshconf

echo "Moving Sublime user settings"
cd ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/
if [ -L $sublconf ]; then
    rm $sublconf
else
    mv $sublconf "$sublconf"_bak_`date +"%Y_%m_%d_%H_%M_%S"`
fi
echo "Creating symlink for Sublime user settings"
ln -sf $dir/sublime/$sublconf

mkdir  $dir/zsh/oh-my-zsh/custom/themes
ln -sf $dir/zsh/bullet-train-oh-my-zsh-theme/bullet-train.zsh-theme $dir/zsh/oh-my-zsh/custom/themes/bullet-train.zsh-theme
ln -sf $dir/zsh/zsh-syntax-highlighting $dir/zsh/oh-my-zsh/custom/plugins/zsh-syntax-highlighting
ln -sf $dir/zsh/zsh-autosuggestions $dir/zsh/oh-my-zsh/custom/plugins/zsh-autosuggestions


