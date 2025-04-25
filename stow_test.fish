#!/usr/bin/env fish

set LOG_DIR $HOME/.local/state/stow
set LOG_FILE "$LOG_DIR/stow-$(date +%Y%m%d-%H%M%S).log"

if not test -d $LOG_DIR
	mkdir -p $LOG_DIR
end

set_color -d white
echo "Writing log to $LOG_FILE"
set_color normal

set USERDOT_DIR $DOTFILES_DIR/home/user-dots
echo "Linking directories from $USERDOT_DIR as dot-dirs in $HOME." | tee -a $LOG_FILE

for dotdir in config scripts templates
	if not test -d $HOME/.$dotdir
		echo "$HOME/.$dotdir did not exist, creating it now" | tee -a $LOG_FILE
		mkdir $HOME/.$dotdir
	end
	stow -v -R -d $USERDOT_DIR -t $HOME/.$dotdir $dotdir | tee -a $LOG_FILE
end

if test $status -eq 0
	set_color --bold green
	echo "Dotfiles stowed!" | tee -a $LOG_FILE
else
	set_color --bold red
	echo "Something went wrong with stowing the dotfiles, please read the output and try again..."  | tee -a $LOG_FILE
end
set_color normal
