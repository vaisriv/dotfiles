#!/usr/bin/env fish

set -l root_dir $argv[1]
if test -z "$root_dir"
    set root_dir "."
end

set -l file (fzf --walker-root="$root_dir")
if test -n "$file"
    # nvim "$file"
    set -l escaped (string escape -- $file)
    commandline -r -- "nvim $escaped"
    commandline -f repaint
end
