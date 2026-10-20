#!/usr/bin/bash

if [ "$#" -ne 1 ]
then
	echo "Ce programme demande un seul argument."
   	exit 1
fi

echo "2016: $(bash compte_par_type.sh 2016 "$1")"
echo "2017: $(bash compte_par_type.sh 2017 "$1")"
echo "2018: $(bash compte_par_type.sh 2018 "$1")"
