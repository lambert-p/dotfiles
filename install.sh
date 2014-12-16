#!/bin/bash
#####################
# install.sh
# This script creates symlinks from the home directory to any desired dotfiles in ~/code/dotfiles
#
# Heavily inspired by GitHub users @michaeljsmalley and @holman
#####################

dir=~/code/dotfiles
olddir=~/dotfiles_old
files="bashrc bash_profile gitignore vimrc"


mkdir -p $olddir
cd $dir

for file in $files; do
    mv ~/.$file $olddir
    ln -s $dir/$file ~/.$file
done
