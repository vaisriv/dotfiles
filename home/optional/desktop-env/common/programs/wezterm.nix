{...}: {
    programs.wezterm = {
        enable = true;
        extraConfig =
            # lua
            ''
                local act = wezterm.action
                local config = wezterm.config_builder()

                config = {
                    hide_tab_bar_if_only_one_tab = true,
                    font_size = 16,
                    keys = {
                        {key="Enter", mods="SHIFT", action=wezterm.action{SendString="\x1b\r"}},
                    }
                }

                return config
            '';
    };
}
