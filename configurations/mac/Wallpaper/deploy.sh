#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

sudo mv /System/Library/Desktop\ Pictures/Catalina.heic \
  /System/Library/Desktop\ Pictures/Catalina.backup.heic
sudo cp $DIR/Catalina.heic \
  /System/Library/Desktop\ Pictures/
