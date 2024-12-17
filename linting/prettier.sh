# Install necessary packages NPM - Eslint - Prettier setup

#! /usr/bin/bash

npm install --save-dev --save-exact prettier

node --eval "fs.writeFileSync('.prettierrc','{}\n')"

npm install --save-dev eslint-config-prettier


# Add prettier to extends of eslintrc
# {
#  "extends": [
#
#    "some-other-config-you-use",
#    "prettier"
#  ]
# }
