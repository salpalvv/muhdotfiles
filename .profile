if [ -f ~/.bash_profile ]; then . ~/.bash_profile; fi
if [ -f ~/.bashrc ]; then . ~/.bashrc; fi

setxkbmap -layout us -option ctrl:nocaps

#don't add anything after this
#if [[ $( which startx ) ]]; then exec startx; fi
