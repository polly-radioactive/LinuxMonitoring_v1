#!/bin/bash
source ./color.sh

function list_default {
    echo "Column 1 background = default (black)"
    echo "Column 1 font color = default (white)" 
    echo "Column 2 background = default (red)"
    echo "Column 2 font color = default (blue)"
}

function list {
    echo "Column 1 background = $var1 (${name[$var1-1]})"
    echo "Column 1 font color = $var2 (${name[$var2-1]})" 
    echo "Column 2 background = $var3 (${name[$var3-1]})"
    echo "Column 2 font color = $var4 (${name[$var4-1]})"
}
