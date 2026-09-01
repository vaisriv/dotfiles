{ pkgs, ... }:
{
    nix = {
        # Use Lix!! :D
        package = pkgs.lixPackageSets.git.lix;
    };

    imports = [
        # Common for all hosts
        ../../../../nix-conf.nix
    ];
}
