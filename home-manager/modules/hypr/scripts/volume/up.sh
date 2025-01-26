#!/bin/bash
# Script: volume_up.sh

# Get the current volume as a numeric value
volume=$(wpctl get-volume @DEFAULT_AUDIO_SINK@ | awk '{print $2}')
maxAudio=1.50

# Define a unique notification ID for volume updates
notification_id="volume_notification"

# Clear only the volume notification
dunstctl close "$notification_id"

# Ensure audio is unmuted
wpctl set-mute @DEFAULT_AUDIO_SINK@ 0

# Update volume and notify
if (( $(echo "$volume >= $maxAudio" | bc -l) )); then
    wpctl set-volume @DEFAULT_AUDIO_SINK@ 150%
else
    wpctl set-volume @DEFAULT_AUDIO_SINK@ 10%+
fi

# Send a new notification with the volume level
notify-send -i audio-volume-high "Volume Level" "$(wpctl get-volume @DEFAULT_AUDIO_SINK@ | awk '{printf "%.0f%%\n", $2 * 100}')"
