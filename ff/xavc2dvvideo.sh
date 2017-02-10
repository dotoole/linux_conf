#!/bin/bash

#FFMBC=/usr/share/bbcnpf-stitcher/bin/ffmbc_0.7.BBC.b_8bitX264_64bit
#FFMBC=/home/dolanotoole/git_projects/eng-bsd-himslm01-docker-ff_builder/bin/ubuntu_14.04/linux_x86_64/ffmbc-x264_8bit
#FFMBC=/home/dolanotoole/git_projects/eng-bsd-himslm01-docker-ff_builder/bin/ubuntu_12.04/linux_x86_64/ffmbc-x264_8bit
#FFMBC=/home/dolanotoole/git_projects/eng-bsd-himslm01-docker-ff_builder/bin/ubuntu_14.04/linux_i686/ffmbc-x264_8bit
#FFMBC=/home/dolanotoole/git_projects/eng-bsd-himslm01-docker-ff_builder/bin/ubuntu_12.04/linux_i686/ffmbc-x264_8bit
#FFMBC=/home/dolanotoole/ff/linux_x86_64/ffmbc-x264_8bit
#FFMBC=/home/dolanotoole/ff/linux_i686/ffmbc-x264_8bit
FFMBC=/home/dolanotoole/ff/v0.7.4/ffmbc

rm stitched.mxf
#ffmpeg -loglevel debug -threads 4 -i ./xavc/duncanstone_card_1/Clip0005.MXF -vf scale=1920:1080:interl=0,format=yuv422p,squeeze4to3,tinterlace=4,fieldorder=bff,scale=1440:1080:interl=1,format=yuv422p -vcodec dvvideo -pix_fmt yuv422p -aspect 16:9 -f mxf -timecode  00:00:00:00 -y stitched.mxf
#ffmbc -loglevel debug -threads 4 -i ./xavc/PVW-FS5_geoff/Clip0003.MXF -vf scale=1920:1080:interl=0,format=yuv422p,squeeze4to3,scale=1920:1080:interl=0,format=yuv422p -vcodec dvvideo -pix_fmt yuv422p -aspect 16:9 -f mxf -timecode  00:00:00:00 -y stitched.mxf
#ffmbc -loglevel debug -threads 4 -i ./xavc/ILCE-6000_Mark/C0001.MP4 -vf scale=0:0:interl=1,format=yuv422p,squeeze4to3,scale=1440:1080:interl=0,format=yuv422p,scale=1440:1080:interl=1,format=yuv422p -r 25 -vcodec dvvideo -pix_fmt yuv422p -aspect 16:9 -an -tff -f mxf -timecode  00:00:00:00 -y stitched.mxf
#ffmbc -loglevel debug -threads 4 -i ./xavc/ILCE-6000_Mark/C0001.MP4 -vf scale=0:0:interl=1,format=yuv422p,squeeze4to3,tinterlace=4:flags=+vlpf,format=yuv422p,scale=1440:1080:interl=1,format=yuv422p -r 25 -vcodec dvvideo -pix_fmt yuv422p -aspect 16:9 -an -tff -f mxf -timecode  00:00:00:00 -y stitched.mxf

$FFMBC -loglevel debug -threads 4 -i ./xavc/duncanstone_card_1/Clip0006.MXF -vf scale=1920:1080:interl=1,format=yuv422p,squeeze4to3,fieldorder=tff -vcodec dvvideo -pix_fmt yuv422p -aspect 16:9 -tff -f mxf -timecode  00:00:00:00 -y stitched.mxf