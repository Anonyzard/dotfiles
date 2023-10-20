-- If LuaRocks is installed, make sure that packages installed through it are
-- found (e.g. lgi). If LuaRocks is not installed, do nothing.
pcall(require, "luarocks.loader")
require("frontend.bar")
-- Standard awesome library
-- local gears = require("gears")
-- local awful = require("awful")
require("awful.autofocus")
-- Widget and layout library
-- local wibox = require("wibox")
-- Theme handling library
-- local beautiful = require("beautiful")
require("awful.hotkeys_popup.keys")

-- local home = os.getenv("HOME")

-- Wallpaper
gears.wallpaper.maximized(beautiful.wallpaper, s)

-- Layouts
awful.layout.layouts = {
    awful.layout.suit.floating,
    awful.layout.suit.tile,
    -- awful.layout.suit.tile.left,
    -- awful.layout.suit.tile.bottom,
    -- awful.layout.suit.tile.top,
    -- awful.layout.suit.max,
    -- awful.layout.suit.max.fullscreen,
}

awful.tag({"","","","",""},s,awful.layout.layouts[1])

-- awful.spawn.with_shell("pgrep -x cbatticon || cbatticon -x cbatticon-notify &")
awful.spawn.with_shell("pidof connman-gtk || connman-gtk &")
awful.spawn.with_shell("pidof lxpolkit || lxpolkit &")
awful.spawn.with_shell("pidof alttab || alttab -fg '#eee0b7' -bg '#1d2021' -frame '#ffffff' -t 64x128 -i 64x64 -w 1 &")
