{ pkgs, inputs, ... }:
inputs.treefmt-nix.lib.mkWrapper pkgs {
    projectRootFile = "flake.nix";

    # nix
    programs = {
        deadnix.enable = true;
        nixfmt = {
            enable = true;
            indent = 4;
            strict = true;
        };
    };

    # toml
    programs.prettier = {
        enable = true;
        settings = {
            tabWidth = 4;
        };
    };

    # bash
    programs.shfmt = {
        enable = true;
        indent_size = 4;
    };

    # fish
    programs.fish_indent.enable = true;
}
