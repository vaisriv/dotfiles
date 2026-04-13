{ pkgs, username, ... }:
{
    nix = {
        package = pkgs.nix;

        gc = {
            # Automatically run the nix-store garbage collector
            automatic = true;

            # Run weekly (and force a run if it has been more than a week since the last run)
            dates = "daily";
            persistent = true; 

            options = "--delete-older-than 7d";
        };

        settings = {
            # Auto reuse pre-existing binaries/paths in nix-store
            auto-optimise-store = true;

            # Always warn when changes are uncommitted to git
            warn-dirty = true;

            # Don't save unused build derivations in nix store (to save space)
            keep-derivations = false;
            keep-outputs = false;

            # Automatically manage maximum concurrent nix jobs
            max-jobs = "auto";

            # Custom prompt for `nix-shell` and `nix develop`
            bash-prompt-prefix = "(nix:$name)\\040";

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
                # lix
                "https://cache.lix.systems"

                # nixos/nixpkgs
                "https://nixpkgs.cachix.org"
                "https://nix-community.cachix.org"
                "https://nixos-asahi.cachix.org"
                "https://nix-darwin.cachix.org"

                # individual packages
                "https://pyproject-nix.cachix.org"
            ];
            extra-trusted-public-keys = [
                # lix
                "cache.lix.systems:aBnZUw8zA7H35Cz2RyKFVs3H4PlGTLawyY5KRbvJR8o="

                # nixos/nixpkgs
                "nixpkgs.cachix.org-1:q91R6hxbwFvDqTSDKwDAV4T5PxqXGxswD8vhONFMeOE="
                "nix-community.cachix.org-1:mB9FSh9qf2dCimDSUo8Zy7bkq5CX+/rkCWyvRCYg3Fs="
                "nixos-asahi.cachix.org-1:CPH9jazpT/isOQvFhtAZ0Z18XNhAp29+LLVHr0b2qVk="
                "nix-darwin.cachix.org-1:LxMyKzQk7Uqkc1Pfq5uhm9GSn07xkERpy+7cpwc006A="

                # individual packages
                "pyproject-nix.cachix.org-1:UNzugsOlQIu2iOz0VyZNBQm2JSrL/kwxeCcFGw+jMe0="
            ];
        };
    };
}
