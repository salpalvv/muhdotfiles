#!/usr/bin/env bash

# do some symlinking of dotfiles 
ln -sf ~/muhdotfiles/.vimrc ~/.vimrc
ln -sf ~/muhdotfiles/.vim/ ~/.vim

ln -sf ~/muhdotfiles/.bashrc ~/.bashrc
ln -sf ~/muhdotfiles/.bash_profile ~/.bash_profile
ln -sf ~/muhdotfiles/.profile ~/.profile

ln -sf ~/muhdotfiles/.gitconfig ~/.gitconfig

#need to distinguish between mac and linux
# CentOS Specific {{{

# yum install -y git vim wget curl 

# tmux install {{{

# Install tmux on Centos release 6.5
# http://superuser.com/questions/738829/attempting-to-install-tmux-on-centos-6-4-or-centos-6-5-fails-with-error-evbuff
# 

# READ THIS FIRST!!!
# MAKE SURE YOU HAVE BUILD TOOLS/COMPILERS TO BUILD STUFF FROM SOURCES
# yum groupinstall "Development Tools"


# CD TO TEMPORARY DIRECTORY
#cd /tmp/sources

# INSTALL NCURSES DEVEL
#yum -y install ncurses-devel

# DOWNLOAD SOURCES FOR LIBEVENT AND MAKE AND INSTALL
#### wget https://github.com/downloads/libevent/libevent/libevent-2.0.21-stable.tar.gz
#curl -OL https://github.com/downloads/libevent/libevent/libevent-2.0.21-stable.tar.gz
#tar -xvzf libevent-2.0.21-stable.tar.gz
#cd libevent-2.0.21-stable
#./configure
#make
#make install

# DOWNLOAD SOURCES FOR TMUX AND MAKE AND INSTALL
#### wget http://downloads.sourceforge.net/tmux/tmux-1.9a.tar.gz
#curl -OL http://downloads.sourceforge.net/tmux/tmux-1.9a.tar.gz
#tar -xvzf tmux-1.9a.tar.gz
#cd tmux-1.9a
#./configure
#make
#make install

# SWITCH BACK TO REGULAR USER AND EDIT YOUR BASHRC (OR ZSH CONFIG)
#echo export LD_LIBRARY_PATH=/usr/local/lib >> ~/.bash_profile
#. ~/.bash_profile
#### source ~/.bash_profile

# }}}

# }}}

# Mac Specific {{{

# install installers
#ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
#brew tap caskroom/cask
#brew install brew-cask
#brew tap caskroom/versions

#brew update
#brew upgrade

# install all the things
#TODO: Make these an array and iterate over it
#brew install git
#brew install wget
#brew install curl
#brew install vim --override-system-vim

#brew cask install google-chrome
#brew cask install virtualbox
#brew cask install vlc

# }}}
source ~/.bash_profile
