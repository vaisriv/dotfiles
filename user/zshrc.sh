neofetch

export DOTFILES="$HOME/files/dotfiles/"

export ZSH="$HOME/.oh-my-zsh"
export TERM=nsterm
export GPG_TTY=$(tty)
export EDITOR=nvim
export STARSHIP_CONFIG=$HOME/.config/starship/starship.toml

plugins=(
    git
    zsh-syntax-highlighting
    zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

alias cd="z"
alias zz="z -"
alias ls="eza"
alias tree="eza --tree"
alias cat="bat"
alias zela="zellij attach"
alias zels="zellij -s"
alias zells="zellij ls"
alias ql="qlmanage -p"
alias yrs="yabai --restart-service"
alias curl="curl -JLO"
alias e="nvim"
alias tt="taskwarrior-tui"
alias dots="$DOTFILES"
alias cfg="cd $HOME/.config"
alias zrc="e $HOME/.zshrc"
alias ttoday="task scheduled:today"
alias tmuxs="tmux-session"
alias todo="e ~/files/todo.md"

alias zeld="echo 'to detach from a zellij session, use the \"Ctrl+o\" command to open the session view, then press \"d\" to detach'"

export PATH=$PATH:$HOME/.scripts
export PATH=$PATH:$HOME/.spicetify
export PATH=$PATH:$HOME/.local/bin
export PATH=$PATH:/Applications/Julia-1.8.app/Contents/Resources/julia/bin
export PATH=$PATH:/Users/vsrivastava/Library/Python/3.9/bin

eval 
    fuck () {
        TF_PYTHONIOENCODING=$PYTHONIOENCODING;
        export TF_SHELL=zsh;
        export TF_ALIAS=fuck;
        TF_SHELL_ALIASES=$(alias);
        export TF_SHELL_ALIASES;
        TF_HISTORY="$(fc -ln -10)";
        export TF_HISTORY;
        export PYTHONIOENCODING=utf-8;
        TF_CMD=$(
            thefuck THEFUCK_ARGUMENT_PLACEHOLDER $@
        ) && eval $TF_CMD;
        unset TF_HISTORY;
        export PYTHONIOENCODING=$TF_PYTHONIOENCODING;
        test -n "$TF_CMD" && print -s $TF_CMD
    }
eval $(thefuck --alias)

eval "$(starship init zsh)"
eval "$(zoxide init zsh)"
