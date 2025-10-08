#!/usr/bin/env fish

set -l file (git diff HEAD --name-only | fzf)
if test -n "$file"
    # nvim "$file"
    set -l escaped (string escape -- $file)
    commandline -r -- "nvim $escaped"
    commandline -f repaint
end
