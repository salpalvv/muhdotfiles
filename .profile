for file in ~/muhdotfiles/system/.{exports}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
