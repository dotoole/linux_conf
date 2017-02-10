#!/bin/bash

rm out.mp4
ffmbc -loglevel debug -shortest -threads 4 -i "testcard_w.mxf" -vf scale=0:0:interl=1,format=yuv422p,crop=720:576:0:32,scale=720:576:interl=0,format=yuv422p,pad=720:608:0:32:black,scale=720:608:interl=1,format=yuv420p -r 25/1 -vcodec libx264 -pix_fmt yuv420p -y out.mp4

#ffmbc -shortest -threads 4 -i "testcard_w.mxf" -vf scale=0:0:interl=1,format=yuv422p,crop=720:576:0:32,scale=704:576:interl=0,pad=720:576:8:0:black,pad=720:608:0:32:black,scale=720:608:interl=1,format=yuv420p -r 25/1 -vcodec libx264 -pix_fmt yuv420p -y out.mp4