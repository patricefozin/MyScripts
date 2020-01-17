#!/bin/bash
# This script is meant to facilitate server configuration

# Creating a variable to user to be able to change user without going through everyline of the script
user = patrice7f

# 1- creating a  user called ansible
useradd $user

# 2- Adding the variables
cd /home/$user
echo "TMP=/var/log" >> /home/$user/.bashrc
echo "TMPDIR=/tmp" >> /home/$user/.bashrc

# 3-creating a group called deploy
groupadd deploy

# 4- Making deploy a secondary group for ansible
usermod -G deploy $user

# 5- creating a folder in /var/log
mkdir /var/log/http_log

# 6-creating two files in http_log
touch /var/log/http_log/error.log
touch /var/log/http_log/access.log

# 7- Assign permission 644 to both files
cd /var/log/http_log
chmod 644 error.log
chmod 644 access.log

# 8- Install the packages
yum install git finger tree -y
