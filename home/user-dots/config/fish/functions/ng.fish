# nvim+git helper
function ng
	set file (git diff HEAD --name-only | fzf)
	if test -n "$file"
	    nvim "$file"
	end
end
