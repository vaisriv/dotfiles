{
	config,
	pkgs,
	inputs,
	lib,
	...
}: let
	catppuccin-fish-src = pkgs.fetchFromGitHub {
		owner = "catppuccin";
		repo = "fish";
		rev = "6a85af2ff722ad0f9fbc8424ea0a5c454661dfed";
		sha256 = "sha256-Oc0emnIUI4LV7QJLs4B2/FQtCFewRFVp7EDv8GawFsA=";
	};
in {
	home = {
		file = {
			catppuccin-fish-theme = {
				enable = true;
				target = ".config/fish/themes";
				source = "${catppuccin-fish-src}/themes";
			};
		};
	};

	programs.fish = {
		interactiveShellInit = "fish_config theme choose \"Catppuccin Mocha\"";
	};

	stylix.targets.fish.enable = false;
}
