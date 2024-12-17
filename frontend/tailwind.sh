#!/bin/bash

npm install -D tailwindcss postcss autoprefixer
npx tailwindcss init -p

# tailwind.config.js
#   content: [
#    "./index.html",
#    "./src/**/*.tsx",
#  ],
#
#  index.css
#
# @tailwind base;
# @tailwind components;
# @tailwind utilities;
#
# Package.json
#
# "tailwind": "npx tailwindcss -i ./src/stylesheets/index.css -o ./src/stylesheets/output.css --watch",
