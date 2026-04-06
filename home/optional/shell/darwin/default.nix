{ ... }:
{
    imports = [
        # Generic for all hosts
        ../common

        # Darwin specific
        ./env.nix
        ./scripts.nix
        ./uni.nix
    ];
}
