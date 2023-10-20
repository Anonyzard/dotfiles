-- Standard awesome library
gears = require("gears")
awful = require("awful")
hotkeys_popup = require("awful.hotkeys_popup")
wibox = require("wibox")
beautiful = require("beautiful")
naughty = require("naughty")
battery = require("obvious.battery")

-- Apps 
app = {
    terminal = "x-terminal-emulator",
    browser = "x-www-browser",
    file = "pcmanfm",
    screenshot = "gnome-screenshot -i"
  }

-- Vars
modkey = "Mod4"
home = os.getenv('HOME')
theme = home .. "/.config/awesome/themes/divine_night.lua"
--beautiful.theme = home .. "/.config/awesome/theme.lua"
-- Theme
-- beautiful.init(home .. "/.config/awesome/theme.lua")
--if os.date("%H") >= "06" and os.date("%H") <= "18" then
--  -- return beautiful.dia
--  beautiful.theme = home .. "/.config/awesome/theme.lua"
--  return beautiful.theme
--else
--  -- return beautiful.noche
--  beautiful.theme = home .. "/.config/awesome/themes/divine_night.lua"
--  return beautiful.theme
--end

-- beautiful.init(theme)
-- gtk = beautiful.gtk.get_theme_variables()
beautiful.init(theme)
-- Imports
require("polo")
require("backend.anonyzard")
require("backend.hotkeys")

-- naughty.config.defaults( position = "top_middle" )
package.loaded["naughty.dbus"] = {}
naughty.notify({ title = "awesome", text = "Started!", timeout = 1 })

local freedesktop = require("freedesktop")
local menubar = require("menubar.utils")

menudir = menubar.parse_dir("/usr/share/applications")
menufile = menubar.parse_desktop_file("/usr/share/applications/bubblegum.desktop")

-- naughty.notify({ title = "awesome", text = "${menudir}", timeout = 10 })
