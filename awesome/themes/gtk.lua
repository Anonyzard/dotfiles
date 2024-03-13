local theme_assets = require("beautiful.theme_assets")
local xresources = require("beautiful.xresources")
local dpi = xresources.apply_dpi
local gears = require("gears")
local wibox = require("wibox")

local home = os.getenv('HOME')
local themes_path = home .. "/.config/awesome"

local theme = {}

local background = "#000000"
local foreground = "#ffffff"
local foreground2 = "#bababa"
local unfocus = "#5a5a5a"
local primary = "#1a1a1a"
local secondary = "#0a0a0a"
local urgent = "#F2594B"

gtk = beautiful.gtk.get_theme_variables()

-- Font
theme.font = "Monofur Nerd Font bold 14"
theme.font_name = "Monofur Nerd Font"
theme.font_asian = "Noto Sans Mono CJK JP"

theme.useless_gap = dpi(5)
 
--theme.bg_focus = "#141b1e"
-- theme.bg_normal = "#242d35"
theme.bg_normal = background
--theme.bg_urgent = "#0000ff"
--theme.bg_minimize = "#734251"

theme.fg_normal = unfocus
theme.fg_focus = foreground
theme.fg_urgent = urgent
theme.fg_minimize = "#1a2026"

theme.border_width = dpi(3)
theme.border_focus = theme.bg_normal
theme.border_normal  = primary
theme.border_marked = "#ea9d34"

-- theme.bar_bg = "#242d35"
theme.bar_bg = secondary
theme.bar_fg = foreground
-- theme.bg_titlebar = "#1a2026"
theme.bg_titlebar = background
-- theme.md_bg_titlebar = "#242d35"
theme.md_bg_titlebar = primary

theme.menu_height = nil
theme.menu_width = 400

-- theme.bg_systray = "#242d35"
theme.bg_systray = secondary
theme.systray_icon_spacing = 7

theme.tasklist_bg_focus = secondary
theme.tasklist_bg_normal = secondary
theme.tasklist_bg_minimize = secondary
theme.tasklist_disable_task_name = false
theme.tasklist_plain_task_name = false
theme.tasklist_spacing = 5

theme.taglist_fg_focus = foreground
theme.taglist_fg_occupied = foreground2
theme.taglist_bg_focus = secondary
theme.taglist_fg_empty = unfocus
--theme.taglist_bg_occupied = "#141b1e"
theme.taglist_spacing = 3

theme.time_day = "#94cf95"
theme.time_night = "#4cb9d6"

theme.music_bg = "#f692b2"

theme.dashboard_module = "#242d35"

theme.wallpaper = "/usr/share/lxde/wallpapers/17-3.jpg"

theme.titlebar_close_button_normal = themes_path .. "/icons/titlebar/inactive.png"
theme.titlebar_close_button_focus = themes_path .. "/icons/titlebar/close.png"

theme.titlebar_minimize_button_focus_active = themes_path .. "/icons/titlebar/max.png"
theme.titlebar_minimize_button_normal_active = themes_path .. "/icons/titlebar/max.png"
theme.titlebar_minimize_button_focus_inactive = themes_path .. "/icons/titlebar/max.png"
theme.titlebar_minimize_button_normal_inactive = themes_path .. "/icons/titlebar/inactive.png"

theme.titlebar_maximized_button_normal_active = themes_path .. "/icons/titlebar/inactive.png"
theme.titlebar_maximized_button_focus_active = themes_path .. "/icons/titlebar/ontop.png"
theme.titlebar_maximized_button_normal_inactive = themes_path .. "/icons/titlebar/inactive.png"
theme.titlebar_maximized_button_focus_inactive = themes_path .. "/icons/titlebar/ontop.png"

-- Notification
notification_font = theme.font
notification_bg = background
notification_fg = foreground

notification_width = 300
notification_height = 300
notification_margin = 1

notification_border_color = "#3D93D9"
notification_border_width = 20
notification_shape = gears.shape.rounded_rect
-- notification_opacity = 100
notification_icon_size = 64

-- Image
theme.awesome_icon = themes_path .. "/icons/awesome.png"
theme.noche = themes_path .. "/icons/night.png"
theme.dia = themes_path .. "/icons/day.png"
theme.pfp = themes_path .. "/icons/pfp.jpg"
theme.music = themes_path .. "/icons/music.png"
theme.musica = themes_path .. "/icons/musica.png"
theme.poweroff = themes_path .. "/icons/poweroff.png"

theme.icon_theme = nil

return theme

