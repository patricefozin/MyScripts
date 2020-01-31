#!/bin/bash

# Author: Patrice
# date:2341341

##This script will get input from user and display output depending range

read -p "Please enter a number: " number
#echo "Please enter a number: "
#read number

if [[ $number -lt 10 ]]; then

echo "You have entered $number and it is less than 10"
else 

echo "You have entered $number and it is greater than 10"
fi


#echo "You have entered $number"
