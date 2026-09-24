{ inputs, ... }: {
    nix = {
        # Set up Nix garbage collector
        gc = {
            automatic = true;
            dates = "daily";
            options = "--delete-older-than 7d";
        };

        # Auto reuse pre-existing binaries/paths in nix-store
        settings.auto-optimise-store = true;

        # Set nix registries (for use with `nix run/shell/etc <flake>#<program>`)
        registry = {
            nixpkgs-unstable = {
                from = {
                    id = "nixpkgs-unstable";
                    type = "indirect";
                };
                to = {
                    path = inputs.nixpkgs-unstable.outPath;
                    type = "path";
                };
            };
        };

    };

    imports = [
        # Common for all hosts
        ../../../nix-conf.nix
    ];
}
