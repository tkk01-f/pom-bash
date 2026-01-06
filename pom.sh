#!/bin/bash

tms=60
#for point in 1 2 3; do
#       echo "#"
#done       

file=$1
session_start=$(date "+%T")

#	Progress bar 
clear
cat $file
echo " ### Pomodoro bash tracker ###"
echo " --- Sesion starts : $session_start ---"
while [ $tms -gt 1 ] 
do
	printf "#"
	sleep 1
	((tms--))
done

sesion_end=$(date "+%T")
echo " "
echo " --- Sesion end: $sesion_end --- "
date
