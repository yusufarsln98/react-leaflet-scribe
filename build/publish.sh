#!/bin/bash

npm update

VERSION=$(node --eval "console.log(require('./package.json').version);")

git checkout -b build

npm run build

git tag v$VERSION -f
git push --tags -f

npm publish

git checkout master
git branch -D build
