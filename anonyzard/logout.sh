#!/bin/bash

#Font to display gliphs
font="Ubuntu Nerd Font Book 13"
# options to be displyed
option0=" Logout"
option1=" Lock"
option2="⏾ Suspend"
#option3="鈴 Hibernate"
#option4=" Hybrid-sleep"
option5=" Reboot"
option6=" Shutdown"

# Variable passed to rofi
options="$option0\n$option1\n$option2\n$option5\n$option6"

selected="$(echo -e "$options" | rofi -font "$font" -theme-str  "inputbar{ children: [prompt];} listview{ lines: 5;}"  -dmenu -p "WARNING: Unsaved changes will be lost")"
case $selected in
    "$option0")
        # loginctl kill-session $(loginctl list-sessions | grep $USER);;
        loginctl terminate-user "$USER";;
    "$option1")
        i3lock -c 000000;;
    "$option2")
        loginctl suspend;;
#    $option3)
#        systemctl hibernate;;
#    $option4)
#        systemctl hybrid-sleep;;
    "$option5")
        loginctl reboot;;
        #sudo init 6;;
        # sudo reboot;;
    "$option6")
        loginctl poweroff;;
        #sudo init 0;;
        # sudo shutdown now;;
esac
# This script is a fork of
# https://github.com/ItzSelenux/slnxwm/blob/main/scripts/logout
