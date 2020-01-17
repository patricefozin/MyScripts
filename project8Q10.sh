#!/bin/bash
# Welcome to the sytem inventory script. This script will allow you to
# invetory the system you are currently working on and organize the output in
# a folder that can be shared with your management!

read -p "Please enter the report name: " report_name

echo > $report_name
echo "System Inventory Report" >> $report_name

echo >> $report_name
echo "This system report was performed by " >> $report_name
whoami >> $report_name
echo "on " >> $report_name
date >> $report_name
echo >> $report_name

echo "The kernel version of the system is: " >> $report_name
uname -r >> $report_name
echo >> $report_name

echo "The system bits is: " >> $report_name
getconf LONG_BIT >> $report_name
echo >> $report_name

echo "The Os version is: " >> $report_name
lsb_release -a >> $report_name
echo >> $report_name

echo "The last time the system was booted was: " >> $report_name
uptime >> $report_name
echo >> $report_name

echo "The memory size is: " >> $report_name
free -m >> $report_name
echo >> $report_name

cat $report_name
