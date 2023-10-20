-- local awful = require("awful")
-- hotkeys_popup = require("awful.hotkeys_popup")
-- local gears = require("gears")
-- local menubar = require("menubar")
-- local home = os.getenv('HOME')
-- modkey = "Mod4"

globalkeys = gears.table.join(
    awful.key({ modkey }, "s", 
        hotkeys_popup.show_help,
        {description="Show help", group="awesome"}),
    -- Brightness keys
    awful.key({}, "XF86MonBrightnessUp", 
        function () awful.spawn("notify-system brightness inc") end,
        {description = "Increase brightness", group = "system"}),

    awful.key({}, "XF86MonBrightnessDown", 
        function () awful.spawn("notify-system brightness dec") end,
        {description = "Decrease brightness", group = "system"}),
    
    -- Volume keys
    awful.key({}, "XF86AudioRaiseVolume", 
        function () awful.spawn("notify-system volume inc") end,
        {description = "Increase volume", group = "system"}),

    awful.key({}, "XF86AudioLowerVolume", 
        function () awful.spawn("notify-system volume dec") end,
        {description = "Decrease volume", group = "system"}),

    awful.key({}, "XF86AudioMute", 
        function () awful.spawn("notify-system volume mute") end,
        {description = "Mute volume", group = "system"}),

    -- Change desktop
    awful.key({ modkey }, "Left", 
        awful.tag.viewprev,
        {description = "View previous", group = "tag"}),

    awful.key({ modkey }, "Right",
        awful.tag.viewnext,
        {description = "View next", group = "tag"}),    
    -- Programas Estandar 
    -- awful.key({ modkey,           }, "Return", function () awful.spawn(app.terminal) end,
    --           {description = "open a terminal", group = "launcher"}),

    awful.key({ modkey }, "t", 
        function () awful.spawn(app.terminal) end,
        {description = "Open a terminal", group = "launcher"}),

    awful.key({ modkey }, "space", 
        function() awful.spawn("rofi -modi run -show drun -show-icons -max-history-size 5") end,
        {description = "Lanzador rofi", group = "launcher"}),

    awful.key({ modkey }, "F4", 
        function() awful.spawn("bash " .. home .. "/.config/anonyzard/logout.sh") end,
        {description = "Logout rofi", group = "awesome"}),
    
    awful.key({ modkey, "Control"}, "r", 
        awesome.restart,
        {description = "Reload awesome", group = "awesome"}),

    awful.key({ modkey, "Shift"}, "q", 
        awesome.quit,
        {description = "Quit awesome", group = "awesome"}),

    awful.key({ modkey}, "l", 
        function () awful.layout.inc( 1) end,
        {description = "Select next", group = "layout"}),

    awful.key({ modkey, "Shift"}, "space", 
        function () awful.layout.inc(-1) end,
        {description = "Select previous", group = "layout"}),


    awful.key({ modkey, "Control" }, "n",
        function ()
            local c = awful.client.restore()
            -- Focus restored client
            if c then
                c:emit_signal(
                    "request::activate", "key.unminimize", {raise = true}
                )
            end
        end,
        {description = "Restore minimized", group = "client"}),

    -- Prompt
    awful.key({ modkey }, "r", 
        function () awful.screen.focused().mypromptbox:run() end,
        {description = "Run prompt", group = "launcher"}),

    awful.key({ modkey }, "x",
        function ()
            awful.prompt.run {
                prompt       = "Run Lua code: ",
                textbox      = awful.screen.focused().mypromptbox.widget,
                exe_callback = awful.util.eval,
                history_path = awful.util.get_cache_dir() .. "/history_eval"
            }
        end,
        {description = "Lua execute prompt", group = "awesome"})
    -- -- Menubar
    -- awful.key({ modkey }, "p", 
    --     function() menubar.show() end,
    --     {description = "show the menubar", group = "launcher"})
)
clientkeys = gears.table.join(
    awful.key({ modkey }, "f",
        function (c)
            c.fullscreen = not c.fullscreen
            c:raise()
        end,
        {description = "Toggle fullscreen", group = "client"}),
    
    awful.key({ "Mod1" }, "F4",
        function (c) c:kill() end,
        {description = "Close", group = "client"}),

    awful.key({ modkey }, "q",
        function (c) c:kill() end,
        {description = "Close", group = "client"}),

    awful.key({ modkey, "Control" }, "space",  
        awful.client.floating.toggle                     ,
        {description = "Toggle floating", group = "client"}),

    -- awful.key({ modkey, "Control" }, "Return", 
    --     function (c) c:swap(awful.client.getmaster()) end,
    --     {description = "move to master", group = "client"}),

    awful.key({ modkey }, "o", 
        function (c) c:move_to_screen() end,
        {description = "Move to screen", group = "client"}),

    awful.key({ modkey }, "Return",
        function (c) c.ontop = not c.ontop end,
        {description = "Toggle keep on top", group = "client"}),

    awful.key({ modkey }, "n",
        function (c)
            c.minimized = true
        end,
        {description = "Minimize", group = "client"}),
    
    awful.key({ modkey }, "m",
        function (c)
            c.maximized = not c.maximized
            c:raise()
        end,
        {description = "(Un)Maximize", group = "client"})
    
    -- awful.key({ modkey, "Control" }, "m",
    --     function (c)
    --         c.maximized_vertical = not c.maximized_vertical
    --         c:raise()
    --     end,
    --     {description = "(un)maximize vertically", group = "client"}),
    
    -- awful.key({ modkey, "Shift" }, "m",
    --     function (c)
    --         c.maximized_horizontal = not c.maximized_horizontal
    --         c:raise()
    --     end,
    --     {description = "(un)maximize horizontally", group = "client"})
)
for i = 1, 9 do
    globalkeys = gears.table.join(globalkeys,
        awful.key({ modkey }, "#" .. i + 9,
            function ()
                local screen = awful.screen.focused()
                local tag = screen.tags[i]
                if tag then
                    tag:view_only()
                end
            end,
            {description = "View tag #"..i, group = "tag"}),

        awful.key({ modkey, "Control" }, "#" .. i + 9,
            function ()
                local screen = awful.screen.focused()
                local tag = screen.tags[i]
                if tag then
                    awful.tag.viewtoggle(tag)
                end
            end,
            {description = "Toggle tag #" .. i, group = "tag"}),
        
        awful.key({ modkey, "Shift" }, "#" .. i + 9,
            function ()
                if client.focus then
                    local tag = client.focus.screen.tags[i]
                    if tag then
                        client.focus:move_to_tag(tag)
                    end
                end
            end,
            {description = "Move focused client to tag #"..i, group = "tag"}),

        -- Toggle tag on focused client.
        awful.key({ modkey, "Control", "Shift" }, "#" .. i + 9,
            function ()
                if client.focus then
                    local tag = client.focus.screen.tags[i]
                    if tag then
                        client.focus:toggle_tag(tag)
                    end
                end
            end,
            {description = "Toggle focused client on tag #" .. i, group = "tag"})
    )
end

clientbuttons = gears.table.join(
    awful.button({ }, 1, function (c)
        c:emit_signal("request::activate", "mouse_click", {raise = true})
    end),
    awful.button({ modkey }, 1, function (c)
        c:emit_signal("request::activate", "mouse_click", {raise = true})
        awful.mouse.client.move(c)
    end),
    awful.button({ modkey }, 3, function (c)
        c:emit_signal("request::activate", "mouse_click", {raise = true})
        awful.mouse.client.resize(c)
    end)
)
client.connect_signal("mouse::enter", function(c)
    c:emit_signal("request::activate", "mouse_enter", {raise = false})
end)

root.buttons(awful.util.table.join(
    awful.button({ }, 4, awful.tag.viewnext),
    awful.button({ }, 5, awful.tag.viewprev)
))
root.keys(globalkeys)
