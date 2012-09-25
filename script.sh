#!/bin/bash

LOCKFILE="$HOME/$(basename $0).lock"

### OBTAIN LOCK ###

mkdir "$LOCKFILE" 2>/dev/null
if [ "$?" -ne 0 ];
then
    # could not lock
    exit 1
fi

### DO SOMETHING ###

sleep 10s;

### RELEASE LOCK ###

rmdir "$LOCKFILE"

