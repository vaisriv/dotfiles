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
		glow
		gtrash
		ffmpeg
		jq
		lazysql
		p7zip
		ripgrep
		testdisk
	];
}
