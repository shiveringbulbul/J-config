#!/bin/sh

# .gitignore should be in the parent directory of this script
DIR=$(dirname "$(readlink -f "$0")")
cd $DIR && cd ..

# writing
cat .gitignore > .dockerignore
if cat $DIR/.dockerignore-suffix.src >> .dockerignore
then
  echo "sync succeeded"
else
  echo "sync failed"
fi
