#!/bin/bash

rounds=$1
noti_sound="./sounds/achievement-unlocked.ogg"

timer() {
	for ((i=0;i<$1;i++)); do
		printf "\e[44m-\e[0m"
		sleep 60
		((minutes--))
	done
	echo " "
}

start_time=$(date "+%T")

clear
echo -e "--- Sesion starts : $start_time ---"
echo -e "\n ### Pomodoro bash tracker ###"

paplay $noti_sound

for ((j=1;j<=$rounds;j++)); do
	echo "Ronda No. $j"
	timer 25
	echo "Rest time"
	timer 5
done

end_time=$(date "+%T")
echo -e "\n--- Sesion end: $end_time --- "

#echo "| $(date "+%D") | $start_time | $end_time |" >> ./sessions.md

paplay $noti_sound

