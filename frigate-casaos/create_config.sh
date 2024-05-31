#!/bin/bash

CONFIG_PATH="data/DATA/AppData/frigate/config/config.yml"

# Ensure the directory exists
mkdir -p $(dirname $CONFIG_PATH)

# Write the content to config.yml
cat > $CONFIG_PATH <<EOL
mqtt:
  host: mqtt.server.com
cameras:
  front:
    ffmpeg:
      inputs:
        - path: rtsp://cosmo:cosmotheyorkie@192.168.1.182:8554/unicast
          roles:
            - detect
    detect:
      width: 1280
      height: 720
EOL

echo "Configuration written to $CONFIG_PATH"
