#!/usr/bin/bash

set -e

# Copy below command for number of files that need to be transcoded
HandBrakeCLI --preset 'Super HQ 1080p30 Surround' --format av_mp4 --align-av --markers -i INPUT_FOLDER_PATH  -o OUTPUT_FOLDER_PATH 
