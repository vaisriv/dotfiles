local wezterm = require("wezterm")
local config = {}

-- default font size
config.font_size = 18.0

-- color scheme settings
config.color_scheme = "Catppuccin Mocha"
-- config.window_background_opacity = 0.85

-- tab bar
config.use_fancy_tab_bar = false
config.tab_bar_at_bottom = true
config.hide_tab_bar_if_only_one_tab = true

-- close confirm
config.window_close_confirmation = "NeverPrompt"

-- determine appropriate modifier based on the OS
local function get_modifiers()
	if wezterm.target_triple == "x86_64-apple-darwin" or wezterm.target_triple == "aarch64-apple-darwin" then
		return "SUPER"
	else
		return "CTRL"
	end
end

local modifier = get_modifiers()

-- keybindings
config.keys = {
	-- edit wezterm config
	{
		key = ",",
		mods = modifier,
		action = wezterm.action.SpawnCommandInNewTab({
			cwd = os.getenv("WEZTERM_CONFIG_DIR"),
			args = { os.getenv("SHELL"), "-c", "$EDITOR $WEZTERM_CONFIG_FILE" },
		}),
	},
}

return config
