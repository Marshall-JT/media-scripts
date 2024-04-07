#!/usr/bin/bash

set -e

MEDIA_TMP=/home/joe/sambashare/media/temp
MAKEMKV_VERSION=v1.22.2
MOUNTSR=$(lsscsi -g | grep DVD | awk '{print $7}') 
MOUNTSG=$(lsscsi -g | grep DVD | awk '{print $8}')

# Run docker image as daemon
sudo docker run -d -p 5800:5800 -v $MEDIA_TMP:/output:rw -v /docker/appdata/makemkv:/config:rw -v $HOME:/storage:ro --device $MOUNTSG --device $MOUNTSR jlesage/makemkv:$MAKEMKV_VERSION
