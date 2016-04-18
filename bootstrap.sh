#!/usr/bin/env bash

# do some symlinking of dotfiles {{{ 

ln -sf ~/muhdotfiles/.vimrc ~/.vimrc
ln -sf ~/muhdotfiles/.vim/ ~/.vim

ln -sf ~/muhdotfiles/.bashrc ~/.bashrc
ln -sf ~/muhdotfiles/.bash_profile ~/.bash_profile
ln -sf ~/muhdotfiles/.profile ~/.profile

ln -sf ~/muhdotfiles/.gitconfig ~/.gitconfig

ln -sf ~/muhdotfiles/.tmux.conf ~/.tmux.conf

# }}}

#need to distinguish between MAC and LINUX 
# CentOS specific {{{

# yum install -y git vim wget curl 

# libevent + tmux {{{

# pushd ~
# 
# yum install -y ncurses-devel
# yum install -y gclibc-static
# 
# wget https://github.com/libevent/libevent/releases/download/release-2.0.22-stable/libevent-2.0.22-stable.tar.gz
# tar xzvf libevent-2.0.22-stable.tar.gz
# cd libevent-2.0.22-stable
# ./configure && make && make install
# 
# wget https://github.com/tmux/tmux/releases/download/2.2/tmux-2.2.tar.gz
# tar xzvf tmux-2.2.tar.gz
# cd tmux-2.2
# ./configure && make && make install
# popd 
# 
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
#brew install tmux

#brew cask install google-chrome
#brew cask install virtualbox
#brew cask install vlc

# }}}

source ~/.bash_profile
