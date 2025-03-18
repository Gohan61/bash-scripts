#!/bin/bash

npm install -D tailwindcss @tailwindcss/vite @tailwindcss/cli

sed -i '/"scripts": {/a\  "tailwind": "npx tailwindcss -i ./src/stylesheets/index.css -o ./src/stylesheets/output.css --watch",' package.json

npm pkg fix

if [ -f "./src/stylesheets/index.css" ] ; then
  sed -i '1s|^|@import "tailwindcss";\n\n|' ./src/stylesheets/index.css
fi

printf "Vite config\nimport tailwindcss from '@tailwindcss/vite'\nplugins: [tailwindcss()]\n\n"
printf 'index.html\n<link rel="stylesheet" href="./src/stylesheets/output.css" />\n'
