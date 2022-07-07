#!/bin/bash

echo 'Enter a word:'
read WORD

WORD=$(echo $WORD | tr '[:upper:]' '[:lower:]')

if [[ $WORD =~ ^p.*$ ]]
then
    WORD=$(echo "Im$WORD")
else
    WORD=$(echo "In$WORD")
fi

echo $WORD

