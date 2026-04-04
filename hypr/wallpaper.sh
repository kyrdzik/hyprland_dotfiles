#!/bin/bash
WALLPAPERS=(
    ~/Pictures/arch.png
    ~/Pictures/arch2.jpg
    ~/Pictures/arch3.png
    ~/Pictures/arch4.jpg
)

# Initialize awww daemon
awww-daemon &
sleep 1

while true; do
    for wall in "${WALLPAPERS[@]}"; do
        awww img "$wall" \
            --transition-type fade \
            --transition-duration 2 \
            --transition-fps 60
        sleep 20
    done
done
