#
## Makefile for dotfiles
#
## You can use this Makefile to install individual dotfiles or install all of
# them at once. Each makefile rule first cleans the exisiting dotfile by
# # removing it and replacing it with a symlink to the specific file in
# # ~/muhdotfiles.
# #
# # !!! Make sure you backup your stuff first !!!
# #

help:
	@echo 'Makefile for dotfiles 								'
	@echo '														'
	@echo 'Usage: 												'
	@echo '	make world          install everything				'
	@echo '	make install_bash   install bash_profile			'
	@echo '	make install_vim    install vim configuration		'
	@echo '	make install_git    install git configuration		'
	@echo '	make install_tmux   install tmux configuration		'
	@echo '														'
	@echo 'All install commands are also available as clean		'
	@echo 'commands to remove installed files					'
	@echo '														'

world: install_bash install_vim install_git install_tmux install_i3
	@echo ""
	@echo "Installing dotfiles"
	@echo "======================="
	@echo ""
	@echo "done"

clean: clean_bash clean_vim clean_git clean_tmux clean_i3

install_bash: clean_bash
	ln -sf `pwd`/.bashrc ~/.bashrc
	ln -sf `pwd`/.bash_profile ~/.bash_profile
	ln -sf `pwd`/.profile ~/.profile

clean_bash:
	rm -Rf ~/.bashrc
	rm -Rf ~/.bash_profile
	rm -Rf ~/.profile

install_vim: clean_vim
	ln -sf `pwd`/.vimrc ~/.vimrc
	ln -sf `pwd`/.vim/ ~/.vim

clean_vim:
	rm -Rf ~/.vimrc
	rm -Rf ~/.vim

install_git: clean_git
	ln -sf `pwd`/.gitconfig ~/.gitconfig
	git submodule update --init -f --recursive

clean_git:
	rm -Rf ~/.gitconfig

install_tmux: clean_tmux
	ln -sf `pwd`/.tmux.conf ~/.tmux.conf
	ln -sf `pwd`/.tmux/ ~/.tmux

clean_tmux:
	rm -Rf ~/.tmux.conf
	rm -Rf ~/.tmux

.PHONY: help world clean \
	install_bash clean_bash \
	install_vim clean_vim \
	install_git clean_git \
	install_tmux clean_tmux
