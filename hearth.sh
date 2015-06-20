#!/bin/bash

###########
# hearth.sh
#
# this script creates symlinks from home directory to here (~/code/dotfiles)
# effectively acts as a hearthstone when using it on a new machine!
###########

dotfiles=~/code/dotfiles
backup_dir=~/dotfiles_backup
files="bash_profile bashrc emacs.d gitignore_global tmux.conf vim vimrc zshrc"


# move any existing dotfiles in ~ to backup, then create symlinks
mkdir -p $backup_dir
cd $dotfiles

echo "Backing up existing dotfiles to $backup_dir and creating links..."

for file in $files; do
    mv ~/.$file ~/dotfiles_backup/
    ln -s $dotfiles/$file ~/.$file
done

echo "... done"

