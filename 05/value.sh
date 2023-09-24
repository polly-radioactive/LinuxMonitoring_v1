#!/bin/bash
dir=$1
function value {
num_folders=$(find $dir -type d | wc -l)
top_5=$(du $dir -h | sed '$d' |sort -rh | head -5 | cat -n | awk '{printf "%s - %s %s\n", $1, $3, $2}')
num_file=$(find $dir -type f | wc -l)
num_conf=$(find $dir -type f -name "*.conf" | wc -l)
num_text=$(find $dir -type f -name "*.txt" | wc -l)
num_exe=$(find $dir -type f -name "*.exe" | wc -l)
num_log=$(find $dir -type f -name "*.log" | wc -l)
num_archive=$(find $dir -type f -name "*.rar" -o -name "*.tar" -o -name "*.zip" -o -name "*.gz"| wc -l)
num_link=$(find $dir -type l | wc -l)
top_10=$(find $dir -type f -exec du -h {} +| sort -rh | head -10 | cat -n | awk '{printf "%s - %s, %s, ", $1, $3, $2; system("file -b --mime-type "$3"")}')
top_10_exe=$(find $dir -perm /a=x -exec du -h {} +| sort -rh | head -10 | cat -n | awk '{printf "%s - %s, %s, ", $1, $3, $2; system("md5sum $3 | sed 's/.$//'")}')
}