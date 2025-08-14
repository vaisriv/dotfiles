{pkgs, ...}: {
    environment.systemPackages = with pkgs; [
        prismlauncher
        chatterino2
    ];
}
