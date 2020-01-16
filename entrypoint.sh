#!/bin/sh

echo "installing stuff"
npm install @11ty/eleventy-plugin-rss

echo "Running eleventy"
eleventy $INPUT_ARGS
