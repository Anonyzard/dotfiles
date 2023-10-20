#!/bin/bash

# Terminate already running bar instances (killall -q polybar)
pkill polybar

# If all your bars have ipc enabled, you can also use
# polybar-msg cmd quit

# Launch Polybar, using default config location ~/.config/polybar/config.ini
polybar -c ~/.config/polybar/anz-config.ini anonyzard 2>&1 | tee -a /tmp/polybar.log & disown
polybar -c ~/.config/polybar/anz-config.ini hdmi 2>&1 | tee -a /tmp/polybar.log & disown

echo "Polybar launched..."
#pgrep -x wpa-cute || wpa-cute -t &
pgrep -x connman-gtk || connman-gtk &
#pgrep -x cmst || cmst -m &
