#!/bin/bash

# Download the planet
#rm italy.osm
#wget http://download.geofabrik.de/osm/europe/italy.osm.bz2
#bunzip2 italy.osm.bz2

# Get all the people from nodes
rm italy_uids
rm italy_uids_sorted
python parser.py > italy_uids
sort italy_uids | uniq -c | sort -rn > italy_uids_sorted
