# new version of old tools
alias cat="bat -f"
alias ls="eza --icons --git"

# useful abbreviations
abbr --add e $EDITOR
abbr --add o open
abbr --add lg lazygit

# edit important configs
abbr --add aero_conf "$EDITOR $HOME/.config/aerospace/aerospace.toml"
abbr --add fish_conf "$EDITOR $HOME/.config/fish/conf.d/."
abbr --add kitty_conf "$EDITOR $HOME/.config/kitty/kitty.conf"
abbr --add nvim_conf "$EDITOR $HOME/.config/nvim/."
abbr --add tmux_conf "$EDITOR $HOME/.config/tmux/tmux.conf"
abbr --add yazi_conf "$EDITOR $HOME/.config/yazi/."

# recreate !!
function last_history_item
    echo $history[1]
end
abbr --add !! --position anywhere --function last_history_item
