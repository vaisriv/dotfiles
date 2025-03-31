{
	config,
	pkgs,
	inputs,
	lib,
	...
}: {
	nix = {
		settings = {
			# Enable nix-comamnd and flakes
			experimental-features = [
				"nix-command"
				"flakes"
			];
			extra-nix-path = "nixpkgs=flake:nixpkgs";

			# Allow user and root to modify system
			trusted-users = [
				"${inputs.username}"
				"root"
			];

			# Enable use of remote compilation caches
			extra-substituters = [
				"https://nixos-asahi.cachix.org"
				"https://cache.lix.systems"
			];
			extra-trusted-public-keys = [
				"nixos-asahi.cachix.org-1:CPH9jazpT/isOQvFhtAZ0Z18XNhAp29+LLVHr0b2qVk="
				"cache.lix.systems:aBnZUw8zA7H35Cz2RyKFVs3H4PlGTLawyY5KRbvJR8o="
			];
		};
	};
}
