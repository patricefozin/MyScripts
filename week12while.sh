#!/bin/bash

#while [ 4 -gt 1 ]
#do
#echo "4 is greter than 1 "
#sleep 3
#echo " Thank you"

#done

#################################

read -p "please enter the name of the account you wish to create: " name

read -p "please enter the name of the group you wish to create for user $name: " group_name

read -p "please enter the shell you wish to assign to user $name: " shell_name

groupadd $group_name

useradd -s $shell_name -g $group_name $name
