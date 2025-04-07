{
	config,
	pkgs,
	inputs,
	lib,
	...
}: {
	homebrew = {
		brews = [
			"openjdk"
		];

		casks = [
			"zen-browser"
			"zotero"
			"libreoffice"
			"wolfram-engine"
			"mathpix-snipping-tool"
			# globalprotect-openconnect
		];
	};
}
