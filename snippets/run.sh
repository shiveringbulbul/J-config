#!/bin/bash
: '
Command Main Interface
'


case $1 in
  "init" | "setup" | "install")
    echo "abc"
  ;;
  "backup" | "bk")
    echo "def"
  ;;
  "restore" | "re")
    echo $1
  ;;
  *)
    echo "anything"
  ;;
esac
