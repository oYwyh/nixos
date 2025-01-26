#!/bin/bash
# Script: date.sh

# Get the current date and time
date=$(date +"%A, %B %d, %Y") # Example: Monday, August 21, 2024
time=$(date +"%H:%M:%S")       # Example: 14:35:42

notification_id="date"

# Close any previous notification with the same ID
dunstctl close "$notification_id"

# Send the new notification with the icon and date/time in a vertical layout
notify-send -i clock "Date and Time" "Time: $time\nDate: $date"
