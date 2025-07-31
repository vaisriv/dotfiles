{
    pkgs,
    inputs,
    ...
}:
inputs.treefmt-nix.lib.mkWrapper pkgs {
    projectRootFile = "flake.nix";

    # nix
    programs = {
        deadnix.enable = true;
        alejandra.enable = true;
    };
    settings.formatter = {
        alejandra = {
            options = [
                "--experimental-config"
                "./nix/fmt/alejandra.toml"
            ];
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
