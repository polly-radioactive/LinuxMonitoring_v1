#!/bin/bash

source ./value.sh
source ./terminal.sh
value
terminal
echo "Do you want to write the data to a file? Y/N"
read VAR1
if [[ "$VAR1" == "y" ]] ||  [[ "$VAR1" == "Y" ]]; then
terminal > $(date +"%d_%m_%y_%H_%M_%S").status
echo "Save"
else 
echo "Not Save"
fi
 
