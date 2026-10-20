#!/usr/bin/bash

cat "$1"*.ann | grep "$2" | wc -l
