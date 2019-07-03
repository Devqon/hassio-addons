#!/bin/bash

# Copy over the xbox component
mkdir -p /config/custom_components/xboxone
cp -R custom_components /config/custom_components/xboxone/

# Persistent tokens on reboot
touch /config/.xbox-token.json
mkdir -p /root/.local/share/xbox/
ln -s /config/.xbox-token.json /root/.local/share/xbox/tokens.json


# Run the server
xbox-rest-server
