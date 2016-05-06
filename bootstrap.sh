#!/bin/bash

# install ansible {{{

# rhel-based {{{
if [ -f /usr/bin/yum ]; then
	# epel repo
	sudo yum -y install epel-release

	# ansible
	sudo yum -y install ansible

# }}}

# debian-based {{{
elif [ -f /usr/bin/apt-get ]; then
	# ansible
	sudo apt-get -y install software-properties-common
	sudo apt-add-repository ppa:ansible/ansible
	sudo apt-get update
	sudo apt-get install ansible

# }}}

# osx {{{
elif [ $(uname) == 'Darwin' ]; then
	# install brew
	ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
	brew tap caskroom/cask
	brew install brew-cask
	brew tap caskroom/versions
	
	# ansible
	brew install ansible

# }}}

# arch-based {{{

# lel

# }}}

else
	echo "OS not supported"
fi

# }}}
