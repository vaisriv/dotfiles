#!/usr/bin/env fish

# set -l root_dir $argv[1]
# if test -z "$root_dir"
#     set root_dir "."
# end

set -l search_term $argv[1]
if test -z "$search_term"
    set search_term ""
end

# set -l file (fzf --walker-root="$root_dir")
set -l file (fzf -q "$search_term")
if test -n "$file"
    # nvim "$file"
    set -l escaped (string escape -- $file)
    commandline -r -- "nvim $escaped"
    commandline -f repaint
end
