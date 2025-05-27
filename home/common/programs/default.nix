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
		./helix.nix
		./latexmk.nix
		./lazygit.nix
		# ./mpv
		./nh.nix
		./nvf
		./starship.nix
		./taskwarrior
		./tealdeer.nix
		./tmux
		./yazi
		./zoxide.nix
	];
}
