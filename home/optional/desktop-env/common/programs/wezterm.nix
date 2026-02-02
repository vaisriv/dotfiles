{...}: {
    programs.wezterm = {
        enable = true;
        extraConfig =
            # lua
            ''
                local act = wezterm.action
                local config = wezterm.config_builder()

                config = {
                    -- title + tab bar
                    use_fancy_tab_bar = false,
                    hide_tab_bar_if_only_one_tab = true,

                    -- font configs
                    font_size = 16,
                    adjust_window_size_when_changing_font_size = false,

                    -- keybinds
                    keys = {
                        {
                            key="Enter",
                            mods="SHIFT",
                            action=wezterm.action{SendString="\x1b\r"}
                        },
                    }
                }

                return config
            '';
    };
}
