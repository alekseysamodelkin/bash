#!/bin/bash

if   [ "$1" == "Vasya" ]; then
	echo "Privet $1"
elif [ "$1" == "Trump" ]; then
	echo "Hello $1"
else 	echo "Zdarova $1"
fi

read -p "Please enter something:" x


echo "Starting Case selection..."
case $x in
	1) echo "this is one";;
    [2-9]) echo "two-nine";;
   "Petr") echo "privet $x";;
	*) echo "parametr unknown, sorry"
esac

