#!/bin/bash

# Run this script:
# chmod a+x sync.sh && ./sync_backup.sh


if [[ $(command -v brew) == "" ]]; then
  echo -e "\e[31m---- Warning:\e[0m You should install Hombrew first."
  read -n 1 -s -r -p "press any key to continue ......"
  exit
else
  echo -e "\e[32m---- Info:\e[0m Sync the configs from JackaL's GitHub repo."
  cd "$(dirname "$0")"
  git pull
  cp *.json ~/.config/karabiner/assets/complex_modifications
  echo -e "\e[32m---- Info:\e[0m Sync successfully!"
  sleep 2
  exit
fi
