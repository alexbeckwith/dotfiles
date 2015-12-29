#!/bin/bash
############################
# .make.sh
# This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles
############################

########## Variables

dir=~/dotfiles                    # dotfiles directory

echo "Moving zsh settings"
mv ~/.zshrc ~/.zshrc_OLD
echo "Creating symlink for zsh settings"
ln -s $dir/zshrc ~/.zshrc

echo "Moving Sublime user settings"
mv ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/ ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User_OLD/
echo "Creating symlink for Sublime user settings"
ln -s $dir/sublime/User/ ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/
