#!/bin/bash

INPUT_VIDEO="rugby_jfe.mov"
#OUTPUT_PIX_FMT="rgb24"
# select=gte(n\,100)*lte(n\,300)
# stretch4to3

OUTPUT_PIX_FMT="yuv420p"
INPUT_FILTER="scale=0:0:interl=1,format=yuv422p,w3fdif,scale=1920:1080:interl=0,format=rgb24,setpts=PTS-STARTPTS"
MOVIE_FILTER="scale=0:0:interl=1,format=yuv422p,w3fdif,scale=0:0:interl=0,format=rgb24,crop=1920:540:0:540,scale=1920:540:interl=0,setpts=PTS-STARTPTS"
OUPUT_FILTER="overlay=0:540:rgb=1,scale=0:0:interl=0,format=$OUTPUT_PIX_FMT,select=gte(n\,100)*lte(n\,300)"
OUTPUT_FORMAT=" -pix_fmt $OUTPUT_PIX_FMT -r 50 -vframes 50 -y ./out/overlayed%03d.bmp"
#OUTPUT_FORMAT=" -pix_fmt $OUTPUT_PIX_FMT -r 50 -vcodec libx264 -profile high -vframes 200 -y overlayed.mp4"

rm overlay.bmp
rm overlay.mp4
ffmbc -loglevel debug -ss 00:01:12.000 -t 00:00:01.000 -i $INPUT_VIDEO -vf "$INPUT_FILTER[thing];movie=./rugby_original.mov,$MOVIE_FILTER[over];[thing][over]$OUPUT_FILTER[out]" $OUTPUT_FORMAT
