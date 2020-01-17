#!/bin/bash



#Description: System inventory on demand

#Author: Serge K

#Date: October 2019

#Modified on:          by :



## Checking if User is root


if [ $UID  -ne 0 ]
then
	echo -e "\n You need root access...\n"
	exit 1
fi


echo -e "\nPlease make a choice below: \n
        *********************************
	*       1==> cpu                *
	*       2==> Memory             *
	*       3==> Os version         *
	*       4==> processes          *
	*       5==> system bits        *
	*       6==> mount points       *
	*       7==> ip address         *
	*       8==> Hostname           *
	*       9==> Kernel version     *
	*       10==> update OS         *
	*********************************"





