-- %USERPROFILE%/.wezterm.lua
local wezterm = require("wezterm")

local config = {}

-- color scheme
config.color_scheme = "Catppuccin Mocha"

-- font settings
config.font = wezterm.font({
	family = "FiraMono Nerd Font",
	harfbuzz_features = { "cv02", "ss02", "ss03", "ss08", "cv24" },
})
config.font_size = 14.0

-- UI
config.hide_tab_bar_if_only_one_tab = true
config.window_padding = {
	left = 3,
	right = 3,
	top = 3,
	bottom = 3,
}
config.window_close_confirmation = "NeverPrompt"

-- start up
-- config.default_prog = { "wsl", "~" }

return config
