#!/bin/bash

for (( x = 1; x <= 5; x++ ))
do
echo "start $x:"
for (( y = 1; y <= 3; y++ ))
do
echo "we can see number:$y"
done
done

