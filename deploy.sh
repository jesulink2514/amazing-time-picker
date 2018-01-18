#!/bin/bash

echo "Starting deploy...";

set -e # exit with nonzero exit code if anything fails

if [[ $TRAVIS_BRANCH == "master" && $TRAVIS_PULL_REQUEST == "false" ]]; then
  git push origin :gh-pages && git subtree push --prefix dist origin gh-pages
else
 echo "Skipped updating gh-pages, because build is not triggered from the master branch."
fi;