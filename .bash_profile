if [ -f ~/.profile ]; then . ~/.profile; fi
if [ -f ~/.bashrc ]; then . ~/.bashrc; fi

# source ~/.zshrc

setxkbmap -layout us -option ctrl:nocaps

#don't add anything after this
#if [[ $( which startx ) ]]; then exec startx; fi
