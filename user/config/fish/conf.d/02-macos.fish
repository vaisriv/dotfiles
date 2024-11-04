# macos stuff
set -x BREWBIN /opt/homebrew/bin
set -x BREWSBIN /opt/homebrew/sbin
fish_add_path $BREWBIN $BREWSBIN

alias pdf="open -a ~/Applications/zathura-client.app/"
