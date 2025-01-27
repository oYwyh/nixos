#!/bin/bash
# Script: up.sh

# Get the current volume as a numeric value
volume=$(wpctl get-volume @DEFAULT_AUDIO_SINK@ | awk '{print $2}')
maxAudio=1.50

# Clear only the volume notification
makoctl dismiss -a

# Ensure audio is unmuted
wpctl set-mute @DEFAULT_AUDIO_SINK@ 0

# Update volume and notify
if [[ $(echo "$volume $maxAudio" | awk '{if ($1 >= $2) print 1; else print 0}') -eq 1 ]]; then
    wpctl set-volume @DEFAULT_AUDIO_SINK@ 150%
else
    wpctl set-volume @DEFAULT_AUDIO_SINK@ 10%+
fi

# Send a new notification with the volume level
notify-send -i audio-volume-high "Volume Level" "$(wpctl get-volume @DEFAULT_AUDIO_SINK@ | awk '{printf "%.0f%%\n", $2 * 100}')"