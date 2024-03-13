#!/bin/bash

# Terminate already running bar instances (killall -q polybar)
pkill polybar 

# If all your bars have ipc enabled, you can also use
# polybar-msg cmd quit

# Launch Polybar, using default config location ~/.config/polybar/config.ini
date > /tmp/polybar.log
polybar -c ~/.config/polybar/anz-config.ini anonyzard 2>&1 | tee -a /tmp/polybar.log & disown

echo "Polybar launched..."
