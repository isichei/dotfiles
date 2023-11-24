-- Pull in the wezterm API
local wezterm = require 'wezterm'
local act = wezterm.action

-- local config = {}
if wezterm.config_builder then
    config = wezterm.config_builder()
end

config.font = wezterm.font 'JetBrains Mono'
config.color_scheme = 'Catppuccin Mocha'
config.default_cursor_style = 'BlinkingUnderline'
config.keys = {
    {
        key = 'LeftArrow',
        mods = 'ALT',
        action = act.SendKey {
            key = 'b',
            mods = 'ALT',
        },
    },
    {
        key = 'RightArrow',
        mods = 'ALT',
        action = act.SendKey { key = 'f', mods = 'ALT' },
    },
}
return config
