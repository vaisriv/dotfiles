{
	config,
	pkgs,
	inputs,
	lib,
	...
}: let
	flavor = "mocha";
	accent = "lavender";
	font = {
		name = "Iosevka";
		package = pkgs.iosevka;
		nerd-package = pkgs.nerd-fonts.iosevka;
	};
	wallpaper = ../../assets/wallpaper.png;
	profilepic = ../../assets/profilepic.png;
in {
	stylix = {
		enable = true;
		image = "${wallpaper}";

		polarity = "dark";

		base16Scheme = "${pkgs.base16-schemes}/share/themes/catppuccin-${flavor}.yaml";

		fonts = {
			monospace = {
				name = "${font.name} Nerd Font";
				package = "${font.nerd-package}";
			};
			sansSerif = {
				name = "${font.name}";
				package = "${font.package}";
			};
			serif = config.stylix.fonts.sansSerif;
			emoji = config.stylix.fonts.sansSerif;
			sizes = {
				applications = 14;
				desktop = 12;
				popups = 12;
				terminal = 14;
			};
		};

		# cursor = {
		# 	name = "catppuccin-${flavor}-${accent}-cursors";
		# 	package = pkgs.catppuccin-cursors.${flavor + lib.toUpper (lib.substring 0 1 accent) + (lib.substring 1 (lib.stringLength accent) accent)};
		# 	size = 24;
		# };
		#
		# iconTheme = {
		# 	enable = true;
		# 	dark = "Papirus-Dark";
		# 	light = "Papirus-Light";
		# 	package = pkgs.catppuccin-papirus-folders.override {inherit accent flavor;};
		# };
	};
}
