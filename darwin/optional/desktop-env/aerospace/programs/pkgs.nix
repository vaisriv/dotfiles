{
    config,
    pkgs,
    inputs,
    lib,
    ...
}: {
    environment.systemPackages = with pkgs; [
        alt-tab-macos # window switcher
        qview # image viewer
        raycast # launcher
    ];
}
