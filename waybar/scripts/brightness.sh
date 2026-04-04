#!/bin/bash
brightness=$(brightnessctl get)
max=$(brightnessctl max)
percent=$(( brightness * 100 / max ))

filled=$(( percent / 10 ))
empty=$(( 10 - filled ))

bar=""
for i in $(seq 1 $filled); do bar="${bar}█"; done
for i in $(seq 1 $empty); do bar="${bar}░"; done

echo "[ 󰃞 ${bar} ${percent}% ]"
