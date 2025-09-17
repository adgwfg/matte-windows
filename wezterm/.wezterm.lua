-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices.

-- For example, changing the initial geometry for new windows:

-- or, changing the font size and color scheme.

-- config.font = wezterm.font('JetBrains Mono', {weight='Regular', stretch='Normal', style='Normal'})
-- config.font_size = 12.0
config.color_scheme = 'Gruvbox Dark'

-- Explicit Gruvbox Dark palette to ensure theme applies even if the named scheme isn't found
config.colors = {
  foreground = '#ebdbb2',
  background = '#282828',
  cursor_bg = '#ebdbb2',
  cursor_fg = '#282828',
  cursor_border = '#ebdbb2',
  selection_bg = '#504945',
  selection_fg = '#ebdbb2',
  scrollbar_thumb = '#504945',

  ansi = {
    '#282828', -- black (bg)
    '#cc241d', -- red
    '#98971a', -- green
    '#d79921', -- yellow
    '#458588', -- blue
    '#b16286', -- magenta
    '#689d6a', -- cyan
    '#a89984', -- white (fg2)
  },
  brights = {
    '#928374', -- bright black
    '#fb4934', -- bright red
    '#b8bb26', -- bright green
    '#fabd2f', -- bright yellow
    '#83a598', -- bright blue
    '#d3869b', -- bright magenta
    '#8ec07c', -- bright cyan
    '#ebdbb2', -- bright white
  },
}

-- Window appearance
config.window_decorations = "INTEGRATED_BUTTONS|RESIZE"
config.enable_tab_bar = false
config.hide_tab_bar_if_only_one_tab = true
config.window_background_opacity = 1.0
config.window_padding = {
  left = 15,
  right = 15,
  top = 15,
  bottom = 15,
}

-- Finally, return the configuration to wezterm:
return config
