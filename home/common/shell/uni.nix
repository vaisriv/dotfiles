{
	config,
	pkgs,
	inputs,
	lib,
	...
}: {
	home = {
		sessionPath = [
		];
		sessionVariables = {
			# uni dirs
			UNI_DIR = "$HOME/files/uni";
			UNI_NOTES_DIR = "$HOME/files/uni/notes";

			# needed for marp-cli
			CHROME_PATH = "$(which chrome)";
			# needed for uv-python
			UV_PYTHON_DOWNLOADS = "never";
		};
	};
	programs.fish = {
		shellAliases = {
			jl = "julia --project=. -i";
		};
		functions = {
			jls = {
				body = ''
					set jlfile (string join \'\' "./code/" $argv[1] ".jl")
					set outfile (string join \'\' "./code/" $argv[1] ".txt")
					echo "\$ julia --project=. $jlfile $argv[2..] | tee $outfile"
					julia --project=. $jlfile $argv[2..] | tee $outfile
				'';
			};
		};
	};
}
