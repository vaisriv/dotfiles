{pkgs, ...}: {
	# work in progress packages
	environment.systemPackages = with pkgs; [
		neovim

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
	];
}
