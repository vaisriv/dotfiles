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
		./lazygit.nix
		# ./mpv
		./starship.nix
		./taskwarrior.nix
		./tealdeer.nix
		./tmux
		./yazi
		./zoxide.nix
	];
}
