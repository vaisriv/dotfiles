{...}: {
    programs.tmux.enable = true;
    imports = [
        ./config.nix
        ./plugins.nix
        ./extraConfig.nix
    ];
}
