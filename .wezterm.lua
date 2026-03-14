local wezterm = require("wezterm")
local config = {}

-- enter copy mode which is vim like copy mode with keybinding ctrl + shift + t
config.keys = {
	{
		key = "t",
		mods = "CTRL|SHIFT",
		action = wezterm.action.ActivateCopyMode,
	},
}

-- Custom color scheme with OneDark background + iTerm2 ANSI colors
config.colors = {
	-- Basic colors
	foreground = "#abb2bf", -- OneDark foreground (slightly lighter than iTerm2)
	background = "#282c34", -- OneDark blue-gray background (matches Neovim in iTerm2)
	cursor_bg = "#528bff", -- OneDark cursor blue
	cursor_fg = "#282c34", -- Cursor text color
	cursor_border = "#528bff",
	selection_fg = "#282c34",
	selection_bg = "#3e4451", -- OneDark selection color

	-- ANSI colors (normal - 0-7)
	ansi = {
		"#000000", -- black
		"#bb0000", -- red
		"#00bb00", -- green
		"#bbbb00", -- yellow
		"#0000bb", -- blue
		"#bb00bb", -- magenta
		"#00bbbb", -- cyan
		"#bbbbbb", -- white
	},

	-- ANSI colors (bright - 8-15)
	brights = {
		"#555555", -- bright black
		"#ff5555", -- bright red
		"#55ff55", -- bright green
		"#ffff55", -- bright yellow
		"#5555ff", -- bright blue
		"#ff55ff", -- bright magenta
		"#55ffff", -- bright cyan
		"#ffffff", -- bright white
	},
}
--
-- Alternative color schemes (uncomment to use):
-- config.color_scheme = "Gruvbox"
-- config.color_scheme = "Atom One Dark (Gogh)"
-- config.color_scheme = "OneDark (base16)"

config.font_size = 14

return config
