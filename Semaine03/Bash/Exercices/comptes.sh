#!/usr/bin/bash

for annee in 2016 2017 2018
do
	echo "$annee: $(cat ${annee}*.ann | grep "Location" | wc -l | sed 's/ //g')"
done
