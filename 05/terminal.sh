#!/bin/bash

function terminal {
echo   "Total number of folders (including all nested ones) =" $num_folders 
echo   "TOP 5 folders of maximum size arranged in descending order (path and size):"
echo "$top_5"
echo   "Total number of files =" $num_file
echo   "Number of:"  
echo   "Configuration files (with the .conf extension) =" $num_conf 
echo   "Text files =" $num_text  
echo   "Executable files =" $num_exe
echo   "Log files (with the extension .log) =" $num_log  
echo   "Archive files =" $num_archive
echo   "Symbolic links =" $num_link  
echo   "TOP 10 files of maximum size arranged in descending order (path, size and type):"
echo "$top_10"
echo   "TOP 10 executable files of the maximum size arranged in descending order (path, size and MD5 hash of file):"
echo "$top_10_exe" 
}

