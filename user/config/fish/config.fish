# env vars
set fish_greeting
set -x EDITOR nvim
set -x VISUAL nvim
set -x PAGER less
set -x GPG_TTY $(tty)

# user env vars
set -x ZK_NOTEBOOK_DIR $HOME/files/notes

# userpath
fish_add_path $HOME/.scripts $HOME/.local/bin $HOME/.cargo/bin

# aliases
alias e="$EDITOR"
alias cat="bat -f"
alias ls="eza --icons --git"
alias tree="eza --tree --icons --git"

# edit important configs
alias conf_wez="e $HOME/.config/wezterm/wezterm.lua"
alias conf_fish="e $HOME/.config/fish/config.fish"
alias conf_local="e $HOME/.config/fish/local.fish"

# fetch fun
alias fetch="macchina -t Argon -c $HOME/.config/macchina/macchina.toml"
alias pfetch="macchina -t Boron -c $HOME/.config/macchina/macchina-lite.toml"

# cat+fzf helper
function cf
	set root_dir $argv[1]
	if test -z "$root_dir"
	set root_dir "."
	end
	set file (fzf --walker-root=$root_dir)
	if test -n "$file"
	    cat "$file"
	end
end

# yazi helper
function yy
	set tmp (mktemp -t "yazi-cwd.XXXXXX")
	yazi $argv --cwd-file="$tmp"
	if set cwd (/bin/cat -- "$tmp"); and [ -n "$cwd" ]; and [ "$cwd" != "$PWD" ]
		builtin cd -- "$cwd"
	end
	rm -f -- "$tmp"
end

# function setup
zoxide init fish --cmd cd | source
fzf --fish | source

# macos stuff
fish_add_path /opt/homebrew/bin /opt/homebrew/sbin

# local (aka unsynced) fish config file
source $HOME/.config/fish/local.fish
