# env vars
set EDITOR nvim
set GPG_TTY $(tty)
set STARSHIP_CONFIG $HOME/.config/starship/starship.toml
set fish_greeting

# path
fish_add_path $HOME/.scripts $HOME/.spicetify $HOME/.local/bin $HOME/.cargo/bin

# aliases
alias ls="eza"
alias tree="eza --tree"
alias cat="bat"
alias e="nvim"
alias tmuxs="tmux-session"

# dots and files
alias dots="cd $HOME/files/dotfiles"
alias cfg="cd $HOME/.config"
alias todo="e $HOME/files/todo.md"

# macos
fish_add_path /opt/homebrew/bin /opt/homebrew/sbin
fish_add_path /Applications/Julia-1.8.app/Contents/Resources/julia/bin
alias keka="/Applications/Keka.app/Contents/MacOS/Keka --cli"
alias ql="qlmanage -p"

# function setup
zoxide init fish --cmd cd | source
starship init fish | source
thefuck --alias | source

# init
if not set -q DOTBOTLIVE; or test "$DOTBOTLIVE" != 1
    macchina --config $HOME/.config/macchina/macchina-lite.toml
end
