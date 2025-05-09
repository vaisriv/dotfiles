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
			"adobe-creative-cloud"
			"citrix-workspace"
			"jupyterlab"
			"libreoffice"
			"mathpix-snipping-tool"
			"wljs-notebook"
			"wolfram-engine"
			"zen-browser"
			"zotero"

			# NOTE: installed manually:
			# umd vpn: palo alto globalprotect-openconnect
			# cisco packet tracer
			# matlab
		];
	};
}
