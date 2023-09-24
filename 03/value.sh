#!/bin/bash

function value {
HOSTNAME=$(hostname) 
TIMEZONE=$(timedatectl | grep "Time zone"| awk '{print $3, $4, $5}')
OS=$(cat /etc/issue| rev | cut -c6- | rev)  
DATE=$(date +"%d %B %Y %H:%M:%S")  
UPTIME=$(uptime -p) 
UPTIME_SEC=$(cat /proc/uptime | cut -d' ' -f1) 
IP=$(ifconfig | grep inet| head -1| awk '{print $2}')
MASK=$(ifconfig | grep inet| head -1| awk '{print $4}')
GATEWAY=$(ip r| grep default| head -1| awk '{print $3}')
RAM_TOTAL=$(free | grep Mem | awk '{printf( "%.3f GB", ($2)/1000000)}' )
RAM_USED=$(free | grep Mem | awk '{printf( "%.3f GB", ($3)/1000000)}' )
RAM_FREE=$(free | grep Mem | awk '{printf( "%.3f GB", ($4)/1000000)}' )
SPACE_ROOT=$(df | grep '/$' | awk '{printf( "%.2f MB", ($2)/1000)}' )
SPACE_ROOT_USED=$(df | grep '/$' | awk '{printf( "%.2f MB", ($3)/1000)}' )
SPACE_ROOT_FREE=$(df | grep '/$' | awk '{printf( "%.2f MB", ($4)/1000)}' )
}