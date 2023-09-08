#!/bin/sh

# Add Flutter Gallery to the autostarted set
APP="flutter-gallery_flutter-gallery"
sudo --user=frame mkdir --verbose --parents /home/frame/.config/autostart/
ln --verbose --symbolic /var/lib/snapd/desktop/applications/$APP.desktop /home/frame/.config/autostart/

# Start the user session on boot
systemctl enable user-session.service

# Prevent interaction on other TTYs
#
# You can skip this for debugging and development
systemctl mask console-conf@.service
systemctl mask getty@.service
