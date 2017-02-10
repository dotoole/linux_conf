#!/bin/bash

INPUT_VIDEO="jfetest.mxf"
FIRST_OUTPUT="./out/first.mp4"
SECOND_OUTPUT="./out/second.mxf"
#OUTPUT_PIX_FMT="yuv420p"
# select=gte(n\,100)*lte(n\,300)
# stretch4to3


INPUT_FILTER="scale=0:0:interl=1,format=yuv422p,w3fdif,scale=0:0:interl=0,format=yuv422p,scale=1440:1080:interl=0,format=yuv420p"
OUTPUT_FORMAT=" -pix_fmt yuv420p -r 50 -vcodec libx264 -profile high -y $FIRST_OUTPUT"

#INPUT_FILTER_2="scale=0:0:interl=0,format=yuv420p,squeeze4to3,scale=0:0:interl=1,format=yuv422p"
#OUTPUT_FORMAT_2=" -pix_fmt yuv422p -r 25 -vcodec dvvideo -aspect 16:9 -an -tff -f mxf -timecode  00:00:00:00 -y $SECOND_OUTPUT"

rm $FIRST_OUTPUT
rm $SECOND_OUTPUT

echo ffmbc -loglevel debug -i $INPUT_VIDEO -ss 00:02:07 -vf "$INPUT_FILTER" $OUTPUT_FORMAT

#ffmbc -loglevel debug  -i $FIRST_OUTPUT -vf "$INPUT_FILTER_2" $OUTPUT_FORMAT_2
