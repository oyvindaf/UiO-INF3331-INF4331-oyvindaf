#!/bin/bash

timezone=$1

while true;
do
sleep 0.25
printf "\033c"
	case $timezone in
		no)
			echo "$(TZ=Europe/Oslo date +"%T")"
			;;
		sk)
			echo "$(TZ=Asia/Seoul date +"%T")"
			;;
		us)
			echo "$(TZ=America/New_York date +"%T")"
			;;
	esac
done

