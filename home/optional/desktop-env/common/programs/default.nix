{
    config,
    pkgs,
    inputs,
    lib,
    ...
}: {
    imports = [
        ./librewolf.nix
        # ./mpv
        ./neovide.nix
        # ./qutebrowser.nix
        ./wezterm.nix
        ./zathura.nix
    ];
}
