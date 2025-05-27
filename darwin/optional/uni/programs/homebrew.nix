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
			"zen-browser"
			"zotero"

			# TODO: want to eventually be handled by nix need to figure out shell.nix/flake.nix fhs-env or similar to get packages/libraries to actually work and not have linking errors
			"julia"

			# NOTE: installed manually:
			# umd vpn: palo-alto globalprotect-openconnect # umd's custom build of palo-alt vpn
			# cisco packet tracer # closed-source
			# matlab # closed-source
			# wolfram # homebrew/nix installers do not handle licensing properly
		];
	};
}
