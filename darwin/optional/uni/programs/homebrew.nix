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
			"zotero"
			"libreoffice"
			"mathpix-snipping-tool"
			"citrix-workspace"
			# globalprotect-openconnect
		];
	};
}
