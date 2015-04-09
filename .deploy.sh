#!/bin/bash

#########################
## Adapted from https://gist.github.com/domenic/ec8b0fc8ab45f39403dd
#########################
set -e # exit with nonzero exit code if anything fails

if [ "$TRAVIS_BRANCH" = "feature/travis" ]
  then
    echo "Conditional Test"
fi
