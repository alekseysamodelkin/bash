#!/bin/bash

mycomp="corei7"
myOS=`uname -a`


echo "this script name is $0"
echo "Privet $1"
echo "Hello $2"

num1=54
num2=42
summa=$((num1+num2))

echo "$num1 + $num2 = $summa"

myhost=`hostname`
mygw="8.8.8.8"

ping -c 4 $myhost
ping -c 4 $mygw

echo $myOS
echo -n "DONE!!!111"
echo "really done"


