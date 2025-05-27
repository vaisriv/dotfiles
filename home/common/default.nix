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
		./programs

		# User Shell Config
		./shell

		# Stow Dotfiles
		./stow.nix

		# Theming
		./theming.nix
	];
}
