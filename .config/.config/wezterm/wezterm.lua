-- Pull in WezTerm API
local wezterm = require 'wezterm'

-- Initialize actual config
local config = {}
if wezterm.config_builder then
  config = wezterm.config_builder()
end

-- Appearance
config.font_size = 14.0
config.color_scheme = "Gruvbox Dark (Gogh)"
config.window_decorations = "RESIZE"
config.hide_tab_bar_if_only_one_tab = true
config.native_macos_fullscreen_mode = false

-- Keybindings
config.keys = {
  -- Default QuickSelect keybind (CTRL-SHIFT-Space) gets captured by something
  -- else on my system
  {
    key = 'A',
    mods = 'CTRL|SHIFT',
    action = wezterm.action.QuickSelect,
  },
  -- Quickly open config file with common macOS keybind
  {
    key = ',',
    mods = 'SUPER',
    action = wezterm.action.SpawnCommandInNewWindow({
      cwd = os.getenv 'WEZTERM_CONFIG_DIR',
      args = { os.getenv 'SHELL', '-c', '$VISUAL $WEZTERM_CONFIG_FILE' },
    }),
  },
}

-- Return config to WezTerm
return config

