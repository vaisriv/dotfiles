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
		fd
		ffmpeg
		fx
		glow
		hyperfine
		jq
		lazysql
		ncspot
		p7zip
		pngpaste
		presenterm
		repgrep
		ripgrep
		testdisk
		tokei
		trash-cli
		uv
		viu
		wiki-tui
	];
}
