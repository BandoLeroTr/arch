#!/bin/bash

if [ "$BLOCK_BUTTON" = "1" ]; then
	if [ $volume -gt 100 ]; then
		pulsemixer --set-volume 100
	else
		pulsemixer --change-volume +5
	fi

elif [ "$BLOCK_BUTTON" = "3" ]; then
	pulsemixer --change-volume -5
fi


if [ $volume -eq 0 ]; then
	icon=

elif [ $volume -lt 50 ]; then
	icon=
else
	icon=

fi

volume=$(pulsemixer --get-volume | awk '{print $1}')
echo "$icon  $volume"
