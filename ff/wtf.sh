#!/bin/bash

#FFMBC=/usr/share/bbcnpf-stitcher/bin/ffmbc_0.7.BBC.b_8bitX264_64bit
#FFMBC=/home/dolanotoole/git_projects/eng-bsd-himslm01-docker-ff_builder/bin/ubuntu_14.04/linux_x86_64/ffmbc-x264_8bit
#FFMBC=/home/dolanotoole/git_projects/eng-bsd-himslm01-docker-ff_builder/bin/ubuntu_12.04/linux_x86_64/ffmbc-x264_8bit
#FFMBC=/home/dolanotoole/git_projects/eng-bsd-himslm01-docker-ff_builder/bin/ubuntu_14.04/linux_i686/ffmbc-x264_8bit
#FFMBC=/home/dolanotoole/git_projects/eng-bsd-himslm01-docker-ff_builder/bin/ubuntu_12.04/linux_i686/ffmbc-x264_8bit
#FFMBC=/home/dolanotoole/ff/linux_x86_64/ffmbc-x264_8bit
FFMBC=/home/dolanotoole/ff/linux_i686/ffmbc-x264_8bit
#FFMBC=/home/dolanotoole/ff/v0.7.4/ffmbc

rm -rf ./out/*
rm something.mxf
rm something.mov

#$FFMBC -i testcard_w.mxf -vf w3fdif,tinterlace=4:flags=+vlpf,fieldorder=tff,scale=0:0:interl=1,format=yuv420p -pix_fmt yuv420p -r 25 -vcodec libx264 -tff -profile high -y something.mov
#$FFMBC -i testcard_hd.mxf -vf fieldorder=tff,scale=0:0:interl=1,format=yuv420p -pix_fmt yuv420p -r 25 -vcodec libx264 -tff -profile high -y something.mov
#$FFMBC -i testcard_hd.mxf -vf w3fdif,scale=0:0:interl=0,format=yuv422p -target imx30 -y something.mxf
#$FFMBC -i something.mov -vf colormatrix=bt709:bt601,w3fdif,scale=720:576:interl=0,format=yuv422p,pad=720:608:0:32:black,tinterlace=4:flags=+vlpf,scale=0:0:interl=1,format=yuv422p -target imx30 -y something.mxf

#$FFMBC -i jfetest.mxf -vcodec v210 -acodec pcm_s16le -vframes 200 -f matroska - | $FFMBC -i - -vf colormatrix=bt709:bt601,w3fdif,pad=1476:1080:18:0:black,scale=720:576:interl=0,format=yuv422p,pad=720:608:0:32:black,tinterlace=4:flags=+vlpf,scale=0:0:interl=1,format=yuv422p -target imx30 -y something.mxf

$FFMBC -threads 12 -i testcard_hd.mxf -vf w3fdif,tinterlace=4:flags=+vlpf -tff -r 25 -target imx30 -y something.mxf
#$FFMBC -threads 12 -i jfetest.mxf -vf w3fdif,tinterlace=4:flags=+vlpf -tff -r 25 -target imx30 -vframes 200 -y something.mxf


$FFMBC -i something.mxf -vf scale=0:0:interl=1,format=yuv422p,w3fdif,scale=0:0:interl=0,format=bgr24 -r 50 -pix_fmt bgr24 -y ./out/output%03d.bmp