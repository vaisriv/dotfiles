{
    pkgs,
    inputs,
    ...
}: {
    imports = [
        # Program list to install from nixpkgs
        ./pkgs.nix

        # Programs that can be configured
        ./less.nix

        # TODO: refactor into home-manager or replace with modules
        ./work-in-progress.nix
    ];
}
