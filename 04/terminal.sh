#!/bin/bash

source ./color.sh

function terminal {
echo -e "${back1}${text1}HOSTNAME =${back2}${text2} $HOSTNAME\033[0m" 
echo -e "${back1}${text1}TIMEZONE =${back2}${text2} $TIMEZONE\033[0m" 
echo -e "${back1}${text1}USER =${back2}${text2} $USER\033[0m" 
echo -e "${back1}${text1}OS =${back2}${text2} $OS\033[0m" 
echo -e "${back1}${text1}DATE =${back2}${text2} $DATE\033[0m" 
echo -e "${back1}${text1}UPTIME =${back2}${text2} $UPTIME\033[0m" 
echo -e "${back1}${text1}UPTIME_SEC =${back2}${text2} $UPTIME_SEC\033[0m" 
echo -e "${back1}${text1}IP =${back2}${text2} $IP\033[0m" 
echo -e "${back1}${text1}MASK =${back2}${text2} $MASK\033[0m" 
echo -e "${back1}${text1}GATEWAY =${back2}${text2} $GATEWAY\033[0m" 
echo -e "${back1}${text1}RAM_TOTAL =${back2}${text2} $RAM_TOTAL\033[0m" 
echo -e "${back1}${text1}RAM_USED =${back2}${text2} $RAM_USED\033[0m" 
echo -e "${back1}${text1}RAM_FREE =${back2}${text2} $RAM_FREE\033[0m"  
echo -e "${back1}${text1}SPACE_ROOT =${back2}${text2} $SPACE_ROOT\033[0m" 
echo -e "${back1}${text1}SPACE_ROOT_USED =${back2}${text2} $SPACE_ROOT_USED\033[0m" 
echo -e "${back1}${text1}SPACE_ROOT_FREE =${back2}${text2} $SPACE_ROOT_FREE\033[0m" 
}

