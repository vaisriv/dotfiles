{username, ...}: {
    nix = {
        settings = {
            # Auto reuse pre-existing binaries/paths in nix-store
            auto-optimise-store = true;

            # Always warn when changes are uncommitted to git
            warn-dirty = true;

            # Enable nix-comamnd and flakes
            experimental-features = [
                "nix-command"
                "flakes"
            ];
            extra-nix-path = "nixpkgs=flake:nixpkgs";

            # Allow user and root to modify system
            trusted-users = [
                "${username}"
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

    system = {
        # Enable weekly automatic updates
        autoUpgrade = {
            enable = true;
            dates = "weekly";
        };
    };
}
