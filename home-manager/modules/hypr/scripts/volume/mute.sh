#!/bin/bash
# Script: toggle_mute.sh

# Define a unique notification ID for mute updates
notification_id="volume_notification"

# Toggle mute
wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle

# Retrieve the volume status
status=$(wpctl get-volume @DEFAULT_AUDIO_SINK@)

if [[ "$status" == *"[MUTED]"* ]]; then
    # Audio is muted
    dunstctl close "$notification_id"
    notify-send -i audio-volume-muted "Volume Level" "Audio Muted"
else
    # Audio is unmuted
    dunstctl close "$notification_id"
    notify-send -i audio-volume-high "Volume Level" "Audio Unmuted"
fi
