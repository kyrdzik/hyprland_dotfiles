#!/bin/bash
volume=$(pactl get-sink-volume @DEFAULT_SINK@ | grep -oP '\d+(?=%)' | head -1)
muted=$(pactl get-sink-mute @DEFAULT_SINK@ | grep -o "yes")

filled=$(( volume / 10 ))
empty=$(( 10 - filled ))

bar=""
for i in $(seq 1 $filled); do bar="${bar}█"; done
for i in $(seq 1 $empty); do bar="${bar}░"; done

if [ "$muted" = "yes" ]; then
    echo "[ 󰝟 ░░░░░░░░░░ muted ]"
else
    echo "[ 󰕾 ${bar} ${volume}% ]"
fi
