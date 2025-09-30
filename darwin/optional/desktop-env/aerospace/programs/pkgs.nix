{pkgs, ...}: {
    environment.systemPackages = with pkgs; [
        alt-tab-macos # window switcher
    ];
}
