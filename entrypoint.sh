#!/bin/sh

echo "npm installing, building and running eleventy"
npm install && npm run build && eleventy $INPUT_ARGS
