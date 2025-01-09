#!/bin/bash

if [ -f .gitignore ] ; then
  read -p "gitignore file already exists, would you like to continue(yes/no)" conf
fi
if [ "$conf" = "no" ] ; then
  echo "Exiting"
  exit 1
fi

touch .gitignore

printf "# https://dart.dev/guides/libraries/private-files\n" > .gitignore
printf "# Created by 'dart pub'\n" >> .gitignore
printf ".dart-tool/\nbuild/\npubspec.lock\ndoc/api" >> .gitignore
echo "Appended to gitignore"

