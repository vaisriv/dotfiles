{ ... }:
{
    nix = {
        gc = {
            automatic = true;
            interval = {
                Weekday = 1;
            };
            options = "--delete-older-than 7d";
        };

        # Auto reuse pre-existing binaries/paths in nix-store
        optimise.automatic = true;
    };

    imports = [
        # Common for all hosts
        ../../nix-conf.nix
    ];
}
