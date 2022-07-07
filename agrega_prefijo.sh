#!/bin/bash

if [[ $# -ne 1 ]]
then 
    echo "Error. Number of arguments incorrect. Only one argument is expected"
    exit 1
else
    if [[ $1 =~ ^[a-zA-Z]+$ ]]
    then
        PREFIX=$1
    else
        echo "Error. A string is spected as an argument"
        exit 2
    fi
fi

echo "Enter words or Ctrl+D to exit"
while read WORD
do
    if [[ WORD =~ ^[a-zA-Z]+$ ]]
    then
    
        echo "$PREFIX$WORD" >> input.txt
    else
        echo "Error. Input is not a string"
        exit 3
    fi
done

echo " "

cat input.txt

rm input.txt