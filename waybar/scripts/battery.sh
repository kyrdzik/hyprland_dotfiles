#!/bin/bash
capacity=$(cat /sys/class/power_supply/BAT1/capacity)
status=$(cat /sys/class/power_supply/BAT1/status)

filled=$(( capacity / 10 ))
empty=$(( 10 - filled ))

bar=""
for i in $(seq 1 $filled); do bar="${bar}█"; done
for i in $(seq 1 $empty); do bar="${bar}░"; done

if [ "$status" = "Charging" ]; then
    echo "[ ⚡ ${bar} ${capacity}% ]"
else
    echo "[ 🔋 ${bar} ${capacity}% ]"
fi
