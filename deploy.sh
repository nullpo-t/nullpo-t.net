#!/bin/sh

set -e

cd dist

git config user.email "travis-ci@example.com"
git config user.name "Travis CI"

git init
git add .
git commit -m "Auto-Deploying via Travis CI"
git push --force --quiet "https://${GH_TOKEN}@github.com/nullpo-t/nullpo-t.github.io.git" master:master > /dev/null 2>&1
