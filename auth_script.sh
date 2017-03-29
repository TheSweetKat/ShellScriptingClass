#!/bin/bash

# simple authentication script

USER="$1"
PASS="$2"

PASS=$(echo -n $PASS | shasum -a 256 | cut -d " " -f 1)

STORED_USER="timmy"
STORED_PASS="9f86d081884c7d659a2feaa0c55ad015a3bf4f1b2b0b822cd15d6c15b0f00a08"


if [ "$USER" == "$STORED_USER" ]
        then
                echo "Username is good: $USER"
        else
                echo "Username is bad: $USER"
fi

if [ $PASS == "$STORED_PASS" ]
        then
                echo "Password is good: $PASS"
        else
                echo "Password is bad: $PASS"
fi