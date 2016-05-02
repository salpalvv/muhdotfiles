for file in ~/muhdotfiles/system/.{prompt,inputrc,aliases,functions}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;

# add bash specific exports here
