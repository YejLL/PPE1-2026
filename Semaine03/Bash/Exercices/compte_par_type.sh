#!/usr/bin/bash

if [ -z "$1" ] || [ -z "$2"]
then
	echo "Erreur : il manque un argument."
	exit 1
fi

cat "$1"*.ann | grep "$2" | wc -l
