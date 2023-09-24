#!/bin/bash

source ./value.sh
source ./terminal.sh
source ./color.sh
source ./list.sh

value
source color.conf

if [ $# != 0 ]
then
flag=2
fi

if [[ -z "$column1_background" || -z "$column1_font_color" || -z "$column2_background" || -z "$column2_font_color" ]]
then
default_colors
flag=1
elif [[ $column1_background == $column1_font_color || $column2_background == $column2_font_color ]]
then
default_colors
flag=1
elif [[ $column1_background != [1-6] || $column1_font_color != [1-6] || $column2_background != [1-6] || $column2_font_color != [1-6] ]]
then
default_colors
flag=1
else
flag=0
var1=$column1_background
var2=$column1_font_color
var3=$column2_background
var4=$column2_font_color
fi

if [ $flag != 2 ]
then
back1=${arr_back[$var1-1]}
text1=${arr_text[$var2-1]}
back2=${arr_back[$var3-1]}
text2=${arr_text[$var4-1]}
terminal
else
echo "Incorect input"
fi

if [ $flag == 1 ]
then
echo
list_default
elif [ $flag == 0 ]
then
echo 
list
fi


 
