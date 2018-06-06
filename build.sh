#!/bin/sh

sed -i -e "s/ga: ''/ga: '$GA_TAG'/" src/top/.vuepress/config.js

npm run vp-build

rm -rf dist

mkdir dist
# cp src/favicon.ico dist
cp -r src/top/.vuepress/dist/* dist
