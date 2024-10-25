# ~~~~~~ directories ~~~~~~
export CONFIG=$HOME/.config
export FILES=$HOME/files
export NOTES=$FILES/notes
export UNI=$FILES/uni
export UNI_NOTES=$UNI/notes

# for school
export HW_TEX=$UNI/msc/tex/HWTemplate.tex
export CHROME_PATH=/Applications/Chromium.app/Contents/MacOS/Chromium

# ~~~~~~ options ~~~~~~
# nicer globbing
setopt extended_glob null_glob

# correct editing mode
set -o vi

# annoying bell
unsetopt BEEP

# history
HISTFILE=$CONFIG/zsh/zsh_history
HISTSIZE=100000
SAVEHIST=100000

setopt HIST_IGNORE_SPACE
setopt HIST_IGNORE_DUPS
setopt SHARE_HISTORY

# ~~~~~~ path ~~~~~~
# homebrew on macos
export BREWBIN=/opt/homebrew/bin
export BREWSBIN=/opt/homebrew/bin/sbin

path=(
	$path
	$HOME/.local/bin
	$HOME/.cargo/bin
	$SCRIPTS
	$BREWBIN
	$BREWSBIN
)

# remove duplicates and non-existent dirs
typeset -U path
path=($^path(N-/))

export path

# ~~~~~~ vars ~~~~~~
# tools
export EDITOR=nvim
export VISUAL=nvim
export PAGER=less
export TERM="tmux-256color"
export GPG_TTY="$(tty)"

# ~~~~~~ abbreviations ~~~~~~
# new versions of old tools
alias cat="bat -f"
alias ls="eza --icons --git"

# fetch fun
alias fetch="macchina -t Argon -c $HOME/.config/macchina/macchina.toml"
alias pfetch="macchina -t Boron -c $HOME/.config/macchina/macchina-lite.toml"

# useful
alias e=nvim
alias lg=lazygit

# configs
alias wez_conf="$EDITOR $CONFIG/wezterm/wezterm.lua"
alias nvim_conf="$EDITOR $CONFIG/nvim/."
alias zsh_conf="$EDITOR $CONFIG/zsh/.zshrc"
alias fish_conf="$EDITOR $CONFIG/fish/conf.d/."
alias tmux_conf="$EDITOR $CONFIG/tmux/tmux.conf"
alias aero_conf="$EDITOR $CONFIG/aerospace/aerospace.toml"

# ~~~~~~ completion ~~~~~~
fpath+=~/.zfunc

if type brew &>/dev/null; then
    FPATH=$(brew --prefix)/share/zsh-completions:$FPATH
fi

autoload -Uz compinit
compinit -u

zstyle ':completion:*' menu select

# ~~~~~~ prompt ~~~~~~
export STARSHIP_CONFIG=$CONFIG/starship/starship.toml
eval "$(starship init zsh)"

# ~~~~~~ functions ~~~~~~
# yazi
function yy() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	yazi "$@" --cwd-file="$tmp"
	if cwd="$(command cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		builtin cd -- "$cwd"
	fi
	rm -f -- "$tmp"
}

# tree
function tree() {
    dir_count=$(eza --tree -D "$@" | wc -l | tr -d '[:space:]')
    total_count=$(eza --tree -F "$@" | wc -l | tr -d '[:space:]')
    file_count=$((total_count - dir_count))
    eza --tree --icons --git "$@"
    echo
    echo "$dir_count directories, $file_count files"
}

# ~~~~~~ less fixes ~~~~~~
export LESS="-R"
export LESSOPEN="|$BREWBIN/lesspipe.sh %s"
export LESS_ADVANCED_PREPROCESSOR=1
export LESSCOLORIZER=pygmentize

# ~~~~~~ personal ~~~~~~
source $CONFIG/zsh/.localrc

# ~~~~~~ plugins ~~~~~~
eval "$(zoxide init zsh --cmd cd)"
source <(fzf --zsh)

source $CONFIG/zsh/catppuccin_mocha-zsh-syntax-highlighting.zsh
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
