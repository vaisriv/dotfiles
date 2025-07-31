{pkgs, ...}:
pkgs.devshell.mkShell {
    name = "dotfiles";
    motd = ''
        {141}⚙️ dotfiles{reset} shell
        $(type -p menu &>/dev/null && menu)
    '';
}
