#!/bin/sh

# .gitignore should be in the parent directory of this script
DIR=$(dirname "$(readlink -f "$0")")
cd $DIR && cd ..

# writing
cat .gitignore > .dockerignore
if cat $DIR/.dockerignore.src >> .dockerignore
then
  echo "sync succeeded"
else
  echo "sync failed"
fi


# detect file is changed or not
git status --porcelain | grep 'M  .dockerignore' > /dev/null
if [ $? = 0 ]
then
  exit 1
else
  exit 0
fi
