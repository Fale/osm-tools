#!/bin/bash

# Download the planet
wget http://download.geofabrik.de/osm/$1/$2.osm.bz2
bunzip2 $2.osm.bz2

# Get all the people from nodes
rm $1_$2_uids
rm $1_$2_uids_sorted
python parser.py $2 > $1_$2_uids
sort $1_$2_uids | uniq -c | sort -rn > $1_$2_uids_sorted

rm $2.osm
