#!/bin/bash

read -p "Enter count:" COUNTER

while [ $COUNTER -lt 10 ]; do
	echo "Current counter is $COUNTER"
	COUNTER=$(($COUNTER+1))
	# let COUNTER+=1
done

for myfile in *.txt ; do
	cat $myfile
done

for x in {1..10}; do
	echo "x = $x"
done

read -p "i=" z
for (( i=$z; i<=10; i++ )); do
	echo "i = $i"
done





