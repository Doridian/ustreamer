#!/bin/sh

set -e

rw

export WITH_GPIO=1
export WITH_SYSTEMD=1
export WITH_V4P=1
export WITH_PYTHON=1
export WITH_JANUS=1

cd /usr/src/ustreamer
git fetch origin
git reset --hard origin/main
make clean
make

cp -fv ustreamer /usr/bin/ustreamer
cp -fv ustreamer /usr/bin/ustreamer-v4p
cp -fv ustreamer-dump /usr/bin/ustreamer-dump
