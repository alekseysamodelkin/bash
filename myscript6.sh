#!/bin/bash

user=0
read -p "enter user name:" user
if [ $user = $USER ]
then
echo "You are right"
else
echo "You are wrong"
fi




