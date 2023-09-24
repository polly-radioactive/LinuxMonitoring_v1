#!/bin/bash
number='^[-+]?[0-9]+([.,][0-9]+)?$'
if [ $# \> 1 ] || [ $# = 0 ] || [[ $1 =~ $number ]]
then
echo "Incorrect input"
else 
echo $1
fi