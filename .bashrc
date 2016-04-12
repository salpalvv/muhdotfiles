for file in ~/muhdotfiles/system/.{prompt,inputrc,exports,aliases,functions}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
