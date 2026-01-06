#!/bin/bash

file=$1
minutes=$2
noti_sound="./sounds/achievement-unlocked.ogg"

start_time=$(date "+%T")

clear

echo -e " --- Sesion starts : $start_time ---"

cat $file

echo -e "\n ### Pomodoro bash tracker ###"

paplay $noti_sound

while [ $minutes -gt 1 ] 
do
	printf "\e[44m-\e[0m"
	sleep 60
	((minutes--))
done

end_time=$(date "+%T")
echo -e "\n --- Sesion end: $end_time --- "

echo "| $(date "+%D") | $start_time | $end_time |" >> ./sessions.md

paplay $noti_sound
