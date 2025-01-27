#!/bin/bash
# Script: toggle_mute.sh

# Toggle mute
wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle

# Retrieve the volume status
status=$(wpctl get-volume @DEFAULT_AUDIO_SINK@)

if [[ "$status" == *"[MUTED]"* ]]; then
    # Audio is muted
    makoctl dismiss -a
    notify-send -i audio-volume-muted "Volume Level" "Audio Muted"
else
    # Audio is unmuted
    makoctl dismiss -a
    notify-send -i audio-volume-high "Volume Level" "Audio Unmuted"
fi
