#!/bin/bash

# SERVER CONFIGURATION 
# Author: Patrice Fozin - Date: 10/14/2019


echo "This script will be performing some basic system configuration"
sleep 5

echo "creating user ansible"
sleep 3
useradd Directeur

echo "copying the variable into the user Directeur home directory"
sleep 3

echo "TMP=/var/log" >> /home/Directeur/.bashrc
echo "TMPDIR=/tmp" >> /home/Directeur/.bashrc

echo "Creating the deploy group"
sleep 3
groupadd deploy

echo "Adding user Directeur to the group deploy"
usermod -G deploy Directeur

echo "creating the directory http_log"
sleep 3
mkdir /var/log/http_log

echo "creating the log files..."
sleep 3
touch /var/log/http_log/error.log
touch /var/log/http_log/access.log

echo "Updating the log files permissions..."
chmod 640 /var/log/http_log/error/log
chmod 640 /var/log/http_log/access/log

echo "installing some packages..."
sleep 3
yum install git finger tree -y

echo "Serverconfiguration completed successsfully!!"
