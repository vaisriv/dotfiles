# new version of old tools
alias tm="trash"
alias rm="echo -e 'If you really want to use rm, then use \"command rm\" instead.'; false"
alias rmdir="echo -e 'If you really want to use rmdir, then use \"command rmdir\" instead.'; false"

# fetch fun
alias mfetch="macchina -t Argon -c $HOME/.config/macchina/macchina.toml"
alias pfetch="macchina -t Boron -c $HOME/.config/macchina/macchina-lite.toml"

# history management
alias hr 'history --merge'  # read and merge history from disk
bind \e\[A 'history --merge ; up-or-search'

# useful abbreviations
abbr --add e $EDITOR
abbr --add lg lazygit

# edit important configs
abbr --add fishrc  "$EDITOR $CONF_DIR/fish/."
abbr --add nvimrc  "$EDITOR $CONF_DIR/nvim/."

# recreate `!!`
function last_history_item
    echo $history[1]
end
abbr --add !! --position anywhere --function last_history_item
