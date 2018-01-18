# Lambert's dotfiles

Updating for new workflow using OS X rather than lubuntu 15.04. This is heavily a work in progress at this point, and should generally be ignored.

Download at your own caution!

## dotfiles

This is how I personalize my system.

As my config files continue to grow, I intend to move towards a more compartmentalized system (a la [Holman's dotfiles](http://zachholman.com/2010/08/dotfiles-are-meant-to-be-forked/)). For the time being, this setup works just fine for me.

## Install

Run:

```sh
git clone https://github.com/lambotpm/dotfiles.git ~/code/dotfiles
cd ~/code/dotfiles
chmod +x hearth.sh
hearth.sh
```

This will symlink files and folders from ~/code/dotfiles to your home directory.

## Special thanks

Thanks to [Zach Holman](https://github.com/holman/dotfiles) for the inspiration.
