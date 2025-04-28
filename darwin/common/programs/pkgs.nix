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
		# alejandra

		# cli/term tools
		deno
		dust
		ffmpeg
		fx
		glow
		jq
		lazysql
		p7zip
		pngpaste
		ripgrep
		testdisk
		trash-cli
		viu
		uv
	];
}
