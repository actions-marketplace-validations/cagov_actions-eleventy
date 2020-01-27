#!/bin/sh

echo "Running eleventy"
npm install @11ty/eleventy-plugin-rss && eleventy $INPUT_ARGS
