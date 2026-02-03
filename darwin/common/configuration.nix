{username, ...}: {
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
                "${username}"
                "root"
            ];

            # Enable use of remote compilation caches
            extra-substituters = [
                "https://nixpkgs.cachix.org"
                "https://nixos-asahi.cachix.org"
                "https://nix-darwin.cachix.org"
            ];
            extra-trusted-public-keys = [
                "nixpkgs.cachix.org-1:q91R6hxbwFvDqTSDKwDAV4T5PxqXGxswD8vhONFMeOE="
                "nixos-asahi.cachix.org-1:CPH9jazpT/isOQvFhtAZ0Z18XNhAp29+LLVHr0b2qVk="
                "nix-darwin.cachix.org-1:LxMyKzQk7Uqkc1Pfq5uhm9GSn07xkERpy+7cpwc006A="
            ];
        };
    };
}
