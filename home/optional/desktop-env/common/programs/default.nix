{
    config,
    pkgs,
    inputs,
    lib,
    ...
}: {
    imports = [
        ./librewolf.nix
        ./mpv
        ./neovide.nix
        # ./qutebrowser.nix
        ./streamlink.nix
        ./wezterm.nix
        ./zathura.nix
    ];
}
