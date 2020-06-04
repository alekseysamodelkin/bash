#!/bin/bash

summa=0

myFunction()
{
	echo "this is text from function"
	echo "Num1 is $1"
	echo "Num2 is $2"
	summa=$(($1+$2))
}

myFunction 50 10
echo "summa = $summa"




