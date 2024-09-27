# new version of old tools
alias cat="bat -f"
alias ls="eza --icons --git"

# fetch fun
alias fetch="macchina -t Argon -c $HOME/.config/macchina/macchina.toml"
alias pfetch="macchina -t Boron -c $HOME/.config/macchina/macchina-lite.toml"

# useful abbreviations
abbr -a e $EDITOR
abbr --add lg lazygit

# edit important configs
abbr --add wez_conf "$EDITOR $HOME/.config/wezterm/wezterm.lua"
abbr --add nvim_conf "$EDITOR $HOME/.config/nvim/."
abbr --add fish_conf "$EDITOR $HOME/.config/fish/conf.d/."
abbr --add aero_conf "$EDITOR $HOME/.config/aerospace/aerospace.toml"

# recreate !!
function last_history_item
    echo $history[1]
end
abbr --add !! --position anywhere --function last_history_item
