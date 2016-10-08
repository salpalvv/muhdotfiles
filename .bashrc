for file in ~/muhdotfiles/system/.{prompt,inputrc,aliases,functions,git-completion.bash,secrets}; do
[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;

# add bash specific exports here
unset SSH_ASKPASS

set -o vi


[ -f ~/.fzf.bash ] && source ~/.fzf.bash
