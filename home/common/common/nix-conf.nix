{ ... }:
{
    nix = {
        # Set up Nix garbage collector
        gc = {
            automatic = true;
            dates = "daily";
            options = "--delete-older-than 7d";
        };

        # Auto reuse pre-existing binaries/paths in nix-store
        settings.auto-optimise-store = true;
    };

    imports = [
        # Common for all hosts
        ../../../nix-conf.nix
    ];
}
