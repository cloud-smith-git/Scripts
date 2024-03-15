#!/bin/bash

#script to backup documents and projects directory to directory on P3 hard drive
#added command to mount and unmount drive, had to add sleep function to delay unmount
#changed sleep command to wait

sudo mount /dev/nvme1n1p1 /media/mick

rsync -a Documents/ /media/mick/rSync
rsync -a Projects/ /media/mick/rSync
rsync -a Music/ /media/mick/rSync/Music
rsync -a Scripts/ /media/mick/rSync/Scripts
rsync -a AWS/ /media/mick/rSync/AWS

wait

sudo umount /dev/nvme1n1p1 /media/mick
