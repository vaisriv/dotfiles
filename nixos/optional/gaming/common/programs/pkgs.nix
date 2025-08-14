{pkgs, ...}: {
    environment.systemPackages = with pkgs; [
        nudoku
        nsnake
        ninvaders
        space-cadet-pinball
        prismlauncher
        vesktop
    ];
}
