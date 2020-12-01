#!/bin/sh

echo "npm installing, building and running eleventy"
npm install && npm run $INPUT_ARGS
