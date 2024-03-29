#!/bin/bash
mkdir "GRID/"
mkdir "GRID/videos/"

for i in 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 22 23 24 25 26 27 28 29 30 31 32 33 34
do
    wget -q "http://spandh.dcs.shef.ac.uk/gridcorpus/s$i/video/s$i.mpg_vcd.zip"
    wget -q "http://spandh.dcs.shef.ac.uk/gridcorpus/s$i/align/s$i.tar"
    unzip -q "s$i.mpg_vcd.zip" -d "GRID/videos/"
    tar -xf "s$i.tar" -C "GRID/"
    rm -f "s$i.mpg_vcd.zip"
    rm -f "s$i.tar"
    rm -f "GRID/videos/s$i/Thumbs.db"
    echo "s$i done"
done