#Lambert's dotfiles

Updating for new workflow using lubuntu 15.04 rather than OS X. This is heavily a work in progress at this point, and should generally be ignored.

Download at your own caution!

The following is a note to myself

## development tools

apt-get install build-essential clang git vim tmux curl

*build emacs from source*
apt-get build-dep emacs24
tar -xzvf emacs-24.5.tar.gz
cd emacs-24.5
./configure
make
sudo make install

apt-get install zsh
git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
chsh -s /usr/bin/zsh
--> log in and log out for this to take effect!

get my dotfiles from github
--> set up github keys


*install ruby stuff*
curl -sSL https://get.rvm.io | bash
rvm install 2.2-head
rvm use 2.2.2 --default

--> for jekyll
apt-get install nodejs
gem install jekyll
bundle install


--> for rails
gem install rails
apt-get install libpq-dev
gem install pg
bundle install

*python 2.7.9 and 3.4.3 installed by default*
python should be good?

*heroku*
install heroku toolbet from website

*installing clojure*
download lein install script, move to /usr/local/bin and chmod +x it
apt-get install openjdk-8-jdk
run /usr/local/bin/lein

*opengl*
apt-get install freeglut3 freeglut3-dbg freeglu3-dev

*haskell*
apt-get install ghc

*LaTeX*

*sbcl*
apt-get install sbcl
git clone git://git.code.sf.net/p/sbcl/sbcl
cd sbcl
sh make.sh
sh install.sh

## entertainment
;; adds MP3/DVD/Flash playback
lubuntu-restricted-extras

vlc

skype from website
pulseaudio (apt-get install pulseaudio) for sound driver

