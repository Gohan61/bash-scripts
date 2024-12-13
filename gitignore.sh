#  Define gitignore files

#! /usr/bin/bash

if [ -f .gitignore ] ; then
  read -p "gitignore file already exists, would you like to continue (yes/no)" conf
fi
if [ "$conf" =  "no" ] ; then
  echo "Exiting"
  exit 1
fi

touch .gitignore

printf "node_modules\n.env\n.prettierrc\neslint.config.*" >> .gitignore
echo "Appended to gitignore"
