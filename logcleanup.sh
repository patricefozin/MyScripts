#!/bin/bash

#Description: Delete logs 30 days old
#Author: Patrice F
#Date: 
path=/var/log

find ${path} -type f -mtime +300 -exec rm -rf {} \;

exit 0

