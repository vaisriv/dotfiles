{
    ...
}: {
    imports = [
        # Generic for all Hosts
        ../common

        # Darwin specific
        ./env.nix
        ./scripts.nix
        ./uni.nix
    ];
}
