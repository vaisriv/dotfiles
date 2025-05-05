# cat+fzf helper
function cf
	set root_dir $argv[1]
	if test -z "$root_dir"
		set root_dir "."
	end
	set file (fzf --walker-root=$root_dir)
	if test -n "$file"
		cat "$file"
	end
end
