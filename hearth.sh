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

# create dotfiles_backup
echo "Creating $backup_dir to back up any existing dotfiles in ~"
mkdir -p $backup_dir
echo "... done"

echo "Changing to $dotfiles"
cd $dotfiles
echo "... done"

# move any existing dotfiles in ~ to backup, then create symlinks
for file in $files; do
    mv ~/.$file ~/dotfiles_backup/
    ln -s $dotfiles/$file ~/.$file
done

