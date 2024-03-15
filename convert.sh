#!/bin/bash

#Script to convert HEIC files to JPEG files and also change extension
#Tested script, works great.  Sleep was at 20, changed to 10.  Should maybe try with sleep to 
#see if its needed.


for f in *.HEIC; do heif-convert -q 100 $f $f.jpg; done
for f in *.HEIC; do heif-convert -q 100 $f $f.jpg; done

sleep 10

for file in *.HEIC; do mv "$file" "${file%.HEIC}.jpg"; done
for file in *.heic; do mv "$file" "${file%.heic}.jpg"; done

