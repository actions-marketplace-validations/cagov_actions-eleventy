#!/bin/sh

echo "Running eleventy"
npm config set unsafe-perm true && npm install @11ty/eleventy-plugin-rss && eleventy $INPUT_ARGS
