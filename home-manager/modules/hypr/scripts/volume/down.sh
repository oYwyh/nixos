#!/bin/bash
# Script: volume_down.sh

# Define a unique notification ID for volume updates
notification_id="volume_notification"

# Clear only the volume notification
dunstctl close "$notification_id"

# Update volume and notify
wpctl set-volume @DEFAULT_AUDIO_SINK@ 10%-

# Send a new notification with the volume level
notify-send -i audio-volume-low "Volume Level" "$(wpctl get-volume @DEFAULT_AUDIO_SINK@ | awk '{printf "%.0f%%\n", $2 * 100}')"
