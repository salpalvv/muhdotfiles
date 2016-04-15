for file in ~/muhdotfiles/system/.{prompt,inputrc,aliases,functions}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;

# add zsh specific exports here
