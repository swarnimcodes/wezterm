-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
  config = wezterm.config_builder()
end

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
config.color_scheme = 'Tokyo Night'
config.font = wezterm.font 'Iosevka'
config.font_size = 19.5
config.enable_tab_bar = false
use_fancy_tab_bar = false
font_shaper = "Harfbuzz"

config.window_padding = {
    left = 0,
    right = 0,
    top = 0,
    bottom = 0,
}

-- and finally, return the configuration to wezterm
return config
