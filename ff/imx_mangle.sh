#!/bin/bash

FFMBC=/usr/share/bbcnpf-stitcher/bin/ffmbc_0.7.BBC.b_8bitX264_64bit
#FFMBC=/home/dolanotoole/git_projects/eng-bsd-himslm01-docker-ff_builder/bin/ubuntu_14.04/linux_x86_64/ffmbc-x264_8bit
#FFMBC=/home/dolanotoole/ff/linux_x86_64/ffmbc-x264_8bit

INPUT_VIDEO="testcard_w.mxf"
OUTPUT="./out/mangle.mxf"


INPUT_FILTER="scale=0:0:interl=1,format=yuv422p,colormatrix=bt709:bt601,w3fdif,pad=1476:1080:18:0:black,scale=720:576:interl=0,pad=720:608:0:32:black,tinterlace=4:flags=+vlpf,scale=720:608:interl=1,format=yuv422p"
#INPUT_FILTER="scale=0:0:interl=1,format=yuv422p,colormatrix=bt709:bt601,w3fdif,pad=1476:1080:18:0:black,scale=720:576:interl=0,format=yuv422p,pad=720:608:0:32:black,tinterlace=4:flags=+vlpf,scale=720:608:interl=1,format=yuv422p"
OUTPUT_FORMAT1="-r 25/1 -aspect 16:9 -vcodec mpeg2video -flags2 +ivlc+non_linear_q -qscale 1 -ps 1 -qmin 1 -rc_max_vbv_use 1 -tff"
OUTPUT_FORMAT2="-flags +low_delay -rc_min_vbv_use 1 -pix_fmt yuv422p -minrate 30000k -maxrate 30000k -b 30000k -bufsize 1200000 -rc_init_occupancy 1200000 -dc 10 -intra -f mxf_d10 -an -timecode 00:00:00:00"

#OUTPUT_FORMAT1="-r 25/1 -aspect 16:9"
#OUTPUT_FORMAT2="-target imx30 -f mxf_d10 -an -timecode 00:00:00:00"

rm $OUTPUT

$FFMBC -loglevel debug -i $INPUT_VIDEO -vf "$INPUT_FILTER" $OUTPUT_FORMAT1 $OUTPUT_FORMAT2 -y $OUTPUT
#$FFMBC -loglevel debug \
#-i $INPUT_VIDEO -vf "$INPUT_FILTER" -r 25/1 -vcodec v210 -pix_fmt yuv422p -f matroska - \
#| $FFMBC -loglevel debug \
#-i - -vf scale=720:608:interl=1,format=yuv422p $OUTPUT_FORMAT1 $OUTPUT_FORMAT2 -y $OUTPUT

#ffmbc -loglevel debug  -i $FIRST_OUTPUT -vf "$INPUT_FILTER_2" $OUTPUT_FORMAT_2
