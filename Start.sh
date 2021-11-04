#!/bin/bash

IP=$(ifconfig en0 | grep inet | awk '$1=="inet" {print $2}')
xhost +
docker run --rm -it -v /tmp/.X11-unix:/tmp/.X11-unix -v /Users/aureliecools/Documents/TP_MIR:/opt/TP  -e DISPLAY=$IP:0 coolsa/pyqt-designer:arm64
