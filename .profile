for file in ~/muhdotfiles/system/.{exports,functions}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
