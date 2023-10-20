-- Rofi main menu
-- local ilauncher = wibox.widget.imagebox(beautiful.awesome_icon)
-- local launcher = wibox.widget {
--     image  = beautiful.awesome_icon,
--     resize = true,
--     widget = ilauncher
-- }
-- launcher:buttons(gears.table.join(
--     awful.button({ }, 1, function () awful.spawn("bash " .. home .. "/.config/rofi/launcher") end )
-- ))

-- Awesome menu
-- local launcher_menu = awful.menu({items = {
--     { "  terminal", app.terminal },
--       { "  files", app.file },
--       { "  browser", app.browser},
--       { "  screenshot", app.scshot },
--   }})
  
-- local launcher = awful.widget.launcher({image=beautiful.awesome_icon, menu=launcher_menu})


-- Debian menu
local debian = require("debian.menu")
myawesomemenu = {
    { "hotkeys", function() hotkeys_popup.show_help(nil, awful.screen.focused()) end },
    { "manual", app.terminal .. " -e man awesome" },
    -- { "edit config", editor_cmd .. " " .. awesome.conffile },
    { "restart", awesome.restart },
    { "quit", function() awesome.quit() end },
 }
 
 local menu_awesome = { "awesome", myawesomemenu, beautiful.awesome_icon }
 local menu_terminal = { "open terminal", terminal }
 
 if has_fdo then
     mymainmenu = freedesktop.menu.build({
         before = { menu_awesome },
         after =  { menu_terminal }
     })
 else
     mymainmenu = awful.menu({
         items = {
                   menu_awesome,
                   { "Debian", debian.menu.Debian_menu.Debian },
                   menu_terminal,
                 }
     })
 end
 
 
 launcher = awful.widget.launcher({ image = beautiful.awesome_icon,
                                      menu = mymainmenu })

                                      
-- Rofi power menu
local power_menu = wibox.widget.imagebox(beautiful.poweroff)
local powermenu = wibox.widget {
    image  = beautiful.poweroff,
    resize = true,
    widget = power_menu
}
power_menu:buttons(gears.table.join(
    awful.button({ }, 1, function () awful.spawn("bash " .. home .. "/.config/anonyzard/logout.sh") end )
))

-- Clock
local hour = wibox.widget(
{
    font = beautiful.font_name .. " bold 15",
    format = " %H:%M ",
    right = 5,
    left = 5,
    align = "center",
    halign = "center",
    widget = wibox.widget.textclock
})

-- Calendar
local calendar = awful.widget.calendar_popup.month()
calendar:attach(hour,"br")

-- Time
local function medier()
    if os.date("%H") >= "06" and os.date("%H") <= "18" then
        return beautiful.dia
    else
        return beautiful.noche
    end
  end
  
local function medier_bg()
    if os.date("%H") >= "06" and os.date("%H") <= "18" then
        return beautiful.time_day
    else
        return beautiful.time_night
    end
end
  
local time_icon = wibox.widget({
    {
        {
            image = medier(),
            resize = true,
            widget = wibox.widget.imagebox,
        },
        margins = 4,
        widget = wibox.container.margin,
    },
    bg = medier_bg(),
    shape = gears.shape.rounded_rect,
    widget = wibox.container.background,
})

-- Song
local song_icon = wibox.widget({
    {
        {
        image = beautiful.music,
        resize = true,
        widget = wibox.widget.imagebox,
        },
        margins = 1,
        widget = wibox.container.margin,
    },
    bg = beautiful.music_bg,
    shape = gears.shape.circle,
    widget = wibox.container.background,
  })
  
local song_txt = wibox.widget ({
    text = "No song :(",
    widget = wibox.widget.textbox,
    font = beautiful.font_name .. " bold 12",
    halign = "center"
})

gears.timer {timeout = 2, call_now = true, autostart = true,
    callback = function()
    awful.spawn.easy_async(
        {"bash", "-c", "$HOME/.config/awesome/scripts/playerctl.sh"},
        function(salida)
            song_txt.text = salida
        end)
    end
}

local song = wibox.widget ({
    song_icon,
    song_txt,
    layout = wibox.layout.align.horizontal
})

-- Create taglist buttons
local taglist_buttons = gears.table.join(
  awful.button({ }, 1, function(t) t:view_only() end),
  awful.button({ modkey }, 1, function(t)
    if client.focus then
      client.focus:move_to_tag(t)
    end
  end),
  awful.button({ }, 3, awful.tag.viewtoggle),
  awful.button({ modkey }, 3, function(t)
    if client.focus then
      client.focus:toggle_tag(t)
    end
  end),
  awful.button({ }, 4, function(t) awful.tag.viewnext(t.screen) end),
  awful.button({ }, 5, function(t) awful.tag.viewprev(t.screen) 
end))

local tasklist_buttons = gears.table.join(
  awful.button({ }, 1, function (c)
    if c == client.focus then
      c.minimized = true
    else
      c:emit_signal(
        "request::activate",
        "tasklist",
        {raise = true})
    end
  end),
  awful.button({ }, 3, function()
     awful.menu.client_list({ theme = { width = 400 } })
  end),
  awful.button({ }, 4, function ()
    awful.client.focus.byidx(1)
  end),
  awful.button({ }, 5, function ()
    awful.client.focus.byidx(-1)
  end))

-- Bar setup for each screen
awful.screen.connect_for_each_screen(function(s)

    -- We need one layoutbox per screen.
    s.mylayoutbox = awful.widget.layoutbox(s)
    s.mylayoutbox:buttons(gears.table.join(
        awful.button({ }, 1, function () awful.layout.inc(1)end),
        awful.button({ }, 3, function () awful.layout.inc(-1)end),
        awful.button({ }, 4, function () awful.layout.inc(1)end),
        awful.button({ }, 5, function () awful.layout.inc(-1)
    end)))

    -- Create a taglist widget
    s.mytaglist = awful.widget.taglist {
    screen  = s,
    filter  = awful.widget.taglist.filter.all,
    buttons = taglist_buttons,
    style   = {
        shape = gears.shape.circle,
    },
    }

    -- Create a tasklist widget
    s.mytasklist = awful.widget.tasklist {
    screen  = s,
    filter  = awful.widget.tasklist.filter.currenttags,
    buttons = tasklist_buttons,
    style = {
        gears.shape.circle,
    },
    }

    -- Bar props
    s.mywibar = awful.wibar({
        position = "bottom",
        stretch = true,
        screen = s,
        type = "dock",
        ontop = false,
        bg = beautiful.bg_titlebar,
        opacity = 0.5,
        fg = beautiful.bar_fg,
        visible = true,
        height = 36,
        --width = 1230,
    })

layoutbar_align = wibox.layout.align.horizontal
layoutbar_fixed = wibox.layout.fixed.horizontal

s.mywibar:setup ({
    layout = wibox.layout.align.horizontal,
    {  -- Left
        { -- Left 1 
            {
                --{
                {
                    --awesome_logo,
                    launcher,
                    layout = wibox.layout.fixed.horizontal,
                },
                margins = 6,
                widget = wibox.container.margin,
                --},
                --bg = "#63c1d6",
                --shape = gears.shape.rounded_rect,
                --widget = wibox.container.background,
            },
            left = 5,
            right = 5,
            top = 4,
            bottom = 4,
            widget = wibox.container.margin,
        }, 
        layout = wibox.layout.fixed.horizontal,

        {  --Left 2
            {
                {
                    --{
                    s.mytaglist,
                    layout = wibox.layout.fixed.horizontal,
                    --},
                    --left = 1,
                    --rigth = 1,
                    --widget = wibox.container.margin,
                },
                shape = gears.shape.rounded_bar,
                bg = beautiful.bar_bg,
                fg = beautiful.bar_fg,
                widget = wibox.container.background,
            },
            top = 4,
            bottom = 4,
            left = 5,
            right = 5,
            widget = wibox.container.margin,
        },
        layout = wibox.layout.fixed.horizontal,
    },

    {  --Center
        {
            {
            {
                {
                    s.mytasklist,
                    layout = wibox.layout.align.vertical,
                },
                margins = 5,
                widget  = wibox.container.margin,
            },
            shape  = gears.shape.rounded_rect,
            bg     = beautiful.bar_bg,
            widget = wibox.container.background
        },
        margins = 4,
        widget  = wibox.container.margin
        },
        halign = "left",
        layout = wibox.container.place,
    },

    {  -- Right
        {
            {
                {
                    {
                        {
                            song,
                            layout = wibox.layout.align.horizontal
                        },
                        margins = 3,
                        widget = wibox.container.margin
                    },
                    --bg = beautiful.bar_bg,
                    --shape = gears.shape.rounded_bar,
                    --fg = "#ff0000",
                    width = 250,
                    strategy = "max",
                    widget = wibox.container.constraint
                },
                bg = beautiful.bar_bg,
                shape = gears.shape.rounded_bar,
                widget = wibox.container.background
            },
            margins = 4,
            widget = wibox.container.margin
        },

    { -- Rigth 1 
        {
            {
                {
                    wibox.widget.systray(),
                    layout = wibox.layout.fixed.horizontal,
                },
                margins = 5,
                widget  = wibox.container.margin
            },
            bg = beautiful.bar_bg,
            shape = gears.shape.rounded_rect,
            widget = wibox.container.background
        },
        margins = 4,
        widget  = wibox.container.margin
    },

    --{
    --  playerctl,
    --  layout = wibox.layout.align.horizontal
    --},

    {  --Right 2 
        { 
            {
                spacing = 3,
                battery(),
                hour,
                time_icon,
                layout = wibox.layout.align.horizontal,
            },
            bg = beautiful.bar_bg,
            shape = gears.shape.rounded_bar,
            widget = wibox.container.background,
        },
        top = 4,
        bottom = 4,
        left = 4,
        right = 10,
        widget = wibox.container.margin,
    },

    {
        {
            {
                power_menu,
                layout = wibox.layout.align.horizontal
            },
            bg = beautiful.fg_urgent,
            shape = gears.shape.circle,
            widget = wibox.container.background
        },
        margins = 5,
        widget = wibox.container.margin
    },

    layout = wibox.layout.fixed.horizontal,
    },
})end)
