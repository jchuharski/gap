#!/bin/sh

GAP_EXE=$GAP_DIR
if [ "x$GAP_DIR" = "x" ]; then
  GAP_DIR=$(cd "/Users/jakechuharski/Desktop/gap-4.12.2" && pwd)
  GAP_EXE="/Users/jakechuharski/Desktop/gap-4.12.2"
fi

exec "$GAP_EXE/gap" -l "$GAP_DIR" "$@"
