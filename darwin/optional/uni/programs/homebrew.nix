{
	config,
	pkgs,
	inputs,
	lib,
	...
}: {
	homebrew = {
		brews = [
		];
		
		casks = [
			"zen-browser"

			"libreoffice"
			# "wolfram-engine"
			"mathpix-snipping-tool"
			# globalprotect-openconnect
		];
	};
}
