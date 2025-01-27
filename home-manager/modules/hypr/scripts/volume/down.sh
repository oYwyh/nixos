#!/bin/bash
# Script: volume_down.sh

# Clear only the volume notification
makoctl dismiss -a

# Update volume and notify
wpctl set-volume @DEFAULT_AUDIO_SINK@ 10%-

# Send a new notification with the volume level
notify-send -i audio-volume-low "Volume Level" "$(wpctl get-volume @DEFAULT_AUDIO_SINK@ | awk '{printf "%.0f%%\n", $2 * 100}')"
