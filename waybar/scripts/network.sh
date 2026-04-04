#!/bin/bash
wifi_state=$(cat /sys/class/net/wlan0/operstate)

if [ "$wifi_state" = "up" ] || [ "$wifi_state" = "dormant" ]; then
    strength=$(awk 'NR==3 {print int($3 * 10 / 7)}' /proc/net/wireless)
    if [ "$strength" -ge 67 ]; then
        echo "[ 󰤨 ]"
    elif [ "$strength" -ge 34 ]; then
        echo "[ 󰤥 ]"
    else
        echo "[ 󰤢 ]"
    fi
elif [ "$(cat /sys/class/net/eno1/operstate)" = "up" ]; then
    echo "[ 󰈀 ]"
else
    echo "[ 󰤭 ]"
fi
