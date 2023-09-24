#!/bin/bash
source ./value.sh
source ./terminal.sh

start=$(date +%s%N)
if [ $# != 1 ]
then
echo "Incorrect input"
elif [ ${1: -1} != "/" ]
then
echo "Incorrect input"
else
value
terminal
end=$(date +%s%N)
dif=$(( ($end - $start)/1000000000 ))
echo "Script execution time (in seconds) = $dif"
fi
