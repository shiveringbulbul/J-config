#!/bin/sh

# .gitignore should be in the parent directory of this script
DIR=$(dirname "$(readlink -f "$0")")
cd $DIR && cd ..

# writing
cat .gitignore > .dockerignore
cat $DIR/.dockerignore-suffix.src >> .dockerignore

# finished
echo "finish cloning gitignore to dockerignore"
