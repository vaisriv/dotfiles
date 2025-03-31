# recreate tree command but with eza
function tree
	set dir_count (math (eza --tree -D $argv | wc -l))
	set file_count (math (eza --tree -F $argv | wc -l) - $dir_count)
	eza --tree --icons --git $argv
	echo \n$dir_count "directories," $file_count "files"
end
