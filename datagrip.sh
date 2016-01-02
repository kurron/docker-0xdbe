#!/bin/bash

CMD="docker run \
       --rm \
       --name datagrip \
       --net "host" \
       --env DISPLAY=unix$DISPLAY \
       --user 1000:1000 \
       --volume /tmp/.X11-unix:/tmp/.X11-unix \
       --volume $HOME:/home/developer \
       kurron/docker-0xdbe:latest"

echo $CMD
$CMD
