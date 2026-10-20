#!/usr/bin/bash

cat ${1}_${2}_*.ann | grep "Location" | cut -f3 | sort | uniq -c | sort -n | tail -"$3"
