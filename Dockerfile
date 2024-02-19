FROM ubuntu:20.04

MAINTAINER Aurelie <Aurelie@cools.com>

ENV DEBIAN_FRONTEND=noninteractive

# Add user
RUN adduser --quiet --disabled-password qtuser && usermod -a -G audio qtuser

# This fix: libGL error: No matching fbConfigs or visuals found
ENV LIBGL_ALWAYS_INDIRECT=1

# Install Python 3, PyQt5
RUN apt-get update && apt-get install -y python3-pyqt5 python3-pip qttools5-dev-tools pyqt5-dev-tools
RUN pip install opencv-python opencv-contrib-python  matplotlib scipy numpy scikit-image==0.18.0 scikit-learn 

WORKDIR /opt/TP
