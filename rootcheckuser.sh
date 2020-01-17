#!/bin/bash

if [ $UID -eq 0 ]

then 

echo "Welcome! You are root."

else echo "You need root access"
echo "Go get it and come back"

fi

