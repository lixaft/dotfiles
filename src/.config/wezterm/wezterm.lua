local wezterm = require("wezterm")

return {
  -- Disable update check.
  check_for_updates = false,
  show_update_window = false,

  -- Disable borders and tabs.
  window_decorations = "RESIZE",
  enable_tab_bar = false,

  -- Disable scroll bar.
  enable_scroll_bar = false,

  -- Setup colors.
  -- FIX: There is a small color diff on the background. To fix it we just need
  -- to wait until the `tokyonight_night` them will be release. See:
  --https://wezfurlong.org/wezterm/colorschemes/t/index.html#tokyonight_night
  color_scheme = "tokyonight",
  window_background_opacity = 0.8,

  -- Setup font.
  font = wezterm.font("FiraCode Nerd Font", { weight = "Regular" }),
  font_size = 12.0,
  font_rules = {
    {
      italic = true,
      font = wezterm.font("FiraCode Nerd Font"),
    },
  },
}
