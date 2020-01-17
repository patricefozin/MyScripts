#!/bin/bash

# this script will ask questions to the user about their namesm city and state and display the result
clear
echo -en "\nWhat is your name?\n "
read name
echo -en "\nwhat is your city?\n "
read city
echo -en "\nwhat is your state?\n "
read state
sleep 5

echo "Your name is $name. You live in $city which in the state of $state."


