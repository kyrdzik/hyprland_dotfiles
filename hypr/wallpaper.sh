#!/bin/bash
awww-daemon &
sleep 1
awww img ~/Pictures/arch4.jpg --transition-type fade --transition-duration 2 --transition-fps 60
