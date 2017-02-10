#!/bin/bash
export APP=/home/dolanotoole/git_projects/eng-bsd-stitcher/build/distributions/bbcnpf-stitcher_1.0.9~SNAPSHOT_all/data/usr/share/bbcnpf-stitcher
export LANG=en_GB.UTF-8
export CLASSPATH="$APP/lib/*:$APP/lib/"
/home/dolanotoole/jdk/jdk1.6.0_45/bin/java -Dfile.encoding=UTF-8 uk.co.bbc.bbcnpf.ffmpeg.stitcher.RunStitch $@
