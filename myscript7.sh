#!/bin/bash

y=`pwd`
echo $y

for x in ~/*
do
if [ -d "$x" ]
then
echo "$x is a directory"
elif [ -f "$x" ]
then
echo "$x is a file"
fi
done



