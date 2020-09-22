#!/bin/bash

DEVICE=/dev/ttyUSB0

if [ -z "$1" ]
  then
    echo "No ecu argument supplied"
    exit
fi

FILE_PATH=$(readlink -f $1)

if [ -f $FILE_PATH ] ; then
    VOLUME_MOUNT="$FILE_PATH:/root/ddt4all/ecu.zip"
elif [ -d $FILE_PATH ] ; then
    VOLUME_MOUNT="$FILE_PATH:/root/ddt4all/ecus"
else
    echo "Could not handle $FILE_PATH file"
    exit
fi

echo "full file path: $VOLUME_MOUNT"

docker run \
    --net=host \
    --env="DISPLAY" \
    --device=$DEVICE \
    --volume="$HOME/.Xauthority:/root/.Xauthority:rw" \
    --volume $VOLUME_MOUNT \
    --volume ${PWD}/ddtplugins:/root/ddt4all/ddtplugins \
    --volume ${PWD}/shared:/root/shared \
    ddt4all

