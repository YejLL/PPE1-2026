#!/usr/bin/bash

if [ $# -ne 3 ]
then
	echo 'Ce programme demande trois arguments. Mettez "*" entre guillements si nécessaire.'
	exit
fi

cat ${1}_${2}_*.ann | grep "Location" | cut -f3 | sort | uniq -c | sort -n | tail -"$3"
