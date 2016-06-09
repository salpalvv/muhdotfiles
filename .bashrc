if [ -f ~/.bashrc.old ]; then
	source ~/.bashrc.old
else
	mv ~/.bashrc ~/.bashrc.old
	source ~/.bashrc.old
fi

for file in ~/muhdotfiles/system/.{prompt,inputrc,aliases,functions,git-completion.bash}; do
[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;

# add bash specific exports here
unset SSH_ASKPASS


[ -f ~/.fzf.bash ] && source ~/.fzf.bash
[ -f ~/.git-completion.bash ] && . ~/.git-completion.bash
