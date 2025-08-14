{...}: {
    programs.wezterm = {
        enable = true;
        extraConfig =
            # lua
            ''
                local wezterm = require 'wezterm'
                local act = wezterm.action
                local config = wezterm.config_builder()

                config = {
                    hide_tab_bar_if_only_one_tab = true,
                    font_size = 16,
                }

                return config
            '';
    };
}
