#!/usr/bin/bash

kernel="uname -r"

if [[ ${kernel} == *"microsoft"* ]] ; then
  sudo service postgresql start
else
  sudo systemctl start postgresql.service && systemctl status postgresql.service
fi
