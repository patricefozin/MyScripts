#!/bin/bash

#read -p "enter anything: " test1
#while [[ test1 != "x" ]]
#do
#read -p "what value do you want to modify? " newvalue
#if [[ $newvalue == "patrice" ]]; then
#echo "goog input $newvalue"
#elif [[ $newvalue == "fozin" ]]; then
#echo "goog input $newvalue"
#else echo "please repeat!"
#fi#
#done

################################################
# this script checks if a user already exist
read -p "Enter an account name: " username
cat /etc/passwd | grep ${username} >/dev/null 2>&1
if [ $? -eq 0 ]; then
#if [ 'sed -n "/^$username/p" /etc/passwd' ]; then
echo "User already exist"
else
echo "User doesn't exist"
fi
##################################################
