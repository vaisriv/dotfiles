{pkgs, ...}:
pkgs.devshell.mkShell {
    name = "dotfiles";
    motd = ''
        {141}⚙️ dotfiles{reset} shell
        $(type -p menu &>/dev/null && menu)
    '';

    commands = [
        {
            name = "olorin";
            help = "rebuild and switch nix/hm configuration";
            command = builtins.readFile ./scripts/olorin.bash;
        }

        {
            package = pkgs.nh;
        }
    ];

    env = [
        {
            name = "machine";
            eval = "$(hostname)";
        }
        {
            name = "config_location";
            eval = "$(git rev-parse --show-toplevel)";
        }
    ];
}
