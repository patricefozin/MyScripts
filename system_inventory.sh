#!/bin/bash

#Description: New Server scan
#Author: Patrice Fozin 

LOG=`touch log.$(date +%F)`
echo "" > ${LOG}
echo -e "\n****************************************************************************************" >>${LOG}
echo "     **************************System scan Report************************************" >> ${LOG}
echo -e "\n****************************************************************************************" >> ${LOG}

## CPU check
CPU=$(lscpu|grep "CPU MHz:"|awk -F: '{print$2}'|awk -F" " '{print$1}')

if [[ $CPU -lt 4000 ]]; then
echo "Failed the CPU check. The CPU required size is greater or equal to 4000 MHz"
fi

## User Ansible check 

id ansible 2>&1 >/dev/null 

if [ $? -eq 0 ]; then
grep "TMP" /home/ansible/.bash_profile 2>/dev/null || echo -e "TMP=/tmp " >> /home/ansible/.bash_profile
grep "TMPDIR" /home/ansible/.bash_profile 2>/dev/null  || echo -e "TMPDIR=TMP " >> /home/ansible/.bash_profile

else 

useradd ansible 

echo -e "TMP=/tmp " >> /home/ansible/.bash_profile
echo -e "TMPDIR=TMP " >> /home/ansible/.bash_profile
echo "User ansible was missing but is now  created " >> ${LOG}
fi

## Check for memory size
Mem=`free -m|grep Mem:|awk '{print$2}'`
if [ ${Mem} -lt 8096 ]; then
echo -e "\n Memory insufficient. You have only ${Mem} instead of 8096." >> ${LOG}
echo "Memory check failed" >> ${LOG}
fi

### Kernel version needs to be at least 

Ker=`uname -r |awk -F. '{print$1}'`
if [ ${ker} -lt 3 ]; then
echo -e "\n Kernel version is ${ker} " >> ${LOG}
echo "Kernel check failed" >> ${LOG}
fi

### File system size

Rootfs=`df -h|head -3|tail -1|awk '{print$4}'|awk -F% '{print$1}'`
if [ ${Rootfs} -lt 10 ]; then
echo -e "\n Root filesystem too big please increase " >> ${LOG}
fi


##
