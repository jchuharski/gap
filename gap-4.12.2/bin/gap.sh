#!/bin/sh

GAP_EXE=$GAP_DIR
if [ "x$GAP_DIR" = "x" ]; then
  GAP_DIR=$(cd "/home/gridsan/jchuharski/gap/gap-4.12.2" && pwd)
  GAP_EXE="/home/gridsan/jchuharski/gap/gap-4.12.2"
fi

exec "$GAP_EXE/gap" -l "$GAP_DIR" "$@"
