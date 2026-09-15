{ config, pkgs, inputs, ... }: {
    programs.rio = {
        enable = true;

        # WARN: overriding to unstable version (rio v0.5.28 as of 2026/09/24) as release-26.05 version (rio v0.4.7) had a bug on macos where rio wraps all calls to launch a shell with `/usr/bin/login`, forcing a login-session every time, even if `shell.program` is manually set in the config (fixed in rio v0.5.7)
        package = inputs.nixpkgs-unstable.legacyPackages.${pkgs.stdenv.hostPlatform.system}.rio;

        settings = {
            shell = {
                # manually set shell so shell is not opened as a login-session (see #L5)
                program = "${pkgs.fish}/bin/fish";
                # args = [];
            };

            option-as-alt = "both";
            copy-on-select = true;
            bell.visual = true;
            # confirm-before-quit = false;

            theme = "catppuccin-mocha";
        };

        themes = {
            catppuccin-mocha.colors = {
                # Normal
                foreground       = "#cdd6f4";
                background       = "#1e1e2e";
                black            = "#45475a";
                blue             = "#89b4fa";
                cyan             = "#94e2d5";
                green            = "#a6e3a1";
                magenta          = "#f5c2e7";
                red              = "#f38ba8";
                white            = "#a6adc8";
                yellow           = "#f9e2af";

                # Cursor
                cursor           = "#f5e0dc";
                vi-cursor        = "#b4befe";

                # UI colors
                # `tabs` and `tabs-active` are tab *title* colors; Rio derives the tab
                # island backgrounds from the window background automatically.
                tabs             = "#a6adc8";
                tabs-active      = "#cdd6f4";
                split            = "#6c7086";
                split-active     = "#b4befe";

                # Selection
                selection-foreground   = "#1e1e2e";
                selection-background   = "#f5e0dc";

                # Search
                search-match-foreground         = "#1e1e2e";
                search-match-background         = "#a6adc8";
                search-focused-match-foreground = "#1e1e2e";
                search-focused-match-background = "#a6e3a1";

                # Hints
                hint-foreground  = "#1e1e2e";
                hint-background  = "#f9e2af";

                # Dim colors
                dim-black        = "#313244";
                dim-blue         = "#89b4fa";
                dim-cyan         = "#94e2d5";
                dim-foreground   = "#9399b2";
                dim-green        = "#a6e3a1";
                dim-magenta      = "#f5c2e7";
                dim-red          = "#f38ba8";
                dim-white        = "#7f849c";
                dim-yellow       = "#f9e2af";

                # Light colors
                light-black      = "#585b70";
                light-blue       = "#89b4fa";
                light-cyan       = "#94e2d5";
                light-foreground = "#cdd6f4";
                light-green      = "#a6e3a1";
                light-magenta    = "#f5c2e7";
                light-red        = "#f38ba8";
                light-white      = "#bac2de";
                light-yellow     = "#f9e2af";
            };
        };
    };

    stylix.targets.rio = {
        colors.enable = false;
        fonts.override = {
            sizes.terminal = config.stylix.fonts.sizes.terminal * 3.0 / 4.0;
        };
    };
}
