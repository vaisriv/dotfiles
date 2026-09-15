{ config, pkgs, ... }: {
    programs.ghostty = {
        enable = true;

        # WARN: ghostty cannot build on darwin due to lack of Swift 6 and codesigning issues
        # https://github.com/NixOS/nixpkgs/issues/388984
        package = if pkgs.stdenv.isDarwin then pkgs.ghostty-bin else pkgs.ghostty;

        installVimSyntax = true;
        installBatSyntax = true;

        settings = {
            macos-titlebar-style = "tabs";
            macos-option-as-alt = "left";
            quit-after-last-window-closed = true;
        };
    };

    stylix.targets.ghostty.fonts.override =
        if pkgs.stdenv.isDarwin then
            { sizes.terminal = config.stylix.fonts.sizes.terminal * 3.0 / 4.0; }
        else
            null;
}
