#!/bin/bash

icon=

if [ $BLOCK_BUTTON -eq 1 ]; then
	xbacklight -inc 10;

elif [ $BLOCK_BUTTON -eq 3 ]; then
	xbacklight -inc -10;
fi

brightness=$(xbacklight -get | awk '{printf "%.0f\n", $1}')
echo "$icon $brightness"
