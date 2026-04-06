{ ... }:
{
    programs.fish.enable = true;

    imports = [
        ./abbrs.nix
        ./env.nix
        ./functions.nix
        ./plugins.nix
        ./scripts.nix
        ./theme.nix
        ./uni.nix
    ];
}
