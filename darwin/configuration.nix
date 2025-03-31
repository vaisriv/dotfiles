{pkgs, ...}: {
	nix.settings = {
		# enable flakes globally
		experimental-features = ["nix-command" "flakes"];

		# substituters that will be considered before the official one at https://cache.nixos.org
		substituters = [
			"https://cache.lix.systems"
		];
		trusted-public-keys = [
			"cache.lix.systems:aBnZUw8zA7H35Cz2RyKFVs3H4PlGTLawyY5KRbvJR8o="
		];
		builders-use-substitutes = true;
	};
}
