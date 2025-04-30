{
	config,
	pkgs,
	inputs,
	lib,
	...
}: {
	imports = [
		./bat.nix
		./btop.nix
		./direnv.nix
		./eza.nix
		./fzf.nix
		./git.nix
		./latexmk.nix
		./lazygit.nix
		# ./mpv
		./nh.nix
		./starship.nix
		./taskwarrior.nix
		./tealdeer.nix
		./tmux
		./yazi
		./zoxide.nix
	];
}
