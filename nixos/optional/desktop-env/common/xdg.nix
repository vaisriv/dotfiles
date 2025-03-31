{
	config,
	pkgs,
	inputs,
	lib,
	...
}: {
	xdg = {
		portal = {
			enable = true;
			extraPortals = with pkgs; [
				xdg-desktop-portal
				xdg-desktop-portal-gtk
			];
			config.common.default = "*";
		};
	};
}
