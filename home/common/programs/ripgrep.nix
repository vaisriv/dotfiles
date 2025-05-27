{
	config,
	pkgs,
	inputs,
	lib,
	...
}: {
	programs.ripgrep-all = {
		enable = true;
		custom_adapters = {
			# custom ripgrep-all adapters (aka filetype2text converters) here
		};
	};

	home.packages = with pkgs; [
		repgrep
		ripgrep
	];
}
