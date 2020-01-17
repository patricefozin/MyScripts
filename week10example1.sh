#!/bin/bash

#D

echo "make a choice:
      1 -- Start
      2----Restart
      3----status
      4----Stop    "

echo -n "Enter your choice here: "

read ans

case ${ans} in

1) service sshd start
;;
2) service sshd restart 
;;
3) service sshd status
;;
4) service sshd stop
;;
*) echo "invalid choice please choose between 1 2 3"

esac
