#!/usr/bin/env fish

set file (git diff HEAD --name-only | fzf)
if test -n "$file"
    nvim "$file"
end
