{
	config,
	pkgs,
	inputs,
	lib,
	...
}: {
	home = {
		sessionPath = [
		];
		sessionVariables = {
			# TODO: create browser-picker script (prob using fuzzel)
			# BROWSER = "browser-picker";
			BROWSER = "firefox";
		};
	};
}
