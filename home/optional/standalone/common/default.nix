{ ... }:
{
    imports = [
        # Nix Config
        ./nix-conf.nix

        # Program list to install from nixpkgs
        ./pkgs.nix
    ];
}
