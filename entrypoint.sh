#!/bin/sh

echo "npm installing, building and running eleventy"
npm install && npm run $INPUT_BUILD_TASK && eleventy $INPUT_BUILD_ELEVENTY_ARGS
