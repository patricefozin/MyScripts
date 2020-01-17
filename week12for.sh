#!/bin/bash

#for item in red yellow brown;
###############################################
#for x in {0..20..5};
#do
#for y in 10 20;
#do
#ans = $((x*y))
#echo "the product of $x and $y is: " $(($x*$y))
#sleep 2
#done
#done
###############################################
#do
#echo "the color is $item"
#sleep 2
#done

#########################################################

read -p "what is the path to the file you wish to view? " file_path

echo "the contain of you file is:"

cat $file_path
