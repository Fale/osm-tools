#!/bin/bash

# Uncompress the file
#bunzip2 -k $2.osm.bz2

# Get all the people from nodes
python parser.py $2 > $1_$2_uids
sort $1_$2_uids | uniq -c | sort -rn > $1_$2

# rm $2.osm
rm $1_$2_uids
