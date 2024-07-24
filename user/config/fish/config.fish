# env vars
set -x EDITOR nvim
set -x VISUAL nvim
set -x PAGER less
set -x GPG_TTY $(tty)
set STARSHIP_CONFIG $HOME/.config/starship/starship.toml
set fish_greeting

# path
fish_add_path $HOME/.scripts $HOME/.local/bin $HOME/.cargo/bin

# aliases
alias ls="eza --icons --git"
alias cat="bat"
alias e="nvim"
alias hmm="h-m-m"
alias tmuxs="tmux-session"
alias fetch="macchina -t Argon -c $HOME/.config/macchina/macchina.toml"
alias pfetch="macchina -t Boron -c $HOME/.config/macchina/macchina-lite.toml"
alias tree="eza --tree --icons --git"
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

# dots and files
alias dots="cd $HOME/files/dotfiles"
alias cfg="cd $HOME/.config"
alias todo="e $HOME/files/todo.md"
alias chtodo="hmm $HOME/files/notes/todo-chart"

# macos
fish_add_path /opt/homebrew/bin /opt/homebrew/sbin
fish_add_path /Applications/Julia-1.8.app/Contents/Resources/julia/bin
alias keka="/Applications/Keka.app/Contents/MacOS/Keka --cli"

# function setup
zoxide init fish --cmd cd | source
fzf --fish | source

# yazi helper
function yy
	set tmp (mktemp -t "yazi-cwd.XXXXXX")
	yazi $argv --cwd-file="$tmp"
	if set cwd (cat -- "$tmp"); and [ -n "$cwd" ]; and [ "$cwd" != "$PWD" ]
		builtin cd -- "$cwd"
	end
	rm -f -- "$tmp"
end

# local (aka unsynced) fish config file
source $HOME/.config/fish/local.fish
