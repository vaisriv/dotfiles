{
	config,
	pkgs,
	inputs,
	lib,
	...
}: {
	homebrew = {
		brews = [
			"pandoc"
		];

		casks = [
			"julia"
			"zen-browser"
			"zotero"
			"libreoffice"
			"mathpix-snipping-tool"
			"citrix-workspace"
			# globalprotect-openconnect

			# NOTE: installed manually:
			# "wolfram-engine"
			# "matlab"
		];
	};
}
