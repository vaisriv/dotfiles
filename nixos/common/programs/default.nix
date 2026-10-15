{ ... }: {
    imports = [
        # Program list to install from nixpkgs
        ./pkgs.nix

        # TODO: refactor into home-manager or replace with modules
        ./work-in-progress.nix
    ];
}
