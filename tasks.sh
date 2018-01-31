#!/bin/bash
# out is just a variable that is printed into the notification upon script startup
# you can change it to your own liking.

out=$'Reminders:\n'
num=1
file=$"/home/$USER/.config/TaskScout/remind_data.txt"

echo $file;

for ((i=1;i<=$#;i++));
do
	if [ ${!i} = "-a" ]
	then
		((i++))
		rem=${!i}
		echo "$rem" >> $file;
	
	elif [ ${!i} = "-r"  ];
	then
		((i++))
		n=${!i}
		sed -i -e "$n"$'d' $file;
	elif [ ${!i} = "-c" ];
	then
		cat /dev/null > $file;
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
done < $file

notify-send "$out"
