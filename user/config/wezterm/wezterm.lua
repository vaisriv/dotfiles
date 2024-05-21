local wezterm = require("wezterm")
local config = {}

-- color scheme settings
config.color_scheme = "Catppuccin Mocha"
-- config.window_background_opacity = 0.85

-- tab bar
config.use_fancy_tab_bar = false
config.tab_bar_at_bottom = true
config.hide_tab_bar_if_only_one_tab = true

-- close confirm
config.window_close_confirmation = "NeverPrompt"

return config
