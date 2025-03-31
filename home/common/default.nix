{
	config,
	pkgs,
	inputs,
	lib,
	...
}: {
	imports = [
		# Home Manager Setup
		./home.nix

		# App and Program Configs
		# ./programs

		# Stow Dotfiles
		./stow.nix
	];
}
