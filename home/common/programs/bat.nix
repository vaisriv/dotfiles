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
			force-colorization = false;
			style = "numbers,changes,header";
			italic-text = "always";
			map-syntax = [
				"*.ino:C++"
			];
		};
	};

	home.packages = with pkgs; [
		bat-extras.batdiff
		bat-extras.batgrep
		bat-extras.batman
		bat-extras.batpipe
		bat-extras.prettybat
	];
}
