#!/bin/bash

#script to do recursive backup to Crucial SSD 
#Projects doesn't save some files, I believe due to FAT formatting on SSD
#Changed to -r to just skip files, FAT formatting allows use on Linux and Windows
#Added sleep and commands to safely remove drive, changed to wait

rsync -a Documents/ /media/mick/'X10 Pro'/Documents
rsync -r Projects/ /media/mick/'X10 Pro'/Projects
rsync -a Music/ /media/mick/'X10 Pro'/Music
rsync -a Scripts/ /media/mick/'X10 Pro'/Scripts
rsync -a Pictures/ /media/mick/'X10 Pro'/Pictures
rsync -a Videos/ /media/mick/'X10 Pro'/Videos
rsync -a AWS/ /media/mick/'X10 Pro'/AWS

wait

sudo umount /dev/sda2
sudo eject /dev/sda2
