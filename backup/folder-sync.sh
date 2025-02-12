#!/bin/bash

rclone lsd remote:

read -p "Enter remote directory path to copy to: " -r remoteDir
read -p "Enter local directory or file path to copy: " -r localDir

if [ ! "$remoteDir" ] ; then
  echo "No directory provided"
elif [ ! "$localDir" ] ; then
  echo "No local directory provided"
fi

rclone copy -i "$localDir" remote:"$remoteDir"
