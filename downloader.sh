#!/bin/bash

# Download the planet
wget http://download.geofabrik.de/osm/$1/$2.osm.bz2
bunzip2 $2.osm.bz2

# Get all the people from nodes
rm $1_$2
python parser.py $2 > $1_$2_uids
sort $1_$2_uids | uniq -c | sort -rn > $1_$2

sed -e "1i# File $2.osm: `stat -c '%y' $2.osm`" -i $1_$2

rm $2.osm
rm $1_$2_uids
