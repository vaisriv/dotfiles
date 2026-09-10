{ pkgs, inputs, ... }: {
    programs.zathura = {
        enable = true;

        # WARN: overriding to unstable version as release-26.05 zathura refuses to build due to upstream issue with libfyaml
        # https://github.com/NixOS/nixpkgs/issues/514738
        package = inputs.nixpkgs-unstable.legacyPackages.${pkgs.stdenv.hostPlatform.system}.zathura;

        options = {
            show-recent = 0;
            selection-notification = false;
            selection-clipboard = "clipboard";
        };
        mappings = {
            "<C-o>" = "exec zathura $FILE<Return>";
        };
    };
}
