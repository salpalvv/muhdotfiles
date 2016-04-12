for DOTFILE in `find $HOME/muhdotfiles/system`
do
  [ -f “$DOTFILE” ] && source “$DOTFILE”
done
