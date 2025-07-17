{
    config,
    pkgs,
    inputs,
    lib,
    ...
}: {
    environment.systemPackages = with pkgs; [
        prismlauncher
        chatterino2
    ];
}
