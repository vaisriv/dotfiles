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
		fd
		fx
		glow
		jq
		lazysql
		p7zip
		pngpaste
		ripgrep
		repgrep
		testdisk
		trash-cli
		viu
		uv
	];
}
