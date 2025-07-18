{
    config,
    pkgs,
    inputs,
    lib,
    ...
}: {
    programs.fish = {
        functions = {
            cf = {
                body =
                    # fish
                    ''
                        set root_dir $argv[1]
                        if test -z "$root_dir"
                        	set root_dir "."
                        end
                        set file (fzf --walker-root=$root_dir)
                        if test -n "$file"
                        	cat "$file"
                        end
                    '';
                description = "cat+fzf helper";
            };
            nf = {
                body =
                    # fish
                    ''
                        set root_dir $argv[1]
                        if test -z "$root_dir"
                        	set root_dir "."
                        end
                        set file (fzf --walker-root=$root_dir)
                        if test -n "$file"
                        	nvim "$file"
                        end
                    '';
                description = "nvim+fzf helper";
            };
            ng = {
                body =
                    # fish
                    ''
                        set file (git diff HEAD --name-only | fzf)
                        if test -n "$file"
                        	nvim "$file"
                        end
                    '';
                description = "nvim+git helper";
            };
            save_history = {
                body = "history --save";
                description = "history across fishes";
                onEvent = "fish_preexec";
            };
            tree = {
                body =
                    # fish
                    ''
                        set dir_count (math (eza --tree -D $argv | wc -l))
                        set file_count (math (eza --tree -F $argv | wc -l) - $dir_count)
                        eza --tree --icons --git $argv
                        echo \n$dir_count "directories," $file_count "files"
                    '';
                description = "recreate tree command but with eza";
            };
            weather = {
                body =
                    # fish
                    ''
                        if test (count $argv) -eq 0
                        	curl "wttr.in/College+Park"
                        else
                        	set location (string join '+' $argv)
                        	curl "wttr.in/$location"
                        end
                    '';
                description = "weather in terminal!";
            };
            yy = {
                body =
                    # fish
                    ''
                        set -l tmp (mktemp -t "yazi-cwd.XXXXX")
                        command yazi $argv --cwd-file="$tmp"
                        if set cwd (command cat -- "$tmp"); and [ -n "$cwd" ]; and [ "$cwd" != "$PWD" ]
                        	builtin cd -- "$cwd"
                        end
                        command rm -f -- "$tmp"
                    '';
                description = "yazi shell wrapper (change cwd using yazi)";
            };
        };
    };
}
