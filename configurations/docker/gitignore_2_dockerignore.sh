#!/bin/bash

# .gitignore should be in the parent directory of this script
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
cd $DIR && cd ..

# writing
cat .gitignore > .dockerignore
cat $DIR/gitignore_2_dockerignore.txt >> .dockerignore

# finished
echo "finish cloning gitignore to dockerignore"
