#!/bin/bash

## This script is used to create users account from a list and associated passwords
## This Script can also be modified to update existing users account password 
userfile=/home/billionare

username=$(cat /home/billionaire/userlist | tr 'A-Z' 'a-z')

#password=$username@123

for user in $username
do 
useradd $user  ## For password update, comment this line.

echo $user@000 | passwd --stdin $user

done

echo "$(wc -l /home/billionaire/userlist) users have been created" ## For password update, comment this line.

tail -n$(wc -l /home/billionaire/userlist) /etc/passwd  ## For password update, comment this line.
