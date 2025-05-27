{
	config,
	pkgs,
	inputs,
	lib,
	...
}: {
	environment.systemPackages = with pkgs; [
		# nix formatter
		inputs.alejandra.defaultPackage.${system}

		# cli/term tools
		asciinema
		asciinema-scenario
		deno
		dust
		ffmpeg
		fx
		glow
		hexyl
		hyperfine
		lazysql
		p7zip
		pastel
		pngpaste
		poppler_utils
		presenterm
		testdisk
		tokei
		trash-cli
		viu
		wiki-tui
	];
}
