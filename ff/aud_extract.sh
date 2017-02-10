#!/bin/bash

INPUT_VIDEO="rugby_original.mov"
#FFMBC=/usr/share/bbcnpf-stitcher/bin/ffmbc_0.7.BBC.b_8bitX264_64bit
#FFMBC=/home/dolanotoole/git_projects/eng-bsd-himslm01-docker-ff_builder/bin/ubuntu_14.04/linux_x86_64/ffmbc-x264_8bit
#FFMBC=/home/dolanotoole/git_projects/eng-bsd-himslm01-docker-ff_builder/bin/ubuntu_12.04/linux_x86_64/ffmbc-x264_8bit
#FFMBC=/home/dolanotoole/git_projects/eng-bsd-himslm01-docker-ff_builder/bin/ubuntu_14.04/linux_i686/ffmbc-x264_8bit
#FFMBC=/home/dolanotoole/git_projects/eng-bsd-himslm01-docker-ff_builder/bin/ubuntu_12.04/linux_i686/ffmbc-x264_8bit
#FFMBC=/home/dolanotoole/ff/linux_x86_64/ffmbc-x264_8bit
FFMBC=/home/dolanotoole/ff/linux_i686/ffmbc-x264_8bit
#FFMBC=/home/dolanotoole/ff/v0.7.4/ffmbc
FFMBC=/home/dolanotoole/ff/linux_i686/ffmpeg-x264_8bit

$FFMBC -loglevel debug -i $INPUT_VIDEO -ss 00:00:01 -vn -acodec flac -ac 1 -ar 48000 -ab 128k -t 6 rugby.flac