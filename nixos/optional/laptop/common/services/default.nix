{
    pkgs,
    inputs,
    ...
}: {
    imports = [
        ./autocpufreq.nix
        ./logind.nix
    ];
}
