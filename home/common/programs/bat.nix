{
	config,
	pkgs,
	inputs,
	lib,
	...
}: {
	programs.bat = {
		enable = true;
		config = {
			force-colorization = true;
			style = "numbers,changes,header";
			italic-text = "always";
			map-syntax = [
				"*.ino:C++"
			];
		};
	};
}
