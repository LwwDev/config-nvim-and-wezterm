local wezterm = require("wezterm")
local act = wezterm.action

wezterm.on("toggle-opacity", function(window, _)
	local overrides = window:get_config_overrides() or {}

	if overrides.window_background_opacity == 1.0 then
		overrides.window_background_opacity = 0.92
	else
		overrides.window_background_opacity = 1.0
	end

	window:set_config_overrides(overrides)
end)

return {
	default_prog = { "pwsh.exe", "-NoLogo" },
	default_cwd = "C:\\",

	color_scheme = "Kanagawa Dragon",

	font = wezterm.font("JetBrains Mono"),
	font_size = 12,

	window_background_opacity = 0.92,

	enable_tab_bar = true,
	hide_tab_bar_if_only_one_tab = true,
	use_fancy_tab_bar = false,

	default_cursor_style = "BlinkingBar",

	scrollback_lines = 5000,

	adjust_window_size_when_changing_font_size = false,

	animation_fps = 120,
	max_fps = 120,

	window_padding = {
		left = 8,
		right = 8,
		top = 8,
		bottom = 8,
	},

	window_decorations = "TITLE | RESIZE",

	leader = {
		key = "a",
		mods = "CTRL",
		timeout_milliseconds = 1000,
	},

	keys = {
		-- Opacity toggle
		{
			key = "O",
			mods = "CTRL|ALT",
			action = wezterm.action.EmitEvent("toggle-opacity"),
		},

		-- tmux-style splits
		{
			key = "|",
			mods = "LEADER",
			action = act.SplitHorizontal({ domain = "CurrentPaneDomain" }),
		},
		{
			key = "-",
			mods = "LEADER",
			action = act.SplitVertical({ domain = "CurrentPaneDomain" }),
		},

		-- Move between panes
		{ key = "h", mods = "LEADER", action = act.ActivatePaneDirection("Left") },
		{ key = "j", mods = "LEADER", action = act.ActivatePaneDirection("Down") },
		{ key = "k", mods = "LEADER", action = act.ActivatePaneDirection("Up") },
		{ key = "l", mods = "LEADER", action = act.ActivatePaneDirection("Right") },

		-- Pane picker
		{ key = "q", mods = "LEADER", action = act.PaneSelect },

		-- Close pane
		{ key = "x", mods = "LEADER", action = act.CloseCurrentPane({ confirm = true }) },
	},
}
