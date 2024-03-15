#!/bin/bash

#script to stop jenkins and confirm it stoppped

sudo systemctl stop jenkins
sudo systemctl status jenkins
