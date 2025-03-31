{
	config,
	pkgs,
	inputs,
	lib,
	...
}: {
	services.hyprpaper = {
		enable = true;
		settings = {
			splash = false;
		};
	};
}
