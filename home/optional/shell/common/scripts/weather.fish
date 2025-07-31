#!/usr/bin/env fish

if test (count $argv) -eq 0
    curl "wttr.in/College+Park"
else
    set location (string join '+' $argv)
    curl "wttr.in/$location"
end
