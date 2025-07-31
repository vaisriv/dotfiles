#!/usr/bin/env fish

set -l tmp (mktemp -t "yazi-cwd.XXXXX")
command yazi $argv --cwd-file="$tmp"
if set cwd (command cat -- "$tmp"); and [ -n "$cwd" ]; and [ "$cwd" != "$PWD" ]
    builtin cd -- "$cwd"
end
command rm -f -- "$tmp"
