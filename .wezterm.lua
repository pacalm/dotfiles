local wezterm = require 'wezterm'

local config = {}

if wezterm.config_builder then
  config = wezterm.config_builder()
end

-- カラースキームの設定
config.color_scheme = 'Afterglow'
config.font = wezterm.font(
  "PlemolJP Console HS", 
  {weight="Medium", stretch="Normal", style="Normal"}
)
config.font_size = 10
config.window_background_opacity = 0.9
-- 起動の構成
if wezterm.target_triple == 'x86_64-pc-windows-msvc' then
	config.default_domain = 'WSL:Ubuntu'
end

local mux = wezterm.mux
wezterm.on("gui-startup", function(cmd)
    local tab, pane, window = mux.spawn_window(cmd or {})
    window:gui_window():set_inner_size(600, 800)
end)

return config
