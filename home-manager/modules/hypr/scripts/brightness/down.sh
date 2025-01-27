#!/bin/bash
# Script: down.sh

# Increase brightness by 10%
brightnessctl set 10%-

# Get the current brightness value
brightness=$(brightnessctl get)

# Get the maximum brightness value for percentage calculation
max_brightness=$(brightnessctl max)

# Calculate the brightness percentage
brightness_percentage=$(( 100 * brightness / max_brightness ))

# Clear any existing brightness notifications
makoctl dismiss -a

# Send a new notification with the current brightness value
notify-send -h string:x-mako-stack-tag:brightness_notif "Brightness Level" "Brightness: ${brightness_percentage}%"
