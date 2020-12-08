#!/bin/sh
echo =======================
echo == sync-dockerignore ==
echo =======================
trapper() { echo =======================; echo; echo; }; trap trapper EXIT


# cd into root dir
DIR=$(dirname "$(readlink -f "$0")")
cd $DIR && cd ..


# .gitignore should be in the parent directory of this script
cat .gitignore > .dockerignore
if cat $DIR/.dockerignore.src >> .dockerignore
then
  echo "Sync succeeded!"
else
  echo "Sync failed!"
fi


# detect file is changed or not
git status --porcelain | grep 'M  .dockerignore' > /dev/null
if [ $? = 0 ]
then
  echo "However, you have modified the file, and need a new git commit."
  exit 1
else
  echo "And All is Well!"
  exit 0
fi
