#!/bin/bash
echo "The Kernel version of the Os is: "
lsb_release -a
echo ""

echo "the system bits is: " 
getconf LONG_BIT
echo ""

echo "the OS version we are working on is: "
uname
echo ""

echo "the last time the system was up was: "
uptime
echo ""

echo "the size of our memory is: "
free -m
