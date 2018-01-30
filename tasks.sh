#!/bin/bash
# out is just a variable that is printed into the notification upon script startup
# you can change it to your own liking.

out=$'Reminders:\n'
num=1

for ((i=1;i<=$#;i++));
do
	if [ ${!i} = "-a" ]
	then
		((i++))
		rem=${!i}
		echo "$rem" >> remind_data.txt;
	
	elif [ ${!i} = "-r"  ];
	then
		((i++))
		n=${!i}
		let "n -= 1"
		sed -i -e 2d remind_data.txt;
	elif [ ${!i} = "-c" ];
	then
		cat /dev/null > remind_data.txt;
	elif [ ${!i} = "-h" ];
	then
		echo 'remind.sh - a simple script meant for simple notification-based reminders.'
		echo 'Usage:' 
		echo '	-a "[reminder]"	 	adds a new reminder'
		echo '	-r [number] 		removes reminder by number'
	        echo '	-c			clears all reminders'
		echo '';
	fi
done;	

while IFS='' read -r line || [[ -n "$line" ]]; do
	out="$out"$'\n'$"$num. $line "
	let "num += 1"
done < "remind_data.txt"

notify-send "$out"
