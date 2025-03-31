{
	config,
	pkgs,
	inputs,
	lib,
	...
}: {
	environment.systemPackages = with pkgs; [
		grim
		hypridle
		hyprpaper
		hyprpanel
		hyprshot
		libgtop
		slurp
	];
}
