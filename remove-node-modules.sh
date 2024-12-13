#!/bin/bash

read -p "Please enter absolute path: " -r dir
if [ ! -d "$dir" ] ; then
  echo "No directory provided"
elif [ ! -d "$dir/node_modules" ] ; then
  echo "No node_modules folder found"
else
  read -p "Are you sure you want to delete $dir/node_modules (yes/no)?" conf
fi
if [ "$conf" = "yes" ] ; then
  rm -v -rf "$dir/node_modules";
  echo "Node modules deleted"
else
  echo "Exiting"
fi
exit 0
