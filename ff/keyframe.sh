#!/bin/bash

#FFMBC=/usr/share/bbcnpf-stitcher/bin/ffmbc_0.7.BBC.b_8bitX264_64bit
#FFMBC=/home/dolanotoole/git_projects/eng-bsd-himslm01-docker-ff_builder/bin/ubuntu_14.04/linux_x86_64/ffmbc-x264_8bit
#FFMBC=/home/dolanotoole/git_projects/eng-bsd-himslm01-docker-ff_builder/bin/ubuntu_12.04/linux_x86_64/ffmbc-x264_8bit
#FFMBC=/home/dolanotoole/git_projects/eng-bsd-himslm01-docker-ff_builder/bin/ubuntu_14.04/linux_i686/ffmbc-x264_8bit
#FFMBC=/home/dolanotoole/git_projects/eng-bsd-himslm01-docker-ff_builder/bin/ubuntu_12.04/linux_i686/ffmbc-x264_8bit
FFMBC=/home/dolanotoole/ff/linux_x86_64/ffmbc-x264_8bit
# FFMBC=/home/dolanotoole/ff/linux_i686/ffmbc-x264_8bit
#FFMBC=/home/dolanotoole/ff/v0.7.4/ffmbc
FFMPEG=/home/dolanotoole/ff/linux_x86_64/ffmpeg-x264_8bit

rm -rf ./out/*
rm something.mov

# $FFMBC -i jfetest.mxf -ss 00:01:30 -vf scale=0:0:interl=1,format=yuv422p,stretch4to3,w3fdif,scale=0:0:interl=0,format=yuv420p -pix_fmt yuv420p -vframes 1600 -r 50 -vcodec libx264 -profile high -y something.mov
$FFMBC -i jfetest.mxf -vf scale=0:0:interl=1,format=yuv422p,stretch4to3,w3fdif,scale=0:0:interl=0,format=yuv420p -pix_fmt yuv420p -r 50 -vcodec libx264 -profile high -y something.mov

# $FFMPEG -loglevel debug -i something.mov -vf select="gt(scene\,0.4)",scale=160:120,tile -frames:v 1 -y ./out/output%03d.png
$FFMPEG -loglevel debug -i something.mov -vf select="gt(scene\,0.3)" -vsync 2 -s 320.240 -y ./out/output%03d.png