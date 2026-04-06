{
    pkgs,
    ...
}:
{
    imports = [
        # Generic for all hosts
        ./common.nix
    ];

    home.packages = with pkgs; [
        mkalias
        pngpaste
    ];
}
