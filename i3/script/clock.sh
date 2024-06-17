#!/bin/bash    

current_date=$(date '+%A - %Y-%m-%d')

text=$(date '+%H:%M:%S')
icon=

if [ $BLOCK_BUTTON ]; then
	    zenity --info --text="$current_date"
fi

echo $icon $text
