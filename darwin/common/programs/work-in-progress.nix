{
	config,
	pkgs,
	inputs,
	lib,
	...
}: {
	environment.systemPackages = with pkgs; [
		# apps to make home-manager configs for
		macchina

		# nvf (neovim config in nix module)
		neovim
		## lsp
		ccls
		gopls
		lua-language-server
		matlab-language-server
		nil
		rust-analyzer
		rustc
		texlab
		nodejs_23
		tree-sitter
		## formatters
		stylua
		## langs
		gcc
		nodejs
	];

	# idk how to move these to home-manager or if that can even be done
	programs.fish.enable = true;
	environment.shells = with pkgs; [
		fish
	];

	homebrew = {
		brews = [];

		casks = [
			"julia"
		];
	};
}
