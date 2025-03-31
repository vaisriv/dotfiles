{
	config,
	pkgs,
	inputs,
	lib,
	...
}: {
	environment.systemPackages = with pkgs; [
		# apps to make home-manager configs for
		clipse
		# latexmk
		macchina

		# nvf (neovim config in nix module)
		## lsp
		ccls
		gopls
		lua-language-server
		nil
		rust-analyzer
		rustc
		texlab
		nodejs_23
		tree-sitter
		## formatters
		stylua

		# want to get rid of
		hyprpanel # get a different bar that can be configured with home-manager
	];

	# idk how to move these to home-manager or if that can even be done
	programs.neovim.enable = true;
	programs.fish.enable = true;
}
