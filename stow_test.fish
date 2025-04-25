#!/usr/bin/env fish

set USERDOT_DIR $HOME/files/dotfiles/home/user-dots
echo "Linking directories from $USERDOT_DIR as dot-dirs in $HOME."

for dotdir in config scripts templates
	if not test -d $HOME/.$dotdir
		echo "$HOME/.$dotdir did not exist, creating it now"
		mkdir $HOME/.$dotdir
	end
	stow -v -R -d $USERDOT_DIR -t $HOME/.$dotdir $dotdir
end

if test $status -eq 0
	set_color --bold green
	echo "Dotfiles stowed!"
else
	set_color --bold red
	echo "Something went wrong with stowing the dotfiles, please read the output and try again..."
end
set_color normal
