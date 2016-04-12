

# do some symlinking of dotfiles 
ln -fsv "~/muhdotfiles/.vimrc" ~
ln -fsv "~/muhdotfiles/.vim/" ~

ln -fsv "~/muhdotfiles/.bashrc" ~
ln -fsv "~/muhdotfiles/.bash_profile" ~

ln -fsv "~/muhdotfiles/.gitconfig" ~
#need to distinguish between mac and linux
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

#brew cask install dropbox
#brew cask install google-chrome
#brew cask install virtualbox
#brew cask install vlc

