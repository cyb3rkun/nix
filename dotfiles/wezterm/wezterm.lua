-- -@type Wezterm
local wezterm = require("wezterm")

local config = wezterm.config_builder()

return {
	term = "wezterm",

	enable_wayland=true,

	initial_cols = 120,
	initial_rows = 28,
	default_cursor_style = "BlinkingBar",

	color_scheme = "tokyonight_night",

	font = wezterm.font_with_fallback({
		"Jetbrains Mono Nerd Font",
		"devicons",
		"icomoon Regular"
	}),
	font_size = 9,
	line_height = 0.86,
	cell_width = 1.0,
	colors = {
		indexed = { [16] = "rgba(0,0,0,0.1)" },
		background = "rgba(0,0,0,0.4)",
		-- cursorline =  "40404001"
	},
	enable_tab_bar = false,
	window_close_confirmation = "NeverPrompt",
	window_padding = {
		left = "2cell",
		-- right = "1cell",
		top = "0cell",
		bottom = "0cell",
	},
}

-- return config
