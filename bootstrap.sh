#!/bin/bash

# bootstrap based on os {{{

# if redhat family {{{
if [ -f /etc/redhat_release ]; then
	echo "redhat"

#	yum install -y git vim wget curl rsync nc 
#	
#	# golang setup
#	wget https://storage.googleapis.com/golang/go1.6.2.linux-amd64.tar.gz
#	tar -C /usr/local -xzf go1.6.2.linux-amd64.tar.gz
#	export PATH=$PATH:/usr/local/go/bin
#
#	# libevent + tmux {{{
#	
#	pushd ~
#	if [ ! -f /usr/local/bin/tmux ]; then	
#		yum install -y ncurses-devel
#		yum install -y gclibc-static
#		
#		wget https://github.com/libevent/libevent/releases/download/release-2.0.22-stable/libevent-2.0.22-stable.tar.gz
#		tar xzvf libevent-2.0.22-stable.tar.gz
#		cd libevent-2.0.22-stable
#		./configure && make && make install
#		
#		wget https://github.com/tmux/tmux/releases/download/2.2/tmux-2.2.tar.gz
#		tar xzvf tmux-2.2.tar.gz
#		cd tmux-2.2
#		./configure && make && make install
#		popd 
#	fi	
#	# }}}

# }}}
# if debian family {{{
elif [ -f /etc/debian_version ]; then
	echo "debian"
# }}}
# if osx {{{
elif [ $(uname) == 'Darwin' ]; then
	echo "mac"
	# install brew
	ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
	brew tap caskroom/cask
	brew install brew-cask
	brew tap caskroom/versions
	
else 
	echo "OS not recognized"	
fi
# }}}

# }}}

# do some symlinking of dotfiles {{{ 

ln -sf ~/muhdotfiles/.vimrc ~/.vimrc
ln -sf ~/muhdotfiles/.vim/ ~/.vim

ln -sf ~/muhdotfiles/.bashrc ~/.bashrc
ln -sf ~/muhdotfiles/.bash_profile ~/.bash_profile
ln -sf ~/muhdotfiles/.profile ~/.profile

ln -sf ~/muhdotfiles/.gitconfig ~/.gitconfig

ln -sf ~/muhdotfiles/.tmux.conf ~/.tmux.conf

# }}}

# RHEL family specific {{{

# yum install -y git vim wget curl rsync nc 

# golang setup

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

# Remap CAPS to CTRL {{{

# tell application "System Preferences"
#   activate
#   set current pane to pane "com.apple.preference.keyboard"
# end tell
# 
# tell application "System Events"
#   tell application process "System Preferences"
#     get properties
#     
#     click button "Modifier Keys…" of tab group 1 of window "Keyboard"
#     tell sheet 1 of window "Keyboard"
#       click pop up button 4
#       click menu item 2 of menu 1 of pop up button 4
#       click button "OK"
#     end tell
#   end tell
#   
#   tell application "System Preferences" to quit
# end tell
# }}}

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

#Debian Family Specific {{{
#
#}}}
source ~/.bash_profile
