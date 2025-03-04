#!/bin/bash

npm i --save-dev jsdom @testing-library/react @testing-library/jest-dom @testing-library/user-event

if [ -d "./src/tests/" ] ; then
  cat <<EOF >> ./src/tests/setup.js
import { expect, afterEach } from 'vitest';
import { cleanup } from '@testing-library/react';
import * as matchers from "@testing-library/jest-dom/matchers";

expect.extend(matchers);

afterEach(() => {
  cleanup();
});
EOF
else
  printf "Can't find directory ./src/tests/\n"
fi

cat << EOF
Append to vite.config.ts -> defineConfig object
test: {
  globals: true,
  environment: "jsdom",
  setupFiles: "./src/tests/setup.js"
}
import { defineConfig } from "vitest/config"
EOF
