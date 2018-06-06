#!/bin/sh

set -e

cd dist

git config user.email "travis-ci@example.com"
git config user.name "Travis CI"

git init
git add .
git commit -m "Deploy to GitHub Pages"
# Please generate a GitHub personal access token and set it as `GH_TOKEN` in Travis CI repository settings.
git push --force --quiet "https://${GH_TOKEN}@github.com/nullpo-t/nullpo-t.github.io.git" master:gh-pages > /dev/null 2>&1
