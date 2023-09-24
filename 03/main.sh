#!/bin/bash

source ./value.sh
source ./color.sh
source ./terminal.sh
value

if [ $# != 4 ]
then
echo "Incorrect input. Should be 4 parametrs"
elif [[ $1 == $2 || $3 == $4 ]]
then
echo  "Incorect input. Background has same color as text"
elif [[ $1 != [1-6] || $2 != [1-6] || $3 != [1-6] || $4 != [1-6] ]]
then
echo -e "Incorrect input. \n 1 - white \n 2 - red \n 3 - green \n 4 - blue \n 5 - purple \n 6 - black"
else
back1=${arr_back[$1-1]}
text1=${arr_text[$2-1]}
back2=${arr_back[$3-1]}
text2=${arr_text[$4-1]}
terminal
fi
 
