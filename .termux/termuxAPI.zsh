#!/bin/bash

# 1. Get device information
get_device_info() {
  termux-info
}

# 2. Vibrate the device
vibrate() {
  termux-vibrate -d 500
}

# 3. Get battery status
get_battery_status() {
  termux-battery-status
}

# 4. Get Wi-Fi connection info
get_wifi_info() {
  termux-wifi-connectioninfo
}

# 5. Turn on the flashlight
turn_on_flashlight() {
  termux-torch on
}

# 6. Turn off the flashlight
turn_off_flashlight() {
  termux-torch off
}

# 7. Get the current location
get_location() {
  termux-location
}

# 8. Take a photo
take_photo() {
  termux-camera-photo ~/camera/$(date +%Y%m%d%H%M%S).jpg
}

# 9. Record audio
record_audio() {
  termux-microphone-record -l 10 ~/audio/$(date +%Y%m%d%H%M%S).mp3
}

# 10. Get a list of all installed packages
list_packages() {
  termux-list-packages
}

# 11. Get a list of all running processes
list_processes() {
  termux-process-list
}

# 12. Send an SMS
send_sms() {
  local phone_number="$1"
  local message="$2"
  termux-sms-send -n "$phone_number" "$message"
}

# 13. Get call log
get_call_log() {
  termux-call-log
}

# 14. Get a list of all contacts
list_contacts() {
  termux-contact-list
}

# 15. Dial a phone number
dial_number() {
  local phone_number="$1"
  termux-telephony-call "$phone_number"
}
