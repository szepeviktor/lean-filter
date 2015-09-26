#!/bin/bash

{
    echo "[Adblock Plus 2.0]"
    for PARTS in $(ls ./build/); do
        echo "!--------------------- ${PARTS} ---------------------!"
        cat "./build/${PARTS}"
        echo "!------------------- END ${PARTS} -------------------!"
    done
} | sed "s/%LAST_MODIFIED%/$(date -R)/" \
    > leanfilter.txt
