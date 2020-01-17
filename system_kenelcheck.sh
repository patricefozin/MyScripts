#!/bin/bash

kernel_v=$(uname -r|awk -F. '{print $1}')

if [ $kernel_v -lt 5 ]; then
  echo "the system is not up to date"

else echo "The system is up to date. The current Kernel is: " $kernel_v

fi
